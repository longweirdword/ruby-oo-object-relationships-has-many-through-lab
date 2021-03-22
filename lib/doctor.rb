class Doctor 
  attr_accessor :name
  @@all = []

    def initialize(name)
        @name = name 
        save 
    end 

    def save 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    def appointments 
        Appointment.all.select{|app| app.doctor == self}
    end 

    def patients 
        self.appointments.collect{|app| app.patient}
    end 

end    
