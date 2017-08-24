class Chore < ApplicationRecord
  # Direct associations

  belongs_to :chore_categories,
             :class_name => "ChoreCategory"

  has_many   :assignments,
             :foreign_key => "chores_id",
             :dependent => :destroy

  # Indirect associations

  # Validations
validates :chore_name, :presence => true, :uniqueness => true
validates :chore_value, :presence => true
end
