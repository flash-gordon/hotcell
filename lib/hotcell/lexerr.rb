
# line 1 "lib/hotcell/lexerr.rl"

# line 100 "lib/hotcell/lexerr.rl"

#%

Hotcell::Lexer.class_eval do
  def current_position
    @ts
  end

  def current_value
    @data[@ts...@te].pack(Hotcell::Source::PACK_MODE).force_encoding(@source.encoding)
  end

  def current_error
    value = @data[@ts..@p].pack(Hotcell::Source::PACK_MODE).force_encoding(@source.encoding)
    [value, *@source.info(@ts).values_at(:line, :column)]
  end

  def tokenize
    
# line 25 "lib/hotcell/lexerr.rb"
class << self
	attr_accessor :_puffer_lexer_trans_keys
	private :_puffer_lexer_trans_keys, :_puffer_lexer_trans_keys=
end
self._puffer_lexer_trans_keys = [
	0, 0, 34, 92, 0, 0, 
	125, 125, 38, 38, 39, 
	92, 0, 0, 48, 57, 
	47, 92, 0, 0, 124, 124, 
	125, 125, 123, 123, 123, 
	123, 123, 123, 33, 35, 
	9, 125, 61, 61, 10, 125, 
	42, 42, 46, 57, 48, 
	57, 47, 92, 65, 122, 
	33, 122, 125, 125, 35, 35, 
	35, 35, 125, 125, 0
]

class << self
	attr_accessor :_puffer_lexer_key_spans
	private :_puffer_lexer_key_spans, :_puffer_lexer_key_spans=
end
self._puffer_lexer_key_spans = [
	0, 59, 0, 1, 1, 54, 0, 10, 
	46, 0, 1, 1, 1, 1, 1, 3, 
	117, 1, 116, 1, 12, 10, 46, 58, 
	90, 1, 1, 1, 1
]

class << self
	attr_accessor :_puffer_lexer_index_offsets
	private :_puffer_lexer_index_offsets, :_puffer_lexer_index_offsets=
end
self._puffer_lexer_index_offsets = [
	0, 0, 60, 61, 63, 65, 120, 121, 
	132, 179, 180, 182, 184, 186, 188, 190, 
	194, 312, 314, 431, 433, 446, 457, 504, 
	563, 654, 656, 658, 660
]

class << self
	attr_accessor :_puffer_lexer_indicies
	private :_puffer_lexer_indicies, :_puffer_lexer_indicies=
end
self._puffer_lexer_indicies = [
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 2, 0, 0, 3, 4, 5, 
	6, 8, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 9, 7, 
	7, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 10, 14, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 15, 13, 13, 5, 6, 17, 16, 
	19, 18, 20, 18, 21, 20, 23, 22, 
	24, 22, 25, 5, 25, 25, 25, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 25, 26, 0, 4, 6, 5, 27, 
	7, 5, 5, 28, 5, 5, 29, 30, 
	31, 32, 32, 32, 32, 32, 32, 32, 
	32, 32, 32, 5, 5, 26, 26, 26, 
	5, 6, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 5, 6, 5, 6, 
	33, 6, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 5, 34, 35, 6, 
	5, 36, 37, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 38, 4, 5, 
	36, 39, 10, 32, 32, 32, 32, 32, 
	32, 32, 32, 32, 32, 10, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	10, 14, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 15, 13, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 40, 40, 40, 40, 40, 40, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 40, 42, 41, 41, 41, 41, 
	41, 41, 41, 41, 41, 41, 41, 41, 
	41, 41, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 41, 41, 41, 41, 
	41, 42, 41, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 41, 41, 41, 
	41, 33, 41, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 33, 
	33, 33, 33, 33, 33, 41, 43, 36, 
	45, 44, 46, 44, 47, 46, 0
]

class << self
	attr_accessor :_puffer_lexer_trans_targs
	private :_puffer_lexer_trans_targs, :_puffer_lexer_trans_targs=
end
self._puffer_lexer_trans_targs = [
	1, 16, 2, 16, 18, 16, 0, 5, 
	16, 6, 16, 21, 16, 8, 23, 9, 
	26, 26, 13, 14, 12, 15, 12, 12, 
	12, 16, 17, 4, 19, 20, 21, 22, 
	20, 24, 10, 25, 16, 16, 3, 7, 
	16, 16, 16, 16, 27, 28, 26, 11
]

