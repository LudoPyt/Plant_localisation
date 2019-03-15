# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  approved               :boolean          default(FALSE), not null
#  admin                  :boolean          default(FALSE)
#

class User < ApplicationRecord
  # belongs_to :position
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def active_for_authentication?
  #   super && approved?
  # end

  # def inactive_message
  #   approved? ? super : :not_approved
  # end

  def is_admin
    @user = User.where(admin: true)
  end

end
