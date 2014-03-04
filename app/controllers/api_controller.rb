class ApiController < ApplicationController
	def getDataForBeacon
	    if params[:type].present? && params[:beacon_uid].present?
	      if params[:type]=="getDataForBeacon"
	        @beacon = Beacon.where(:uid => params[:beacon_uid])
	        if (@beacon.count) <= 0
	          render :json => { :status => :ok, :message => "Fail!", :description => "Beacon Not Found"}
	        else
		     #    if(@beacon[0].childBeacons.count > 0)
		     #    	render json: @beacon[0].childBeacons
		    	# else
		    	# 	render json: @beacon
		     #    end
		    end
	      else
	        render :json => { :status => :ok, :message => "Fail!", :description => "Wrong Type"}
	      end
	    else
	      render :json => { :status => :ok, :message => "Fail!", :description => "Missing Attribute"}
	    end
 	end

 	def getChildBeacons
	    if params[:type].present? && params[:beacon_uid].present?
	      if params[:type]=="getChildBeacons"
	        @beacon = Beacon.where(:uid => params[:beacon_uid])
	        @childBeacons = @beacon[0].childBeacons
	        if (@childBeacons.count) <= 0
	           render :json => { :status => :ok, :message => "Fail!", :description => "No Child Beacons"}
	        else
	           render json: @childBeacons
	        end
	      else
	        render :json => { :status => :ok, :message => "Fail!", :description => "Wrong Type"}
	      end
	    else
	      render :json => { :status => :ok, :message => "Fail!", :description => "Missing Attribute"}
	    end
 	end

 	def getBrandFeedbacks
	    if params[:type].present? && params[:brand_id].present?
	      if params[:type]=="getBrandFeedbacks"
	        @brand = Brand.find(params[:brand_id])
	        @feedbacks = @brand.feedbacks
	        if (@feedbacks.count) <= 0
	           render :json => { :status => :ok, :message => "Fail!", :description => "No Feedback Found"}
	        else
	           render json: @feedbacks
	        end
	      else
	        render :json => { :status => :ok, :message => "Fail!", :description => "Wrong Type"}
	      end
	    else
	      render :json => { :status => :ok, :message => "Fail!", :description => "Missing Attribute"}
	    end
 	end

 	def getBrandExpressions
	    if params[:type].present? && params[:brand_id].present?
	      if params[:type]=="getBrandExpressions"
	        @brand = Brand.find(params[:brand_id])
	        @expressions = @brand.expressions
	        if (@expressions.count) <= 0
	           render :json => { :status => :ok, :message => "Fail!", :description => "No Expression Found"}
	        else
	           render json: @expressions
	        end
	      else
	        render :json => { :status => :ok, :message => "Fail!", :description => "Wrong Type"}
	      end
	    else
	      render :json => { :status => :ok, :message => "Fail!", :description => "Missing Attribute"}
	    end
 	end
end
