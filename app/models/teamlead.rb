class Teamlead < ActiveRecord::Base
  belongs_to :apm
  has_many :projects
  has_many :developers
  belongs_to :employ
end
