class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :donations
  has_one_attached :avatar

  def donations_sum
  	self.donations.pluck(:amount_cents).sum / 100
  end

def username
  email = self.email.split('@')
  return email.first
end

end
