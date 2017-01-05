class Product < ActiveRecord::Base
  has_many :attachments
  belongs_to :shop

  accepts_nested_attributes_for :attachments, reject_if: :all_blank, allow_destroy: true

end
