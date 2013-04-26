class CookiesController < ApplicationController
  # GET /cookies
  # GET /cookies.json
  def index
    @cookies = Cookie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cookies }
    end
  end

  # GET /cookies/1
  # GET /cookies/1.json
  def show
    @cookie = Cookie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cookie }
    end
  end

  # GET /cookies/new
  # GET /cookies/new.json
  def new
    @cookie = Cookie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cookie }
    end
  end

  # GET /cookies/1/edit
  def edit
    @cookie = Cookie.find(params[:id])
  end

  # POST /cookies
  # POST /cookies.json
  def create
    @cookie = Cookie.new(params[:cookie])

    respond_to do |format|
      if @cookie.save
        format.html { redirect_to @cookie, notice: 'Cookie was successfully created.' }
        format.json { render json: @cookie, status: :created, location: @cookie }
      else
        format.html { render action: "new" }
        format.json { render json: @cookie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cookies/1
  # PUT /cookies/1.json
  def update
    @cookie = Cookie.find(params[:id])

    respond_to do |format|
      if @cookie.update_attributes(params[:cookie])
        format.html { redirect_to @cookie, notice: 'Cookie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cookie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookies/1
  # DELETE /cookies/1.json
  def destroy
    @cookie = Cookie.find(params[:id])
    @cookie.destroy

    respond_to do |format|
      format.html { redirect_to cookies_url }
      format.json { head :no_content }
    end
  end
end
