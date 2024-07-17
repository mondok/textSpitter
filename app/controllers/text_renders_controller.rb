require 'open-uri'

class TextRendersController < ApplicationController

  # GET /text_renders or /text_renders.json
  def index
    url = Rails.public_path + 'war-and-peace.pdf'
    io     = open(url)
    @reader = PDF::Reader.new(io)
  end

end
