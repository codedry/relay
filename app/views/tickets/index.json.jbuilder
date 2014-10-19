json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :name, :notes
  json.url ticket_url(ticket, format: :json)
end
