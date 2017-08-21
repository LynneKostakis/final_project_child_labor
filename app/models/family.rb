class Family < ApplicationRecord
  # Direct associations

  has_many   :kids,
             :dependent => :destroy

  has_many   :parents,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
