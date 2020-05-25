CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "Google",
    google_project: RCreds.fetch(:google_cloud_storage_project_name),
    google_json_key_string: RCreds.fetch(:google_cloud_storage_credentials)
  }
  config.fog_directory  = RCreds.fetch(:google_cloud_storage_bucket_name)
  config.fog_public     = true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end