class UrlsController < ApplicationController
	def index
		@urls = Url.all
		@url = Url.new
	end

	def new
		@url = Url.new
	end

	def show
		@url = Url.find(params[:id])
	end
end
