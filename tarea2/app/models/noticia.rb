class Noticia < ApplicationRecord
  has_many :comentarios
  validates_presence_of :title, :body
end
