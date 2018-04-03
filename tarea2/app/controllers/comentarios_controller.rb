class ComentariosController < ApplicationController
  before_action :set_noticia
  before_action :set_noticia_comentario, only: [:show, :update, :destroy, :update2]

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
    $c = @noticia.comentarios.create!(comentario_params)
    json_response($c, :created)
  end

  # PUT
  def update
    @comentario.update(comentario_params)
    json_response(@comentario)
  end

  def update2
    @comentario.update(comentario_params2)
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

  def comentario_params2
    params.require([:author, :comment, :created_at])
    params.permit(:author, :comment)
  end

  def set_noticia
    @noticia = Noticia.find(params[:noticia_id])
  end

  def set_noticia_comentario
    @comentario = @noticia.comentarios.find_by!(id: params[:id]) if @noticia
  end
end
