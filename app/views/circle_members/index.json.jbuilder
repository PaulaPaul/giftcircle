json.array!(@circle_members) do |circle_member|
  json.extract! circle_member, :id, :receiver_id, :giverNickname, :person_id, :personInterests, :giverNotes, :giftGiven?, :thankYou, :giftCircle_id, :gift_id
  json.url circle_member_url(circle_member, format: :json)
end
