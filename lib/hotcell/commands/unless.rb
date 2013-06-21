module Hotcell
  module Commands
    class Unless < Hotcell::Block
      subcommands :else

      def subcommand_argument_error subcommand, allowed_args_counts
        proper_args_count = allowed_args_counts[subcommand[:name]] or return
        args_count = subcommand[:args] ? subcommand[:args].children.size : 0

        raise Hotcell::ArgumentError.new(
          "Wrond number of arguments for `#{subcommand[:name]}` (#{args_count} for #{proper_args_count})",
          *subcommand[:name].hotcell_position
        ) if args_count != proper_args_count
      end

      def validate!
        raise Hotcell::ArgumentError.new(
          "Wrond number of arguments for `#{name}` (#{children.count} for 1)", *name.hotcell_position
        ) if children.count != 1

        subcommands.each do |subcommand|
          subcommand_argument_error subcommand, { 'else' => 0 }
        end

        super

        raise Hotcell::BlockError.new(
          "Unexpected subcommand `#{subcommands[1][:name]}` for `#{name}` command",
          *subcommands[1][:name].hotcell_position
        ) if subcommands[1]
      end

      def process context, condition
        subnodes = render_subnodes(context)
        condition ? subnodes[2] : subnodes[0]
      end
    end
  end
end

Hotcell.register_command unless: Hotcell::Commands::Unless