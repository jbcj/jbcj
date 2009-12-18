#!/usr/bin/ruby
require 'rubygems'
require 'sinatra'

set :port, 9000

get '*' do
 "#{Time.now.to_s}\n"
end
