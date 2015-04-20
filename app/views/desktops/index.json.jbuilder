json.array!(@desktops) do |desktop|
  json.extract! desktop, :id, :manufacturer, :model, :jslgTag, :manufacturerTag, :serialNumber, :osType, :hostName, :ram, :hdd, :department, :location, :assignedTo, :status, :notes
  json.url desktop_url(desktop, format: :json)
end
