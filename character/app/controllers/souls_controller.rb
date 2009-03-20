class SoulsController < ApplicationController
  # GET /souls
  # GET /souls.xml
  def index
    @souls = Soul.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @souls }
    end
  end

  # GET /souls/1
  # GET /souls/1.xml
  def show
    @soul = Soul.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @soul }
    end
  end

  # GET /souls/new
  # GET /souls/new.xml
  def new
    @soul = Soul.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @soul }
    end
  end

  # GET /souls/1/edit
  def edit
    @soul = Soul.find(params[:id])
  end

  # POST /souls
  # POST /souls.xml
  def create
    @soul = Soul.new(params[:soul])
    @soul.user_id = session[:user_id]

    respond_to do |format|
      if @soul.save
        flash[:notice] = 'Soul was successfully created.'
        format.html { redirect_to(@soul) }
        format.xml  { render :xml => @soul, :status => :created, :location => @soul }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @soul.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /souls/1
  # PUT /souls/1.xml
  def update
    @soul = Soul.find(params[:id])

    respond_to do |format|
      if @soul.update_attributes(params[:soul])
        flash[:notice] = 'Soul was successfully updated.'
        format.html { redirect_to(@soul) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @soul.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /souls/1
  # DELETE /souls/1.xml
  def destroy
    @user = User.find(session[:user_id])
    id = params[:id]
    @soul = @user.souls.find(id).destroy
    #@soul = Soul.find(params[:id])
    #@soul.destroy
    respond_to do |format|
      format.html { redirect_to :controller => "theatre", :action => "stage" }
      format.xml  { head :ok }
    end
  rescue
    redirect_to :controller => "theatre", :action => "stage"
  end
end
