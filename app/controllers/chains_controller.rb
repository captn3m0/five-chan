class ChainsController < ApplicationController
  def show
      @chain = Chain.find params['id']
  end
  def new
  end
  def create
      @chain = current_user.chains.create({:content=>params['content']})
      redirect_to view_chain_path @chain.id
  end
  def list
      @chains = Chain.all
  end
end
