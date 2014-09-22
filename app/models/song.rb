class Song < ActiveRecord::Base
  belongs_to :album
  
  include Searchable
end
