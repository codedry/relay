class Ticket < ActiveRecord::Base
  enum status: [ :pending, :ready ]

  before_create :generate_code

  private
    def generate_code
      self.code = (0...6).map { (65 + rand(26)).chr }.join
    end

end
