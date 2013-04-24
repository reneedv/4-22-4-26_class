class WelcomeController < ApplicationController

  def hello
    @hello_text = "Hi There! This is from the controller"
  end

end
