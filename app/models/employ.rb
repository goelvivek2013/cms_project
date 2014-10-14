class Employ < ActiveRecord::Base
  has_one :user
  accepts_nested_attributes_for :user
  after_save :check_role

  def check_role
    if self.role == 'admin'
       if Admin.all.count == 0
         admin = Admin.new
         admin.user_id = self.id
         admin.save
       end
    elsif self.role == 'apm'
       apm = Apm.new
       apm.user_id = self.id
       apm.save
    elsif self.role == 'teamlead'
       teamlead = Teamlead.new
       teamlead.user_id = self.id
       teamlead.save
    #else 
       #employ = Employ.new
       #employ.user_id = self.id
       #employ.save
    end
  end

  def admin?
    if self.role == 'admin'
    	return true
    end
  end

  def employ?
    if self.role == 'employ'
    	return true 
    end
  end

  def apm?
    if self.role == 'apm'
    	return true
    end
  end
end
