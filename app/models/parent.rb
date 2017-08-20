class Parent < ApplicationRecord
  # Direct associations

  has_many   :families,
             :foreign_key => "parents_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
