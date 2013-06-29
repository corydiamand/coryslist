class List < ActiveRecord::Base
  attr_accessible :category, :description, :title
  belongs_to :user
  has_many :tasks, dependent: :destroy
end
