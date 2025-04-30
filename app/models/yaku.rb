class Yaku < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[
      id
      name
      description
      han
      open_han
      menzen_only
      photo
      created_at
      updated_at
    ]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
