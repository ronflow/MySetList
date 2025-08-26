# app/controllers/admin/events_controller.rb
class Admin::EventsController < ApplicationController
  def save_queue_order
    # Implementar a lógica para salvar a ordem da fila
    # Exemplo:
    if params[:order].present?
      params[:order].each_with_index do |id, index|
        # Atualizar a posição dos itens
        # Model.find(id).update(position: index)
      end
      
      render json: { status: 'success' }
    else
      render json: { status: 'error', message: 'No order provided' }
    end
  end
  
  private
  
  def event_params
    # definir os parâmetros permitidos
  end
end