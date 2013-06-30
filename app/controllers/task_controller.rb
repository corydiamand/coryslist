class TaskController < ApplicationController

	
	def new
		@task = Task.new
	end

	def create
		@task = Task.new(params[:task])
		@task.save
		redirect_to dashboard_path
	end

	def edit
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to dashboard_path
	end
end
