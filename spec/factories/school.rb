FactoryGirl.define do
  factory :school do
    name = Faker::Name.name
    school_type School.school_types.keys.sample
    description Faker::Lorem.paragraph(4)
  end
end
