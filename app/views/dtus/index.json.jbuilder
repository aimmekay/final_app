json.array!(@dtus) do |dtu|
  json.extract! dtu, :id, :manufacturer, :model, :serialNumber, :jslgTag, :macAddress, :hostName, :department, :location, :assignedTo, :status, :notes
  json.url dtu_url(dtu, format: :json)
end
