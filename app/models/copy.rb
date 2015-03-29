class Copy < ActiveRecord::Base
  belongs_to :shop
  belongs_to :book
end
