class Artist < ActiveRecord::Base
  has_many :albums
  
  include Searchable
  
end
