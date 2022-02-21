require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
start_hr = Time.parse("2013-10-20T19:20:30+01:00") # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage beginning at this hour.
opts = {
  end_hr: Time.parse("2013-10-20T19:20:30+01:00"), # Time | Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]` for usage ending **before** this hour.
}

begin
  # Get hourly usage for incident management
  result = api_instance.get_incident_management(start_hr, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_incident_management: #{e}"
end