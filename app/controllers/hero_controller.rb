class HeroController < ApplicationController
  # GET /Hero or /heros.json
  def index
    @heros = Hero.all
  end

  # GET /heros/1 or /heros/1.json
  def show
  end

  # GET /heros/new
  def new
    @heros = Hero.new
  end

  # GET /heros/1/edit
  def edit
  end

  # POST /heros or /heros.json
  def create
    @heros = Hero.new(heros_params)
    @heros.user = current_heros_user.email

    respond_to do |format|
      if @heros.save
        format.html { redirect_to @heros, notice: "Hero was successfully created." }
        format.json { render :show, status: :created, location: @heros }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @heros.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heros/1 or /heros/1.json
  def update
    respond_to do |format|
      if @heros.update(heros_params)
        format.html { redirect_to @heros, notice: "Hero was successfully updated." }
        format.json { render :show, status: :ok, location: @heros }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @heros.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heros/1 or /heros/1.json
  def destroy
    @heros.destroy!
    respond_to do |format|
      format.html { redirect_to heros_url, notice: "Hero was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heros
      @heros = Hero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def heros_params
      params.require(:hero).permit(:data)
    end

    def is_authorised
      redirect_to root_path, alert: "You don't have permission to moify this asset." unless current_heros_user.email == @heros.user
    end
    
end
