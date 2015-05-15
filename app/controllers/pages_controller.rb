class PagesController < ApplicationController
  def index
    @urls = PagesHelper::Links
  end

  def animation
  end

end