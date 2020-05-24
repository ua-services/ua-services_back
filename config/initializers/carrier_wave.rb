CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "Google",
    google_project: "ua-services",
    google_json_key_location: Rails.root.join("config/secrets/ua-services-278219-94d3f3a48d94.json")
  }
  config.fog_directory  = 'ua-services'
  config.fog_public     = true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end