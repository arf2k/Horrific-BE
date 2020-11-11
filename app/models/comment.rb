class Comment < ApplicationRecord

belongs_to :user, dependent: :destroy

belongs_to :video, dependent: :destroy

self.primary_key = 'id'


end
