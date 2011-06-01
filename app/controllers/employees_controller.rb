class EmployeesController < ApplicationController
   def index
			respond_to do |format|
				format.html # index.html.erb
				format.xml  { render :xml => @employees }
			end
  end

	def fetch_data
    respond_to do |format|
      format.js { render :partial => 'fetch_data', :locals => {:page => params[:page]} }
    end
  end	
end
