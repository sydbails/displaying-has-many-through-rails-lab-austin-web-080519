class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def new
        @doctor = Doctor.new
    end

    def create 
        @doctor = Doctor.create(doctor_params)
        redirect_to doctor_path
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def update
        @doctor = Doctor.find(params[:id])
        @doctor.update
        redirect_to doctor_path
    end

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end


end
