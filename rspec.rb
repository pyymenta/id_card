# frozen_string_literal: true

Expector = Struct.new(:actual) do
  def to(functor)
    functor.call(actual)
  end
end

def it(doc)
  p "#{doc}: #{yield(doc)}"
end

def expect(value)
  Expector.new(value)
end

def eq(expected)
  ->(action) { action == expected  }
end
