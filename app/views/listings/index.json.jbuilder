json.array!(@listings) do |listing|
  json.extract! listing, :id, :job, :description, :location, :apply, :company, :url, :about
  json.url listing_url(listing, format: :json)
end
