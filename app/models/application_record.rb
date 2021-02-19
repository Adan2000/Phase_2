class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates_numericality_of :reps, :sets, greater_than_or_equal_to: 1, less_than_or_equal_to: 25, message: 'must be between 1 & 25'
  validates_presence_of :name, :sets, :reps, :intensity, message: 'Blank entry not valid'
end
