class AddRandomPatients
    @queue = :add_random_patients
  
    def self.perform(count)
      10.times do |i|
       p= Patient.new
       p.name = "Random "+ i.to_s
       p.birth_date= "2021-08-11"
       p.email= 'random@test.com'
       p.phone= '12345678'
       p.save
       sleep 2

      end
    end
  end