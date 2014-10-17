module AdminsHelper

  def self.get_employ(id)
    employ = Employ.find(id)
    if employ.role == 'developer'
      teamlead = Teamlead.all
    elsif employ.role == 'teamlead'
      apm = Apm.all
    else 
    	return []
    end
  end

end