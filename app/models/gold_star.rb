class GoldStar < ActiveRecord::Base
  validates :admin_user_id, presence: true
  belongs_to :admin_user
end
