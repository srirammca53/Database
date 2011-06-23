class AnimationsController < ApplicationController
  # GET /animations
  # GET /animations.xml
  def index
    @animations = Animation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @animations }
    end
  end

  # GET /animations/1
  # GET /animations/1.xml
  def show
    @animation = Animation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @animation }
    end
  end

  # GET /animations/new
  # GET /animations/new.xml
  def new
    @animation = Animation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @animation }
    end
  end

  # GET /animations/1/edit
  def edit
    @animation = Animation.find(params[:id])
  end

  # POST /animations
  # POST /animations.xml
  def create
    @animation = Animation.new(params[:animation])

    respond_to do |format|
      if @animation.save
        format.html { redirect_to(@animation, :notice => 'Animation was successfully created.') }
        format.xml  { render :xml => @animation, :status => :created, :location => @animation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @animation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /animations/1
  # PUT /animations/1.xml
  def update
    @animation = Animation.find(params[:id])

    respond_to do |format|
      if @animation.update_attributes(params[:animation])
        format.html { redirect_to(@animation, :notice => 'Animation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @animation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /animations/1
  # DELETE /animations/1.xml
  def destroy
    @animation = Animation.find(params[:id])
    @animation.destroy

    respond_to do |format|
      format.html { redirect_to(animations_url) }
      format.xml  { head :ok }
    end
  end
end
