json.array!(@smartphones) do |smartphone|
  json.extract! smartphone, :id, :manufacturer, :model, :carrier, :phoneNumber, :serialNumber, :meid, :macAddress, :department, :location, :assignedTo, :status, :notes
  json.url smartphone_url(smartphone, format: :json)
end
