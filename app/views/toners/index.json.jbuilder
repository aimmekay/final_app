json.array!(@toners) do |toner|
  json.extract! toner, :id, :manufacturer, :model, :color, :id, :quantity
  json.url toner_url(toner, format: :json)
end
