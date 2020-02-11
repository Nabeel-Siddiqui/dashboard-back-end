class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :text_content, :create_date, :update_date, :user_id
end
