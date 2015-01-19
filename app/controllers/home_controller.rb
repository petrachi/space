class HomeController < ApplicationController
  def index
    @sections = %i(blog).map{ |name| Section.new name: name }
  end
end
