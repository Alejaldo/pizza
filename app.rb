#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "pizza.db"}

class Product < ActiveRecord::Base
end

class Client < ActiveRecord::Base
end

get '/' do
	@products = Product.all
	erb :index			
end

get '/about' do
	erb :about
end

post '/cart' do
	@new_orders = params[:orders]
	@order_var = parse_orders @new_orders

	@order_var.each do |item|
		item[0] = Product.find(item[0])
	end

	erb :cart
end

post '/clients' do
    @client_order = Client.new params[:client]
end

def parse_orders orders_line
    s1 = orders_line.split(/,/)

    arr = []

    s1.each do |x|
        s2 = x.split(/\=/)
        s3 = s2[0].split(/_/)

        product_id = s3[1]
        product_qnty = s2[1]
        arr2 = [product_id, product_qnty]

        arr.push arr2
    end

    return arr
end