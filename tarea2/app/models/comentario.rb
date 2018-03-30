class Comentario < ApplicationRecord
  belongs_to :noticia
  validates_presence_of :author, :comment
end
