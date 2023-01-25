class Employee < ActiveRecord::Base
  belongs_to :store
  
  before_save :create_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: { only_integer: true }, :inclusion => 40..200
  validates :store_id, presence: true

  private
    def create_password
      unless self.password
        charset = Array('A'..'Z') + Array('a'..'z')
        new_password = Array.new(8) { charset.sample }.join
        self.password = "#{new_password}"
      end
    end 
    
end
