require 'pry'

class Doctor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        appts = []
        appointments.each do |appointment|
            appts << appointment.patient
        end
        appts
    end

end

# binding.pry
0