require './car'
RSpec.describe Car do
    describe '#vehicle_report' do
     
        context "When initializing default parameters" do 
            
            it "The vehicle_report method should return 'This is Opel Vectra.'" do 
                car_one = Car.new 
                expect(car_one.vehicle_report).to eq('This is Opel Vectra.')
            end

        end 

        context "When initializing user-defined parameters" do 
            
            it "The vehicle_report method should return 'This is Ford Mondeo.'" do 
                car_two = Car.new('Ford', 'Mondeo')
                expect(car_two.vehicle_report).to eq('This is Ford Mondeo.')
            end

        end
    end
end