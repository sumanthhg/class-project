class SiteController < ApplicationController

  def hello
  	@message = "Hello World"
  	another_message = "NOt visible"
  end

  def goodbye
  end

  def contact
  end
end
