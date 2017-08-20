class Family < ApplicationRecord
  # Direct associations

  belongs_to :kids,
             :class_name => "Kid"

  # Indirect associations

  # Validations

end
