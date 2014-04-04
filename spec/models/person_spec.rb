require 'spec_helper'

describe Person do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :slug }

  it { should have_and_belong_to_many :skills }

  context '#stats' do
    it 'returns all of the stats for a person' do
      test_person = Person.create(name: "Robin Miller", gender: "Female", weight: 500.0, eye_color: "Orange", hair_color: "Chartruse", shoe_size: "11", physique: "Doughy", waist: 100.0, inseam: 30.0, role: "stunt_coordinator", profile_picture: "http://www.iidaohky.org/sites/default/files/images/events/robin%5B1%5D.jpg", slug: "robin-miller")
      test_person.stats.should eq ({"name"=>"Robin Miller", "gender"=>"Female", "weight"=>500.0, "eye_color"=>"Orange", "hair_color"=>"Chartruse", "shoe_size"=>"11", "physique"=>"Doughy", "waist"=>100.0, "inseam"=>30.0, "role"=>"stunt_coordinator"})
    end
  end

  context '.search' do
    it 'returns all the people who fit the search' do
      test_person1 = Person.create(name: "Robin Miller", gender: "Female", weight: 500.0, eye_color: "Orange", hair_color: "Chartruse", shoe_size: "11", physique: "Doughy", waist: 100.0, inseam: 30.0, role: "stunt_coordinator", profile_picture: "http://www.iidaohky.org/sites/default/files/images/events/robin%5B1%5D.jpg", slug: "robin-miller")
      test_person2 = Person.create(name: "Liz Tom", gender: "Female", weight: 500.0, eye_color: "Red", hair_color: "Purple", shoe_size: "11", physique: "Doughy", waist: 100.0, inseam: 30.0, role: "stunt_coordinator", profile_picture: "http://www.google.com", slug: "liz-tom")
      Person.search('Robin').should eq [test_person1]
    end
  end
end
