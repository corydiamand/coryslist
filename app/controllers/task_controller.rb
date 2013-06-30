class TaskController < ApplicationController

	
	def new
		@task = Task.new
	end

	def create
		@task = Task.new(params[:task])
		@task.status = false
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

	def update
		@task = Task.find(params[:id])
		if @task.status == nil
			@task.status = true
		elsif @task.status == true
			@task.status = false
		elsif @task.status == false
			@task.status = true
		end
		@task.save
		redirect_to dashboard_path
	end
end
