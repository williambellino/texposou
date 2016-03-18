class PagesController < ApplicationController
  def home
  	render layout: 'maintenance'
  end

  def index
    @places = Place.all.order('created_at DESC')
    @exhibitions = Exhibition.where(status: 'published').order('created_at DESC')
  end

  def about
  end

  def contact
  end
end
