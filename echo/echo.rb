#!/usr/bin/ruby
require 'rubygems'
require 'sinatra'

set :port, 9000

get '*' do
 "hi"
end
