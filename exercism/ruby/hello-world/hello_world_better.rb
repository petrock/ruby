# Returns the text "Hello, #{name}!" with the given parameter
# Params:
# name: name to return with the text (default value: "World")
class HelloWorld
  def self.hello(name = 'World')
    "Hello, #{name}!"
  end
end
