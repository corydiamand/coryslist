class Task < ActiveRecord::Base
  attr_accessible :description, :priority, :title, :list_id
  belongs_to :list
end
