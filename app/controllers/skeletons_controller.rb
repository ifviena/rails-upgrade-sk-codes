class SkeletonsController < ApplicationController
  before_action :set_skeleton, only: %i[ show edit update destroy ]

  # GET /skeletons or /skeletons.json
  def index
    @skeletons = Skeleton.all
  end

  # GET /skeletons/1 or /skeletons/1.json
  def show
  end

  # GET /skeletons/new
  def new
    @skeleton = Skeleton.new
  end

  # GET /skeletons/1/edit
  def edit
  end

  # POST /skeletons or /skeletons.json
  def create
    @skeleton = Skeleton.new(skeleton_params)

    respond_to do |format|
      if @skeleton.save
        format.html { redirect_to skeleton_url(@skeleton), notice: "Skeleton was successfully created." }
        format.json { render :show, status: :created, location: @skeleton }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skeleton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skeletons/1 or /skeletons/1.json
  def update
    respond_to do |format|
      if @skeleton.update(skeleton_params)
        format.html { redirect_to skeleton_url(@skeleton), notice: "Skeleton was successfully updated." }
        format.json { render :show, status: :ok, location: @skeleton }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skeleton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skeletons/1 or /skeletons/1.json
  def destroy
    @skeleton.destroy

    respond_to do |format|
      format.html { redirect_to skeletons_url, notice: "Skeleton was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skeleton
      @skeleton = Skeleton.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skeleton_params
      params.require(:skeleton).permit(:name, :facts)
    end
end
