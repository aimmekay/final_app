json.array!(@deskphones) do |deskphone|
  json.extract! deskphone, :id, :manufacturer, :model, :serialNumber, :phoneNumber, :macAddress, :department, :location, :assignedTo, :status, :notes
  json.url deskphone_url(deskphone, format: :json)
end
