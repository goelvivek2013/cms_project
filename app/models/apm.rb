class Apm < ActiveRecord::Base
  has_many :teamleads
  has_many :projects
  belongs_to :employ
end
