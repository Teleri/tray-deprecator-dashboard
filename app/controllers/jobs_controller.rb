class JobsController < ApplicationController
  def create
    @api = ApiStatus.find(params[:api_status_id])
    @job = Job.new
    @job.api_status_id = @api.id
    CheckApiJob.perform_now(@api) # .set(wait: 2.seconds)
    @job.save
    redirect_to :root
  end
end
