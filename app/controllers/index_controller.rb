class IndexController < ApplicationController
	def index    
	   if current_usuario
	      #@currentUser = Tutor.find(current_usuario.id)
	      @currentUser = current_usuario.id
	   else
	     redirect_to new_usuario_session_path, notice: 'You are not logged in.'
	   end
	end
end
