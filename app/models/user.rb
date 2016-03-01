class User < ActiveRecord::Base
	has_many :photos, dependent: :destroy
	accepts_nested_attributes_for :photos, allow_destroy: true, reject_if: :all_blank
end
