class ChoreCategory < ApplicationRecord
  # Direct associations

  has_many   :chores,
             :foreign_key => "chore_categories_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
