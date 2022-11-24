class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  include Rails.application.routes.url_helpers
  def avatar_url
    avatar.map(&:service_url)
  end

  def attributes
    super.merge({
                  avatar_urls: avatar_url
                })
  end

end
