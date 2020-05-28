module PatientsHelper

  def age
    d1=self.date_of_birth.strftime("%Y%m%d").to_i
    d2=Date.today.strftime("%Y%m%d").to_i
    return (d2 - d1) / 10000
  end

end
