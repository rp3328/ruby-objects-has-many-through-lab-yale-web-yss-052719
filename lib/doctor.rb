class Doctor
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def Doctor.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select do |data|
            data.doctor == self
        end
    end

    def patients
        Appointment.all.collect do |app|
            app.patient
        end
    end

end