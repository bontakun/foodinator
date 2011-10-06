class FooderiesController < ApplicationController
  # GET /fooderies
  # GET /fooderies.xml
  def index
    @fooderies = Foodery.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fooderies }
    end
  end

  # GET /fooderies/1
  # GET /fooderies/1.xml
  def show
    @foodery = Foodery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @foodery }
    end
  end

  # GET /fooderies/new
  # GET /fooderies/new.xml
  def new
    @foodery = Foodery.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @foodery }
    end
  end

  # GET /fooderies/1/edit
  def edit
    @foodery = Foodery.find(params[:id])
  end

  # POST /fooderies
  # POST /fooderies.xml
  def create
    @foodery = Foodery.new(params[:foodery])

    respond_to do |format|
      if @foodery.save
        format.html { redirect_to(@foodery, :notice => 'Foodery was successfully created.') }
        format.xml  { render :xml => @foodery, :status => :created, :location => @foodery }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @foodery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fooderies/1
  # PUT /fooderies/1.xml
  def update
    @foodery = Foodery.find(params[:id])

    respond_to do |format|
      if @foodery.update_attributes(params[:foodery])
        format.html { redirect_to(@foodery, :notice => 'Foodery was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @foodery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fooderies/1
  # DELETE /fooderies/1.xml
  def destroy
    @foodery = Foodery.find(params[:id])
    @foodery.destroy

    respond_to do |format|
      format.html { redirect_to(fooderies_url) }
      format.xml  { head :ok }
    end
  end
end
