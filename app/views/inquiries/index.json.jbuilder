json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :id, :name, :email, :inquiry
  json.url inquiry_url(inquiry, format: :json)
end
