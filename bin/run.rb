require_relative '../lib/cli_class.rb' 
require_relative '../lib/api_class.rb' 

require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry' 

Cli.new.choose_action 