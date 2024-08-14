require 'open-uri'

class TextRendersController < ApplicationController

  def index
    copies = params[:copies] || 1
    content = File.read(Rails.public_path + "pg2600-images.html")
    @content = ''
    0.upto(copies.to_i).each do |p|
      @content += content
    end
    @content = @content.gsub('images/cover.jpg',  "cover.jpg")
  end

end
