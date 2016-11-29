class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :reviews, dependent:  :destroy
         has_many :roles
         has_many :deliveries

         validates :first_name, :last_name, presence: true

         # User Avatar Validation
  validates_integrity_of  :image
  validates_processing_of :image
 
  private
    def avatar_size_validation
      errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
    end

         validates :first_name, :last_name, presence: true
end
