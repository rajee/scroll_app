module EmployeesHelper
	def show_employees(num, page=nil)
        offset = calculate_offset(num, page)
        collection = Employee.find(:all, :limit => num, :offset => offset)
        sleep(2)
        return collection    
  end
  
  def calculate_offset(num, page=nil)
		result = page ? page.to_i * num : 0
		return result
  end

end
