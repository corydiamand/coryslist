class Task < ActiveRecord::Base
  attr_accessible :description, :priority, :title
  belongs_to :list,
end
