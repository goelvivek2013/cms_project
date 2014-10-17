class Developer < ActiveRecord::Base
  belongs_to :employ
  belongs_to :teamlead
  has_many :projects
end
