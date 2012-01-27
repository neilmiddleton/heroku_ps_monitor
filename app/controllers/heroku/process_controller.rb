class Heroku::ProcessController < ApplicationController
  
  before_filter :get_heroku

  def count
		@processes = {}
		ps = @heroku.ps(params[:app_name])
		ps.each do |p|
			if p["state"] == "up"
				process_name = p["process"].split(".")[0]
				if @processes.has_key? p["process"].split(".")[0]
					@processes[process_name] = (@processes[process_name] + 1)
				else
					@processes[process_name] = 1
				end
			end
		end
  end

  private 

  def get_heroku
		@heroku = Heroku::Client.new(ENV["HEROKU_EMAIL"], ENV["HEROKU_PASSWORD"])
  end

end
