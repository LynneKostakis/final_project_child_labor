class Kid < ApplicationRecord
  # Direct associations

  has_many   :families,
             :foreign_key => "kids_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
