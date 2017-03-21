class User < ActiveRecord::Base
  before_save :ensure_authentication_token
  has_many :audios , :dependent => :destroy
  has_many :schedulesets , :dependent => :destroy
  has_many :examschedulesets , :dependent => :destroy


  devise :database_authenticatable, :recoverable, :trackable, :validatable

  # Generate a token for this user if one does not already exist
  def ensure_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  # Identical to above except it saves the user
  def ensure_authentication_token!
    ensure_authentication_token
    save
    end

  # Forces a new authentication token to be generated for this user and saves it
  # to the database
  def reset_authentication_token!
    self.authentication_token = generate_authentication_token
    save
  end

  private

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.find_by(authentication_token: token)
    end
  end
end
