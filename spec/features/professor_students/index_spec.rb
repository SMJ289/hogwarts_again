require 'rails_helper'

RSpec.describe "the professor student index page" do
  it "should display all of a professors students" do

    snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
    hagarid = Professor.create(name: "Rubus Hagarid", age: 38 , specialty: "Care of Magical Creatures")
    lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

    harry = Student.create(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
    malfoy = Student.create(name: "Draco Malfoy" , age: 12 , house: "Slytherin" )
    longbottom = Student.create(name: "Neville Longbottom" , age: 11 , house: "Gryffindor" )

    ProfessorStudent.create(student_id: harry, professor_id: snape)
    ProfessorStudent.create(student_id: harry, professor_id: hagarid)
    ProfessorStudent.create(student_id: harry, professor_id: lupin)
    ProfessorStudent.create(student_id: malfoy, professor_id: hagarid)
    ProfessorStudent.create(student_id: malfoy, professor_id: lupin)
    ProfessorStudent.create(student_id: longbottom, professor_id: snape)

    visit "/professors/#{snape.id}"

    expect(page).to have_content(harry.name)
    expect(page).to have_content(longbottom.name)
  end
end
