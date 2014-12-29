json.array!(@gifts) do |gift|
  json.extract! gift, :id, :name, :about, :image, :giftcard, :person_id, :circleMember_id
  json.url gift_url(gift, format: :json)
end
