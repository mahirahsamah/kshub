json.extract! merch_link, :id, :LinkID, :LinkDescription, :UIN, :created_at, :updated_at
json.url merch_link_url(merch_link, format: :json)
