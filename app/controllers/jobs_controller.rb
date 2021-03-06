class JobsController < ApplicationController
  def create
    @api = ApiStatus.find(params[:api_status_id])
    @job = Job.new
    @job.api_status_id = @api.id
    CheckApiJob.perform_now(@api)
    # @job.save
    redirect_to :root
  end

  def update_all_apis
    @apis = ApiStatus.all
    @apis.each do |api|
      @job = Job.new
      @job.api_status_id = api.id
      CheckApiJob.perform_now(api)
    end
    redirect_to :root
  end
end
