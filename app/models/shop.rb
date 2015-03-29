class Shop < ActiveRecord::Base
  has_many :copies
  has_many :books, through: :copies
end
