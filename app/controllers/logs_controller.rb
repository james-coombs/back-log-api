class LogsController < ProtectedController
  before_action :set_log, only: [:show, :update, :destroy]

  # GET /logs
  # GET /logs.json
  def index
    @logs = current_user.logs

    render json: @logs
  end

  # GET /logs/1
  # GET /logs/1.json
  def show
    if current_user.id == @log.user_id
      render json: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  # POST /logs
  # POST /logs.json
  def create
    @log = current_user.logs.build(log_params)

    if @log.save
      render json: @log, status: :created, location: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logs/1
  # PATCH/PUT /logs/1.json
  def update
    if current_user.id == @log.user_id
      @log = Log.find(params[:id])
      if @log.update(log_params)
        head :no_content
      else
        render json: @log.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /logs/1
  # DELETE /logs/1.json
  def destroy
    if current_user.id == @log.user_id
      @log.destroy

      head :no_content
    else
      head :unauthorized
    end
  end

  private

  def set_log
    @log = Log.find(params[:id])
  end

  def log_params
    params.require(:log).permit(:title, :platform, :players, :stage, :notes)
  end
end
