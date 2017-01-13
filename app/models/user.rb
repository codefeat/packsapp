class User < ActiveRecord::Base
#attr_accessor :first_name, :email

  mount_uploader :image, ImageUploader	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :reviews, dependent:  :destroy
         has_many :roles
         has_many :deliveries
         has_many :orders
         has_many :appointments
         has_many :subscriptions
         has_many :plans

         validates :first_name, :last_name, presence: true

         # User Avatar Validation
  validates_integrity_of  :image
  validates_processing_of :image

   def display_name
    	return self.email
    end
 
  private
    def avatar_size_validation
      errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
    end

         validates :first_name, :last_name, presence: true
  # private
  #   def confirmation_token
  #     if self.confirm_token.blank?
  #         self.confirm_token = SecureRandom.urlsafe_base64.to_s
  #     end
  #   end
   
end
