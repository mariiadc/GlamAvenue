class PagesController < ApplicationController
  def home
    @good = Good.new
  end
end
