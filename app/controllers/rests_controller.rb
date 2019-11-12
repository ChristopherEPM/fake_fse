class RestsController < ApplicationController
  before_action :set_rest, only: [:show, :update, :destroy]

  # GET /rests
  # GET /rests.json
  def index
    @rests = Rest.all
  end

  # GET /rests/1
  # GET /rests/1.json
  def show
  end

  # POST /rests
  # POST /rests.json
  def create
    @rest = Rest.new(rest_params)

    if @rest.save
      render :show, status: :created, location: @rest
    else
      render json: @rest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rests/1
  # PATCH/PUT /rests/1.json
  def update
    if @rest.update(rest_params)
      render :show, status: :ok, location: @rest
    else
      render json: @rest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rests/1
  # DELETE /rests/1.json
  def destroy
    @rest.destroy
  end

  def usecases

    # app = params[:app] 
    # role = params[:role]
    # user = params[:user]
    # errorcode = ""
    # error = ""
    # if app != "8820"
    #   errorcode = 1000
    #   error = "Application not found"
    # elsif role != "FSEASCOTTAPP"
    #   errorcode = 1125
    #   error = "Role not found"
    # elsif !["support","admin","empleado","super","supervacas","prefer"].include?(user)
    #   errorcode = 1265
    #   error = "User data not found"
    # end

    #usecases =
    # case user
    # when "support"
    #   [{id: "1001", what: "01", how: [{key: "HOWDATAUSER", value: "03"}]},
    #   {id: "1002", what: "02", how: [{key: "HOWDATAUSER", value: "03"}]}]
    # when "admin"
     # [{id: "1003", what: "03", how: [{key: "HOWDATAUSER", value: "03"}]}]
    # when "empleado"
    #   [{id: "1003", what: "03", how: [{key: "HOWDATAUSER", value: "01"}]}]
    # when "super"
    #   [{id: "1003", what: "01", how: [{key: "HOWDATAUSER", value: "02"}]},
    #   {id: "1003", what: "04", how: [{key: "HOWDATAUSER", value: "02"}]},
    #   {id: "1003", what: "03", how: [{key: "HOWDATAUSER", value: "01"}]}]
    # when "supervacas"
    #   [{id: "1003", what: "04", how: [{key: "HOWDATAUSER", value: "02"}]},
    #   {id: "1003", what: "03", how: [{key: "HOWDATAUSER", value: "01"}]}]
    # when "prefer"
    #   [{id: "1003", what: "01", how: [{key: "HOWDATAUSER", value: "03"}]},
    #   {id: "1003", what: "02", how: [{key: "HOWDATAUSER", value: "03"}]},
    #   {id: "1003", what: "03", how: [{key: "HOWDATAUSER", value: "01"}]}]
    # else
    #   ""
    # end

    # if role =="FSEASCOTTAPP" && app == "8820" && 
    #   ["support","admin","empleado","super","supervacas","prefer"].include?(user)
      # @response = { 
      #   user: "2310",
      #   role: "FEASTCOTAPP",
      #   app: "8820",
      #   resource: "usecases",
      #   status: :ok,
      #   usecases: usecases
      # }
    # else
    #   @response = { 
    #     user: user,
    #     role: role,
    #     app: app,
    #     status: :ko,
    #     resource: "usecases",
    #     errorcode: errorcode,
    #     error: error    
    #   }
    # end

      @usecases1 = Usecase.new(what: "01", how: [{key: "HOWDATAUSER", value: "03"}])
      @usecases2 = Usecase.new(what: "04", how: [{key: "HOWDATAUSER", value: "02"}])
      @usecases3 = Usecase.new(what: "03", how: [{key: "HOWDATAUSER", value: "01"}])
      #añadir usecases
      @rest = Rest.new(user:"2310",role: "FEASTCOTAPP", app: "8820", usecases:[@usecases1,@usecases2,@usecases3])
      
      #render json: @rest.errors
  end

  def useraccess
    # if params[:operation] == "ACCESS"
    #   @response = 
    #   if params[:user] == "Soporte"
    #     { 
    #       user: "Soporte",
    #       app: "8820",
    #       resource: "useraccess",
    #       operation: "ACCESS",
    #       status: :ok
    #     }
    #   else
    #     { 
    #       user: "Soporte",
    #       app: "8820",
    #       resource: "useraccess",
    #       operation: "Access",
    #       status: :ko,
    #       errorcode: "1250",
    #       error: "User and/or password are not correct"
    #     }
    #   end
    # else
    #   if params[:operation] == "ACCESSINFO"
    #     @response = 
    #     if params[:user] == "Soporte"
    #       { 
    #         user: "Soporte",
    #         role: "FSEASCOTTON",
    #         app: "8820",
    #         resource: "useraccess",
    #         operation: "ACCESSINFO",
    #         status: :ok,
    #         uservalues: {
    #           id: "userid",
    #           clave: "usercode",
    #           empresa: "userempresa",
    #           lastname: "apellido",
    #           lastname1: "apellido1",
    #           lastname2: "apellido2",
    #           firstname: "userfirstname",
    #           name: "username",
    #           email: "user@email",
    #           idioma: "spanglish",
    #           falta: "userfalta",
    #           fbaja: "userbaja",
    #           data: [{key: "attributekey", value: "atributevalue"}]
    #         }
    #       }
    #     else
    #       { 
    #         user: "Soporte",
    #         role: "FSEASCOTTON",
    #         app: "8820",
    #         resource: "useraccess",
    #         operation: "ACCESSINFO",
    #         status: :ko,
    #         errorcode: "1250",
    #         error: "User and/or password are not correct"
    #       }
    #     end
    #   end
    # end
    # @response ||= { 
    #   user: "Soporte",
    #   role: "FEASTCOTAPP",
    #   app: "8820",
    #   resource: "usecase",
    #   operation: "Access",
    #   status: :ok
    # }
    # render json: @response
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rest
      @rest = Rest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rest_params
      params.require(:rest).permit(:app, :role, :user)
    end
end
