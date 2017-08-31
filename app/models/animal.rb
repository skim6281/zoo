class Animal < ApplicationRecord
  # TODO: create validation to only allow one animal of the same name.
  validates :name, uniqueness: { case_sensitive: false }
end
