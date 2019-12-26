# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {id: 1,department_name: 'CNTT'},
  {id: 2,department_name: 'HH'},
  {id: 3,department_name: 'KT'},
].each do |attr|
  department = Department.find_by(id: attr[:id])
  Department.transaction do
    unless department
      department = Department.new(attr)
      department.save
    else
      department.update_attributes attr
    end
  end
end
[
  {id: 1,room_name: 'H01'},
  {id: 2,room_name: 'H02'},
  {id: 3,room_name: 'H03'},
].each do |attr|
  room = Room.find_by(id: attr[:id])
  Room.transaction do
    unless room
      room = Room.new(attr)
      room.save
    else
      room.update_attributes attr
    end
  end
end
[
  {id: 1,subject_name: 'English'},
  {id: 2,subject_name: 'Math'},
  {id: 3,subject_name: 'Physical'},
].each do |attr|
  subject = Subject.find_by(id: attr[:id])
  Subject.transaction do
    unless subject
      subject = Subject.new(attr)
      subject.save
    else
      subject.update_attributes attr
    end
  end
end
[
  {id: 1,lesson_name: 'T1-T5', start: "12:30", end: "17:00"},
  {id: 2,lesson_name: 'T2-T5', start:"13:25", end: "17:00"},
  {id: 3,lesson_name: 'T1-T4', start: "12:30", end: "16:00"},
].each do |attr|
  lesson = Lesson.find_by(id: attr[:id])
  Lesson.transaction do
    unless lesson
      lesson = Lesson.new(attr)
      lesson.save
    else
      lesson.update_attributes attr
    end
  end
end

[
  {id: 1, email:"linh.nguyen@rikai.technology", password: "password", admin: 1},
  {id: 2, email:"long.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 3, email:"quang.nguyen@rikai.technology", password: "password", admin: 3},
].each do |attr|
  user = User.find_by(id: attr[:id])
  User.transaction do
    unless user
      user = User.new(attr)
      user.save
    else
      user.update_attributes attr
    end
  end
end


[
  {id: 1,person_name: 'Nguyen Quang Linh',department_id: Department.first.id, user_id: User.first.id},
  {id: 2,person_name: 'Hua Minh Long',department_id: Department.second.id, user_id: User.second.id},
  {id: 3,person_name: 'Nguyen Van Quang',department_id: Department.third.id, user_id: User.third.id},
].each do |attr|
  people = People.find_by(id: attr[:id])
  People.transaction do
    unless people
      people = People.new(attr)
      people.save
    else
      people.update_attributes attr
    end
  end
end
[
  {id: 1,subject_id: 1, lesson_id: 1, people_id: People.first.id, start: "23-12-2019", end: "23-2-2019", code: "12461", total: 60, room_id: Room.first.id},
  {id: 2,subject_id: 2, lesson_id: 2, people_id: People.second.id, start: "25-12-2019", end: "25-2-2019", code: "44549", total: 60, room_id: Room.second.id},
  {id: 3,subject_id: 3, lesson_id: 3, people_id: People.third.id, start: "30-12-2019", end: "23-2-2019", code: "41356", total: 60, room_id: Room.third.id},
].each do |attr|
  course = Course.find_by(id: attr[:id])
  Course.transaction do
    unless course
      course = Course.new(attr)
      course.save
    else
      course.update_attributes attr
    end
  end
end
