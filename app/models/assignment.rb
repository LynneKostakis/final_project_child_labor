class Assignment < ApplicationRecord
  # Direct associations

  belongs_to :chores,
             :class_name => "Chore"

  belongs_to :parents,
             :class_name => "Parent"

  belongs_to :kids,
             :class_name => "Kid"

  # Indirect associations

  # Validations

end
