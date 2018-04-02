class ComentariosController < ApplicationController
  before_action :set_noticia
  before_action :set_noticia_comentario, only: [:show, :update, :destroy]

  # GET
  def index
    json_response(@noticia.comentarios)
  end

  # GET
  def show
    json_response(@comentario)
  end

  # POST
  def create
    @noticia.comentarios.create!(comentario_params)
    json_response(@noticia, :created)
  end

  # PUT
  def update
    @comentario.update(comentario_params)
    json_response(@comentario)
  end

  # DELETE
  def destroy
    @comentario.destroy
    json_response(@noticia.comentarios)
  end

  private

  def comentario_params
    params.permit(:author, :comment)
  end

  def set_noticia
    @noticia = Noticia.find(params[:noticia_id])
  end

  def set_noticia_comentario
    @comentario = @noticia.comentarios.find_by!(id: params[:id]) if @noticia
  end
end
