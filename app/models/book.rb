class Book < ApplicationRecord

  belongs_to :author
  validates :name, :pages, presence: true, on: :create

  before_create :display_some_message



  private

  def display_some_message
    puts "record inserted successfully !"
  end
end
