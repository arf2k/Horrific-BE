class Comment < ApplicationRecord

belongs_to :user 
belongs_to :video 

self.primary_key = 'id'


end
