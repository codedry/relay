class User < ActiveRecord::Base

  has_many :tickets

  def first_name
    name.split.first
  end

end
