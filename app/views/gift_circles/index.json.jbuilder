json.array!(@gift_circles) do |gift_circle|
  json.extract! gift_circle, :id, :name, :about, :theme, :giving_date, :reveal_date, :min_giftprice, :max_giftprice, :annon_admin?, :active?, :person_id
  json.url gift_circle_url(gift_circle, format: :json)
end
