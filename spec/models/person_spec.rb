require 'spec_helper'

describe Person do
  context '#stats' do
    it 'returns all of the stats for a person' do
      test_person = Person.create(name: "Robin Miller", gender: "Female", weight: 500.0, eye_color: "Orange", hair_color: "Chartruse", shoe_size: "11", physique: "Doughy", waist: 100.0, inseam: 30.0, role: "stunt_coordinator", profile_picture: "http://www.iidaohky.org/sites/default/files/images/events/robin%5B1%5D.jpg", slug: "robin-miller")
      test_person.stats.should eq ({"name"=>"Robin Miller", "gender"=>"Female", "weight"=>500.0, "eye_color"=>"Orange", "hair_color"=>"Chartruse", "shoe_size"=>"11", "physique"=>"Doughy", "waist"=>100.0, "inseam"=>30.0, "role"=>"stunt_coordinator"})
    end
  end
end
