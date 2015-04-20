json.array!(@mobilecarts) do |mobilecart|
  json.extract! mobilecart, :id, :manufacturer, :model, :jslgTag, :manufacturerTag, :serialNumber, :osType, :hostName, :department, :location, :assignedTo, :status, :notes
  json.url mobilecart_url(mobilecart, format: :json)
end
