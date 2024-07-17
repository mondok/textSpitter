require 'open-uri'

class TextRendersController < ApplicationController

  # GET /text_renders or /text_renders.json
  def index
    # url = Rails.public_path + 'war-and-peace.pdf'
    # url = Rails.public_path + 'war-and-peace.pdf'
    # io     = open(url)
    # @reader = PDF::Reader.new(io)
    copies = params[:copies] || 1
    content = File.read(Rails.public_path + "pg2600-images.html")
    @content = ''
    0.upto(copies.to_i).each do |p|
      @content += content
    end
    @content = @content.gsub('images/cover.jpg',  "cover.jpg")
  end

end
