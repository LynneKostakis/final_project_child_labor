class Parent < ApplicationRecord
  # Direct associations

  belongs_to :family,
             :required => false

  has_many   :assignments,
             :foreign_key => "parents_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
