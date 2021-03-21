class CheckApiJob < ApplicationJob
  queue_as :default

  def perform(api_status)
    puts "Checking #{api_status.name} for updates..."
    uri = URI(api_status.url)
    res = Net::HTTP.get_response(uri)
    sunset_date = res.to_hash["sunset"]
    res.to_hash["deprecated"].first == "true" ? is_deprecated = true : is_deprecated = false
    puts "Deprecated: #{is_deprecated} | Sunset: #{sunset_date}"
    if sunset_date != nil 
      p sunset_date
      api_status.has_sunset = true
      api_status.sunset_date = sunset_date[0]
    end
    if is_deprecated
      api_status.is_deprecated = true
    end
    api_status.save!
  end
end
