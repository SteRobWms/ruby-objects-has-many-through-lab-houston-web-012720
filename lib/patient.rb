require 'pry'

class Patient

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
            appointment.patient == self
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        drs = []
        appointments.each do |appointment|
            drs << appointment.doctor
        end
        drs
    end

end

# binding.pry
0