class Word < ActiveRecord::Base
  attr_accessible :language, :origin, :translation, :hits, :misses

  validates_presence_of :translation, :origin, :language
end
