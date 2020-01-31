require 'pry'
require_relative 'doctor.rb'
require_relative 'patient.rb'

class Appointment

    @@all = []

    attr_accessor :date, :patient, :doctor

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

end


# binding.pry
0