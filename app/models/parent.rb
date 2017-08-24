class Parent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Direct associations

  belongs_to :family,
             :required => false

  has_many   :assignments,
             :foreign_key => "parents_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
