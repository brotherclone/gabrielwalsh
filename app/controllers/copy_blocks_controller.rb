class CopyBlocksController < ApplicationController

  before_action :set_copy_block

  def index
    @copy_blocks = CopyBlock.all
  end

  def new
    @copy_block = CopyBlock.new
  end

  def create
    @copy_block = CopyBlock.new(copy_block_params)
  end

  def update
    @copy_block.update(copy_block_params)
  end

  def destroy
    @copy_block.destroy
  end
  
  
  private

  def set_copy_block
    @copy_block = CopyBlock.find(params[:id])
  end

  def copy_block_params
    params.require(:copy_block).permit(:project_id, :case_study_item_id, :organization_id, :job_id, :visual_id, :text)
  end

end