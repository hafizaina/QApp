class User < ApplicationRecord

  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  before_save :downcase_email

  # May want to limit user name characters to be numeric only. Have to talk to PO.
  validates :user_id, presence: true, length: { minimum: 6, maximum: 6 }, uniqueness: :true
  validates :first_name, presence: true, length: { maximum: 25 }
  validates :last_name, presence: true, length: { maximum: 25 }
  validates :password, presence: true, length: { minimum: 6 }

  validates :email, presence: true, length: { minimum: 6, maximum: 6 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


  private

    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end

end