class LocationsController < ApplicationController
#    before_filter: find_project, only: [:show, :update]
#
#    before_filter only :create do
#        unless @json.has_key?('location')&&@json['location'].responds_to?(:[])&&@json['location']['id']
#            render nothing: true, status: :bad_request
#        end
#    end
#
#    before_filter only: :update do
#        unless @json.has_key?('location')
#            render nothing: true, status: :bad_request
#        end
#    end
#
#    before_filter only: :create do
#        @location = Location.find_by_name(@json['location']['id'])
#    end

  def index
    @locations = Location.all
    puts @locations
    respond_to do |format|
        format.json {render json: @locations}
    end
  end
  
  def create
      puts "starting create..."
      puts @json
      @location = Location.new(location_params)
      puts @location
      puts "====="
      puts @location.lon
      puts @location.lat
      puts "====="
      #@location.assign_attributes(@json['location'])
      if @location.save!
          render json: @location
      else
          render nothing: true, status: :bad_request
      end 
  end

  def show
      @location = Location.find(params[:id])
  end

  def update
      @location.assign_attributes(@json['location'])
      if @location.save
          render json: @location
      else
          render nothing: true, status: :bad_request
      end
  end

  def destroy
      @location = Location.find(params[:id])
      @location.destroy
  end

  private
    def location_params
        params.require(:location).permit(:lat, :lon, :addr)
    end
end
