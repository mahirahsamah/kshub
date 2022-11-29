# frozen_string_literal: true

json.extract! merch, :id, :name, :price, :link, :created_at, :updated_at
json.url merch_url(merch, format: :json)
