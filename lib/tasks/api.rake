namespace :api do
  desc "Checking all apis for sunset dates or sudden deprecation (async)"
  task update_all: :environment do
    apis = ApiStatus.all
    puts "Enqueuing check for #{apis.size} APIs..."
    apis.each do |api|
      CheckApiJob.perform_later(api)
    end
  end

end
