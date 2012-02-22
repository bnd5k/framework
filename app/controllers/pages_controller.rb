class PagesController < ApplicationController
  def home
    @sitename = "framework"
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

end
