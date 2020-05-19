class ApplicationController < ActionController::Base
  def hello
    puts "hello World"
    render html: "Hello Hemant"
  end
end
