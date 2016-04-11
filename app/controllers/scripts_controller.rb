class ScriptsController < ApplicationController
  before_filter :get_script, except: [:index, :new, :create]

  def index
    @scripts = Script.order(:sequence).paginate(page: params[:page], per_page: 10)
  end

  def new
    @script = Script.new
  end

  def create
    @script = Script.new(script_params)
    if @script.save
      redirect_to(@script, :notice => 'Script was successfully created.')
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @script.update_attributes(script_params)
      redirect_to(@script, :notice => 'Script was successfully updated.').paginate(page: params[:page], per_page: 15)
    else
      render action: :edit
    end
  end

  def destroy
    @script.destroy
    redirect_to scripts_path
  end

  private

  def get_script
    @script = Script.find(params[:id])
  end

  def script_params
    params.require(:script).permit(
      :question_id, :sequence, :phrase, :code, 
      answers_attributes: [:id, :sequence, :phrase, :code, :_destroy]
      )
  end

end