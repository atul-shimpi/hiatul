class User < ActiveRecord::Base
  after_password= :encrypt_password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_one :gender
  has_one :birth_date
  has_many :contacts, :autosave => true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :role_id, presence: true
  validates :password, presence: true

  def encrypt_password
    password = Devise.friendly_token
  end

  def full_name
    first_name + ' ' + last_name
  end

  scope :Admins, -> { where(role_id: 1) }
  scope :Operators, -> { where(role_id: 2) }
  scope :Candiates, -> { where(role_id: 3) }

  scope :find_by_role_id, ->(role_id) { where("users.role_id = 1") }
  #scope :find_by_role_id, -> { where(role_id: 1) }
end

