class Group < ApplicationRecord

  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users

  has_one_attached :group_image


  validates :name, presence: true
  validates :introduction, presence: true
  # attachment :image, destroy: false

   def get_group_image
    (group_image.attached?) ? image : 'no_image.jpg'
  end




end
