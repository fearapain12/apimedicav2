class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def index
    @user=User.select("user,password")
    respond_to do |t|
      t.json{render json:@user}
    end
    
  end
  
  def query_doctores
    @doctores=Doctor.select("nombre,especialidad,telefono,Location_id")
    respond_to do |format|
      format.json{render json:@doctores}
    end
  end
  
  def query_receta
    @id_paciente=(User.where("user LIKE ?","%alfredo%")).select("id")
    @receta_paciente=(Prescription.where("User_id LIKE ?",@id_paciente[0]["id"])).select("medicamento,User_id,Doctor_id")
    respond_to do |format|
      format.json{render json:@receta_paciente}
    end
  end
  
  def query_localizacion
    @id_localizacion=(Doctor.where("nombre LIKE ? ","%jorge%")).select("Location_id")
    @coordenadas=(Location.where("id LIKE ?",@id_localizacion[0]["Location_id"])).select("name,latitude,longitude")
    respond_to do |format|
      format.json{render json:@coordenadas}
    end
  end
  
  def query_comentarios
    @id_doctor=(Doctor.where("nombre LIKE ? ","%jorge%")).select("id")
    @comentarios=(Comment.where("Doctor_id LIKE ?",@id_doctor[0]["id"])).select("comentario,puntuacion")
    
    respond_to do |format|
      format.json{render json:@comentarios}
    end
  end
end
