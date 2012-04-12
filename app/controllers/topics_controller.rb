class TopicsController < ApplicationController
  respond_to :html

  def search 
    @query = params[:query]
    @topic = Topic.new
    @topics = Topic.search @query, :page => params[:page], :per_page => 10

    render :action => 'index'
  end

  def index
    unless params[:year].nil?
      @topics = Topic.where(:year => params[:year], :month => params[:month], :day => params[:day])
                   .paginate :page => params['page'], :per_page => 10
    else
      @topics = Topic.paginate :page => params['page'], :per_page => 10
    end
    
    respond_with @topics
  end

  def show
    @topic = Topic.find(params[:id])
    respond_with @topic
  end

  def new
    @topic = Topic.new
    respond_with @topic
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.new(params[:topic])
    time = Time.now
    @topic.year = time.year
    @topic.month = time.month
    @topic.day = time.day
    if @topic.save
      flash[:notice] = 'Topic was successfully created.'
      respond_with @topic
    else
      render action: "new"
    end
  end

  def update
    @topic = Topic.find(params[:id])

    if @topic.update_attributes(params[:topic])
      flash[:notice] = 'Topic was successfully updated.'
      respond_with @topic
    else
      render action: "edit"
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    respond_with @topic
  end
end