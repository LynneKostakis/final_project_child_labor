class Chore < ApplicationRecord
  # Direct associations

  has_many   :assignments,
             :foreign_key => "chores_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
