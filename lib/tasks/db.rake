namespace :db do
  desc "Remaking data"
  task remake_data: :environment do

    puts "Reset"
    Rake::Task["db:migrate:reset"].invoke

    puts "Create Grade"
    # 12.times {|i| Grade.create name: i+1}
    1.times {|i| Grade.create name: 10}

    puts "School"
    # 10.times {FactoryGirl.create :school}
    1.times {FactoryGirl.create :school}

    puts "Subject"
    SUBJECTS = ["Toan", "Ly", "Hoa", "Sinh", "Van", "Su", "Dia", "Anh", "GDCD", "TD", "CN"]
    GROUPS = ["A", "B", "C", "D", "E", "F", "G", "H"]
    SCORE_TYPE = ["Mieng", "15'", "1 Tiet", "Hoc Ki"]
    SUBJECTS.each do |subject|
      Subject.create name: subject
    end

    puts "Create parrent"
    100.times {FactoryGirl.create :parrent}

    puts "Create teachers and groups"
    School.all.each do |school|
      10.times {
        school.teachers.create name: Faker::Name.name
      }
      Grade.all.each do |grade|
        grade.groups.create name: grade.name + GROUPS.first, school: school
        # GROUPS.each do |group|
        #   grade.groups.create name: grade.name + group, school: school
        # end
      end
    end

    puts "Create students"
    Group.all.each do |group|
      group.update_attributes subject_ids: Subject.all.map(&:id)
      subject_group_ids = (SubjectGroup.where group: group).map(&:id)
      20.times {
        name = Faker::Name.name.split
        group.students.create first_name: name[0],
          last_name: name[1], middle_name: name[0],
          parrent: Parrent.all.sample,
          subject_group_ids: subject_group_ids
      }
      puts "End of group #{group.id}"
    end

    puts "Assign scores for students"
    StudentSubjectGroup.all.each do |ssg|
      10.times{
        ssg.scores.create value: rand(1..10), score_type: SCORE_TYPE.sample
      }
      puts "End of subject_group #{ssg.id}"
    end

  end
end
