class ServedRolesController < ApplicationController
  before_action :set_served_role, only: [:show, :edit, :update, :destroy]

  # GET /served_roles
  # GET /served_roles.json
  def index
    @served_roles = ServedRole.all
  end

  # GET /served_roles/1
  # GET /served_roles/1.json
  def show
  end

  # GET /served_roles/new
  def new
    @served_role = ServedRole.new
  end

  # GET /served_roles/1/edit
  def edit
  end

  # POST /served_roles
  # POST /served_roles.json
  def create
    @served_role = ServedRole.new(served_role_params)

    respond_to do |format|
      if @served_role.save
        format.html { redirect_to @served_role, notice: 'Served role was successfully created.' }
        format.json { render :show, status: :created, location: @served_role }
      else
        format.html { render :new }
        format.json { render json: @served_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /served_roles/1
  # PATCH/PUT /served_roles/1.json
  def update
    respond_to do |format|
      if @served_role.update(served_role_params)
        format.html { redirect_to @served_role, notice: 'Served role was successfully updated.' }
        format.json { render :show, status: :ok, location: @served_role }
      else
        format.html { render :edit }
        format.json { render json: @served_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /served_roles/1
  # DELETE /served_roles/1.json
  def destroy
    @served_role.destroy
    respond_to do |format|
      format.html { redirect_to served_roles_url, notice: 'Served role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_served_role
      @served_role = ServedRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def served_role_params
      params.require(:served_role).permit(:name, :description, :skill_id, :project_id)
    end
end
