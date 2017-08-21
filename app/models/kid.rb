class Kid < ApplicationRecord
  # Direct associations

  belongs_to :family

  has_many   :assignments,
             :foreign_key => "kids_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
