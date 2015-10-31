json.array!(@members) do |member|
  json.extract! member, :id, :name, :position, :job_title, :line2, :description
  json.url member_url(member, format: :json)
end
