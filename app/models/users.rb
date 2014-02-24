class Users < ActiveRecord::Base
    before_save { self.email = email.downcase }
    before_create :create_remember_token
    has_one :mentor_profile, dependent: :destroy
    has_one :student_application, dependent: :destroy
    has_many :projects_as_mentor, class_name: 'Project', foreign_key: "mentor_id"
    has_many :projects_as_student, class_name: 'Project', foreign_key: "student_id"
    has_secure_password
    validates :password, length: { minimum: 12 }
    validates :first_name, presence: true
    validates :last_name, presence: true

    def Users.encrypt(token)
        Digest::SHA1.hexdigest(token.to_s)
    end

    def Users.new_remember_token
        SecureRandom.urlsafe_base64
    end

    def is_mentor?
        self.mentor_profile != nil
    end

    def is_current_student?
        not self.projects_as_student.empty?
    end

    private

        def create_remember_token
            self.remember_token = Users.encrypt(Users.new_remember_token)
        end

end
