class Kid < ApplicationRecord
  # Direct associations

  belongs_to :family

  has_many   :assignments,
             :foreign_key => "kids_id",
             :dependent => :destroy

  # Indirect associations

  # Validations
validates :kid_name, :presence => true, :uniqueness => true

end
