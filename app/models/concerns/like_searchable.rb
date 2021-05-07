module LikeSearchable
  extend ActiveSupport::Concern

  included do
    scope :like, lambda { |key, value|
      self.where(self.arel_table[key].matches("%#{value}%"))
      # Ex:- scope :active, -> {where(:active => true)}
    }
  end
end