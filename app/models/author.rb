class Author < ApplicationRecord

  has_many :books, dependent: :destroy
  validates :name, :email, :phone, presence: true, on: :create

  validates :email, uniqueness: true

  before_create :display_some_message


  scope :active, lambda{where(:active => true)}


  private

  def display_some_message
    puts "record inserted successfully !"
  end

end
