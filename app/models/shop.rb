class Shop < ActiveRecord::Base
  has_many :products

  mount_uploader :file, EnclosureUploader
end
