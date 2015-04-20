json.array!(@laptops) do |laptop|
  json.extract! laptop, :id, :manufacturer, :model, :jslgTag, :manufacturerTag, :serialNumber, :osType, :hostName, :ram, :hdd, :department, :location, :assignedTo, :status, :notes
  json.url laptop_url(laptop, format: :json)
end
