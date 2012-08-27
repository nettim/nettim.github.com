class ApexAccessControlController < ApplicationController
  # GET /apex_access_control
  # GET /apex_access_control.json
  def index
    @apex_access_control = ApexAccessControl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @apex_access_control }
    end
  end

  # GET /apex_access_control/1
  # GET /apex_access_control/1.json
  def show
    @apex_access_control = ApexAccessControl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @apex_access_control }
    end
  end

  # GET /apex_access_control/new
  # GET /apex_access_control/new.json
  def new
    @apex_access_control = ApexAccessControl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @apex_access_control }
    end
  end

  # GET /apex_access_control/1/edit
  def edit
    @apex_access_control = ApexAccessControl.find(params[:id])
  end

  # POST /apex_access_control
  # POST /apex_access_control.json
  def create
    @apex_access_control = ApexAccessControl.new(params[:apex_access_control])

    respond_to do |format|
      if @apex_access_control.save
        format.html { redirect_to @apex_access_control, :notice => 'Apex access control was successfully created.' }
        format.json { render :json => @apex_access_control, :status => :created, :location => @apex_access_control }
      else
        format.html { render :action => "new" }
        format.json { render :json => @apex_access_control.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /apex_access_control/1
  # PUT /apex_access_control/1.json
  def update
    @apex_access_control = ApexAccessControl.find(params[:id])

    respond_to do |format|
      if @apex_access_control.update_attributes(params[:apex_access_control])
        format.html { redirect_to @apex_access_control, :notice => 'Apex access control was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @apex_access_control.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /apex_access_control/1
  # DELETE /apex_access_control/1.json
  #def destroy
  #  @apex_access_control = ApexAccessControl.find(params[:id])
  #  @apex_access_control.destroy

  #  respond_to do |format|
  #    format.html { redirect_to apex_access_control_index_url }
  #    format.json { head :no_content }
  #  end
  #end
end
