# Autogenerated from a Treetop grammar. Edits may be lost.


module Lodestone
  include Treetop::Runtime

  def root
    @root ||= :document
  end

  module Document0
    def content
      elements.map{ |e| e.content unless e.content.nil? }
    end
  end

  def _nt_document
    start_index = index
    if node_cache[:document].has_key?(index)
      cached = node_cache[:document][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      r2 = _nt_define
      if r2
        r1 = r2
      else
        r3 = _nt_file
        if r3
          r1 = r3
        else
          r4 = _nt_dir
          if r4
            r1 = r4
          else
            r5 = _nt_user
            if r5
              r1 = r5
            else
              r6 = _nt_group
              if r6
                r1 = r6
              else
                r7 = _nt_perms
                if r7
                  r1 = r7
                else
                  @index = i1
                  r1 = nil
                end
              end
            end
          end
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    r0.extend(Document0)

    node_cache[:document][start_index] = r0

    r0
  end

  module Define0
    def content
      nil
    end
  end

  def _nt_define
    start_index = index
    if node_cache[:define].has_key?(index)
      cached = node_cache[:define][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?("define", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 6))
      @index += 6
    else
      terminal_parse_failure("define")
      r1 = nil
    end
    if r1
      r0 = r1
      r0.extend(Define0)
    else
      if has_terminal?(" and", false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 4))
        @index += 4
      else
        terminal_parse_failure(" and")
        r2 = nil
      end
      if r2
        r0 = r2
        r0.extend(Define0)
      else
        if has_terminal?(" with", false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 5))
          @index += 5
        else
          terminal_parse_failure(" with")
          r3 = nil
        end
        if r3
          r0 = r3
          r0.extend(Define0)
        else
          if has_terminal?(" it", false, index)
            r4 = instantiate_node(SyntaxNode,input, index...(index + 3))
            @index += 3
          else
            terminal_parse_failure(" it")
            r4 = nil
          end
          if r4
            r0 = r4
            r0.extend(Define0)
          else
            @index = i0
            r0 = nil
          end
        end
      end
    end

    node_cache[:define][start_index] = r0

    r0
  end

  module File0
  end

  module File1
    def content
      ["file", text_value.split[-1]]
    end
  end

  def _nt_file
    start_index = index
    if node_cache[:file].has_key?(index)
      cached = node_cache[:file][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?(" file ", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 6))
      @index += 6
    else
      terminal_parse_failure(" file ")
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?('\G[A-Za-z\\/^]', true, index)
          r3 = true
          @index += 1
        else
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(File0)
      r0.extend(File1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:file][start_index] = r0

    r0
  end

  module Dir0
  end

  module Dir1
    def content
      ["dir",text_value.split[-1]]	
    end
  end

  def _nt_dir
    start_index = index
    if node_cache[:dir].has_key?(index)
      cached = node_cache[:dir][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?(" directory ", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 11))
      @index += 11
    else
      terminal_parse_failure(" directory ")
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?('\G[A-Za-z\\/^]', true, index)
          r3 = true
          @index += 1
        else
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Dir0)
      r0.extend(Dir1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:dir][start_index] = r0

    r0
  end

  module User0
  end

  module User1
    def content
      ["user", text_value.split[-1]]
    end
  end

  def _nt_user
    start_index = index
    if node_cache[:user].has_key?(index)
      cached = node_cache[:user][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?(" should be user ", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 16))
      @index += 16
    else
      terminal_parse_failure(" should be user ")
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?('\G[A-Za-z^]', true, index)
          r3 = true
          @index += 1
        else
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(User0)
      r0.extend(User1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:user][start_index] = r0

    r0
  end

  module Group0
  end

  module Group1
    def content
      ["group", text_value.split[-1]]
    end
  end

  def _nt_group
    start_index = index
    if node_cache[:group].has_key?(index)
      cached = node_cache[:group][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?(" should be group ", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 17))
      @index += 17
    else
      terminal_parse_failure(" should be group ")
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?('\G[A-Za-z^]', true, index)
          r3 = true
          @index += 1
        else
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Group0)
      r0.extend(Group1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:group][start_index] = r0

    r0
  end

  module Perms0
  end

  module Perms1
    def content
      ["perms", text_value.split[-1]]
    end
  end

  def _nt_perms
    start_index = index
    if node_cache[:perms].has_key?(index)
      cached = node_cache[:perms][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?(" perms ", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 7))
      @index += 7
    else
      terminal_parse_failure(" perms ")
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?('\G[0-9^]', true, index)
          r3 = true
          @index += 1
        else
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Perms0)
      r0.extend(Perms1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:perms][start_index] = r0

    r0
  end

end

class LodestoneParser < Treetop::Runtime::CompiledParser
  include Lodestone
end