class << self
	attr_accessor :_puffer_lexer_trans_actions
	private :_puffer_lexer_trans_actions, :_puffer_lexer_trans_actions=
end
self._puffer_lexer_trans_actions = [
	0, 2, 0, 3, 4, 5, 0, 0, 
	7, 0, 8, 9, 10, 0, 0, 0, 
	11, 12, 0, 0, 15, 0, 16, 17, 
	18, 19, 0, 0, 0, 20, 20, 21, 
	9, 0, 0, 0, 22, 23, 0, 0, 
	24, 25, 26, 27, 0, 4, 28, 0
]

class << self
	attr_accessor :_puffer_lexer_to_state_actions
	private :_puffer_lexer_to_state_actions, :_puffer_lexer_to_state_actions=
end
self._puffer_lexer_to_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 13, 0, 0, 0, 
	13, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 13, 0, 0
]

class << self
	attr_accessor :_puffer_lexer_from_state_actions
	private :_puffer_lexer_from_state_actions, :_puffer_lexer_from_state_actions=
end
self._puffer_lexer_from_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 14, 0, 0, 0, 
	14, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 14, 0, 0
]

class << self
	attr_accessor :_puffer_lexer_eof_actions
	private :_puffer_lexer_eof_actions, :_puffer_lexer_eof_actions=
