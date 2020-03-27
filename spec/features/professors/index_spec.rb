require 'rails_helper'

RSpec.describe "the professor index page" do
  it "should display all professors" do
    professor_1 = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
    professor_2 = Professor.create(name: "Rubus Hagarid", age: 38 , specialty: "Care of Magical Creatures")
    professor_3 = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

    visit '/professors'

    expect(page).to have_content(professor_1.name)
    expect(page).to have_content(professor_1.age)
    expect(page).to have_content(professor_1.specialty)

    expect(page).to have_content(professor_2.name)
    expect(page).to have_content(professor_2.age)
    expect(page).to have_content(professor_2.specialty)

    expect(page).to have_content(professor_3.name)
    expect(page).to have_content(professor_3.age)
    expect(page).to have_content(professor_3.specialty)

  end
end
