class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  acts_as_token_authenticatable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :age, presence: :true
  validates :username, uniqueness: :true
  validates :age, numericality: { greater_than_or_equal_to: 10, message: 'Idade mínima de usuário: 10 anos ' }
  validates :is_admin, inclusion: { in: [true, false] }
end
