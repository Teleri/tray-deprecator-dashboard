class ApiStatusesController < ApplicationController
  def index
    @deprecated_apis = ApiStatus.where("is_deprecated")
    @sunset_apis = ApiStatus.where("has_sunset")
    @apis = ApiStatus.where.not("has_sunset").and(ApiStatus.where.not("is_deprecated"))
  end

  # def manual_api_check
  #   api = ApiStatus.first
  #   CheckApiJob.perform_now(api)
  #   redirect_to :api_statuses
  # end
end
