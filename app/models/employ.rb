class Employ < ActiveRecord::Base
  has_many :developers
  has_one :user
  accepts_nested_attributes_for :user
  after_save :check_role

  def check_role
    if self.role == 'admin'
       if Admin.all.count == 0
         admin = Admin.new
         admin.employ_id = self.id
         admin.save
       end
    elsif self.role == 'apm'
       apm = Apm.new
       apm.employ_id = self.id
       apm.save
    elsif self.role == 'teamlead'
       teamlead = Teamlead.new
       teamlead.employ_id = self.id
       teamlead.save
    else 
       developer = Developer.new
       developer.employ_id = self.id
       developer.save
    end
  end

  def admin?
    if self.role == 'admin'
    	return true
    end
  end

  def developer?
    if self.role == 'developer'
    	return true 
    end
  end

  def apm?
    if self.role == 'apm'
    	return true
    end
  end
end
