class EsteticasController < ApplicationController
  # GET /esteticas
  # GET /esteticas.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @esteticas }
    end
  end

  def conetnido_a
        
  end

  def contenido_b
    
  end

  def contact
    
  end

  def send_mail
    Rails.logger.debug "PARAMS => #{params.inspect}"
    Rails.logger.debug "Entramos a SEND_MAIL"
    contact = ContactEmail.new
    Rails.logger.debug "Se instancia ContactEmail"
    begin
      contact.create_contact(params)
      Rails.logger.debug "\nENVIAMOS CORREO \n" 
      UserMailer.send_contact_email(contact).deliver
      redirect_to root_path, :notice => "Se ha enviado el correo."
    rescue Exception => e
      Rails.logger.debug "ERROR => #{e.message}"
      redirect_to contact_path, :error => "No se ha podido enviar el correo."
    end
  end
  # GET /esteticas/1
  # GET /esteticas/1.json
  def show
    @estetica = Estetica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estetica }
    end
  end

  # GET /esteticas/new
  # GET /esteticas/new.json
  def new
    @estetica = Estetica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estetica }
    end
  end

  # GET /esteticas/1/edit
  def edit
    @estetica = Estetica.find(params[:id])
  end

  # POST /esteticas
  # POST /esteticas.json
  def create
    @estetica = Estetica.new(params[:estetica])

    respond_to do |format|
      if @estetica.save
        format.html { redirect_to @estetica, notice: 'Estetica was successfully created.' }
        format.json { render json: @estetica, status: :created, location: @estetica }
      else
        format.html { render action: "new" }
        format.json { render json: @estetica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /esteticas/1
  # PUT /esteticas/1.json
  def update
    @estetica = Estetica.find(params[:id])

    respond_to do |format|
      if @estetica.update_attributes(params[:estetica])
        format.html { redirect_to @estetica, notice: 'Estetica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estetica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esteticas/1
  # DELETE /esteticas/1.json
  def destroy
    @estetica = Estetica.find(params[:id])
    @estetica.destroy

    respond_to do |format|
      format.html { redirect_to esteticas_url }
      format.json { head :no_content }
    end
  end
end
