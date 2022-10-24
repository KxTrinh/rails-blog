class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # kevin@example.com -> self.email.split('@') -> ["kevin", "example.com"] -> [0] -> "kean".capitalize -> "Kean"
  def username
    return email.split("@")[0].capitalize
  end
end
