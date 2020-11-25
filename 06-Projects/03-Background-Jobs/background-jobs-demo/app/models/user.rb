class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :enhance_user_profile

  private

  def enhance_user_profile
    EnhanceUserJob.perform_later(self)
  end
end
