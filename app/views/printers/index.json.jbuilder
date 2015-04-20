json.array!(@printers) do |printer|
  json.extract! printer, :id, :manufacturer, :model, :mrcId, :jslgTag, :serialNumber, :hostName, :ipAddress, :department, :location, :assignedTo, :status, :notes
  json.url printer_url(printer, format: :json)
end
