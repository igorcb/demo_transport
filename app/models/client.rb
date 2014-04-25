class Client < ActiveRecord::Base

  validates_presence_of :name

  has_many :phones
  accepts_nested_attributes_for :phones, allow_destroy: true

  has_many :contacts, class_name: "Contact", foreign_key: "contact_id", :as => :contact, dependent: :destroy
  accepts_nested_attributes_for :contacts, allow_destroy: true

  has_many :assets, as: :asset, dependent: :destroy
  accepts_nested_attributes_for :assets, allow_destroy: true, reject_if: :all_blank

end
