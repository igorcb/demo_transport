class Asset < ActiveRecord::Base
  belongs_to :client, class_name: "Client", foreign_key: "asset_id", polymorphic: true, dependent: :destroy
	has_attached_file :asset, styles: lambda { |a| a.instance.asset_content_type =~ %r(image) ? { medium: "300x300>", thumb: "120x90>", mini: "64x64>"} : {} }
end