end
self._puffer_lexer_eof_actions = [
	0, 1, 0, 0, 0, 6, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_puffer_lexer_eof_trans
	private :_puffer_lexer_eof_trans, :_puffer_lexer_eof_trans=
end
self._puffer_lexer_eof_trans = [
	0, 0, 0, 4, 0, 0, 0, 11, 
	13, 13, 0, 17, 0, 21, 21, 23, 
	0, 37, 38, 37, 11, 11, 37, 41, 
	42, 37, 0, 47, 47
]

class << self
	attr_accessor :puffer_lexer_start
end
self.puffer_lexer_start = 12;
class << self
	attr_accessor :puffer_lexer_first_final
end
self.puffer_lexer_first_final = 12;
class << self
	attr_accessor :puffer_lexer_error
end
self.puffer_lexer_error = 0;

class << self
	attr_accessor :puffer_lexer_en_expression
end
self.puffer_lexer_en_expression = 16;
class << self
	attr_accessor :puffer_lexer_en_template_comment
end
self.puffer_lexer_en_template_comment = 26;
class << self
	attr_accessor :puffer_lexer_en_main
end
self.puffer_lexer_en_main = 12;


# line 119 "lib/hotcell/lexerr.rl"
    #%

    @data = @source.data
    @token_array = []

    
# line 260 "lib/hotcell/lexerr.rb"
begin
	 @p ||= 0
	pe ||=  @data.length
	cs = puffer_lexer_start
	top = 0
	 @ts = nil
	 @te = nil
	act = 0
end

# line 125 "lib/hotcell/lexerr.rl"
    #%

    eof = pe
    stack = []

    
# line 278 "lib/hotcell/lexerr.rb"
begin
	testEof = false
	_slen, _trans, _keys, _inds, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	if _goto_level <= 0
	if  @p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	case _puffer_lexer_from_state_actions[cs] 
	when 14 then
# line 1 "NONE"
		begin
 @ts =  @p
		end
# line 306 "lib/hotcell/lexerr.rb"
	end
	_keys = cs << 1
	_inds = _puffer_lexer_index_offsets[cs]
	_slen = _puffer_lexer_key_spans[cs]
	_trans = if (   _slen > 0 && 
			_puffer_lexer_trans_keys[_keys] <=  @data[ @p].ord && 
			 @data[ @p].ord <= _puffer_lexer_trans_keys[_keys + 1] 
		    ) then
			_puffer_lexer_indicies[ _inds +  @data[ @p].ord - _puffer_lexer_trans_keys[_keys] ] 
		 else 
			_puffer_lexer_indicies[ _inds + _slen ]
		 end
	end
	if _goto_level <= _eof_trans
	cs = _puffer_lexer_trans_targs[_trans]
	if _puffer_lexer_trans_actions[_trans] != 0
	case _puffer_lexer_trans_actions[_trans]
	when 4 then
# line 1 "NONE"
		begin
 @te =  @p+1
		end
	when 27 then
# line 79 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
 begin  emit_tag(); 	begin
		top -= 1
		cs = stack[top]
		_goto_level = _again
		next
	end
  end
		end
	when 5 then
# line 80 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
 begin  emit_operator();  end
		end
	when 26 then
# line 82 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
 begin  emit_identifer();  end
		end
	when 7 then
# line 83 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
 begin  emit_sstring();  end
		end
	when 2 then
# line 84 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
 begin  emit_dstring();  end
		end
	when 19 then
# line 87 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
		end
	when 22 then
# line 80 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin  emit_operator();  end
		end
	when 25 then
# line 82 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin  emit_identifer();  end
		end
	when 24 then
# line 85 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin  emit_regexp();  end
		end
	when 23 then
# line 86 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin  emit_comment();  end
		end
	when 10 then
# line 80 "lib/hotcell/lexerr.rl"
		begin
 begin  @p = (( @te))-1; end
 begin  emit_operator();  end
		end
	when 3 then
# line 86 "lib/hotcell/lexerr.rl"
		begin
 begin  @p = (( @te))-1; end
 begin  emit_comment();  end
		end
	when 8 then
# line 1 "NONE"
		begin
	case act
	when 2 then
	begin begin  @p = (( @te))-1; end
 emit_operator(); end
	when 3 then
	begin begin  @p = (( @te))-1; end
 emit_numeric(); end
end 
			end
	when 12 then
# line 91 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
 begin  emit_comment(); 	begin
		top -= 1
		cs = stack[top]
		_goto_level = _again
		next
	end
  end
		end
	when 28 then
# line 92 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin  emit_comment();  end
		end
	when 11 then
# line 92 "lib/hotcell/lexerr.rl"
		begin
 begin  @p = (( @te))-1; end
 begin  emit_comment();  end
		end
	when 17 then
# line 96 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
 begin  emit_tag(); 	begin
		stack[top] = cs
		top+= 1
		cs = 16
		_goto_level = _again
		next
	end
  end
		end
	when 18 then
# line 97 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p+1
 begin  emit_comment(); 	begin
		stack[top] = cs
		top+= 1
		cs = 26
		_goto_level = _again
		next
	end
  end
		end
	when 16 then
# line 96 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin  emit_tag(); 	begin
		stack[top] = cs
		top+= 1
		cs = 16
		_goto_level = _again
		next
	end
  end
		end
	when 15 then
# line 98 "lib/hotcell/lexerr.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin  emit_template();  end
		end
	when 21 then
# line 1 "NONE"
		begin
 @te =  @p+1
		end
# line 59 "lib/hotcell/lexerr.rl"
		begin
 regexp_ambiguity { 	begin
		cs = 16
		_goto_level = _again
		next
	end
 } 		end
	when 20 then
# line 1 "NONE"
		begin
 @te =  @p+1
		end
# line 80 "lib/hotcell/lexerr.rl"
		begin
act = 2;		end
	when 9 then
# line 1 "NONE"
		begin
 @te =  @p+1
		end
# line 81 "lib/hotcell/lexerr.rl"
		begin
act = 3;		end
# line 516 "lib/hotcell/lexerr.rb"
	end
	end
	end
	if _goto_level <= _again
	case _puffer_lexer_to_state_actions[cs] 
	when 13 then
# line 1 "NONE"
		begin
 @ts = nil;		end
# line 526 "lib/hotcell/lexerr.rb"
	end

	if cs == 0
		_goto_level = _out
		next
	end
	 @p += 1
	if  @p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if  @p == eof
	if _puffer_lexer_eof_trans[cs] > 0
		_trans = _puffer_lexer_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
	  case _puffer_lexer_eof_actions[cs]
	when 6 then
# line 51 "lib/hotcell/lexerr.rl"
		begin
 raise_unterminated_string(); 		end
	when 1 then
# line 55 "lib/hotcell/lexerr.rl"
		begin
 raise_unterminated_string(); 		end
# line 555 "lib/hotcell/lexerr.rb"
	  end
	end

	end
	if _goto_level <= _out
		break
	end
end
	end

# line 131 "lib/hotcell/lexerr.rl"
    #%

    raise_unexpected_symbol unless @ts.nil?

    @token_array
  end
end
