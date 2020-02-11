class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :reddit, :news, :stocks, :weather, :spotify, :calender, :twitter, :sleepCycle, :notes, :user_id
end
