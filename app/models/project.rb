class Project < ActiveRecord::Base
  belongs_to :apm
  belongs_to :teamlead
  belongs_to :developer
end
