# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {id: 1,department_name: 'Công nghệ thông tin'},
  {id: 2,department_name: 'Hành chính'},
  {id: 3,department_name: 'Quản trị kinh doanh'},
  {id: 4,department_name: 'Kinh tế'},
  {id: 5,department_name: 'Quản lý nhân sự'},
  {id: 6,department_name: 'Hành chính'},
  {id: 7,department_name: 'Kế toán'},
  {id: 8,department_name: 'Kế hoạch'},
  {id: 9,department_name: 'Tư vấn'},
  {id: 10,department_name: 'NS'},
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
  {id: 1,room_name: 'H01', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 2,room_name: 'H02', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 3,room_name: 'H03', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 4,room_name: 'H04', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 5,room_name: 'H05', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 6,room_name: 'H06', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 7,room_name: 'H07', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 8,room_name: 'H08', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 9,room_name: 'H09', lat: 10.863411200000002,lon: 106.73356799999999},
 {id: 10,room_name: 'H10', lat: 10.863411200000002,lon: 106.73356799999999},
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
  {id: 1,subject_name: 'Tiếng Anh'},
  {id: 2,subject_name: 'Toán'},
  {id: 3,subject_name: 'Vật lý'},
  {id: 4,subject_name: 'Lịch sử'},
  {id: 5,subject_name: 'Tin học'},
  {id: 6,subject_name: 'Văn'},
  {id: 7,subject_name: 'Công nghệ'},
  {id: 8,subject_name: 'Địa lý'},
  {id: 9,subject_name: 'Sinh học'},
  {id: 10,subject_name: 'Hóa học'},
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
  {id: 1,lesson_name: 'T1->T5', start: "12:30", end: "17:00"},
  {id: 2,lesson_name: 'T2->T5', start:"13:25", end: "17:00"},
  {id: 3,lesson_name: 'T1->T3', start: "12:30", end: "15:10"},
  {id: 4,lesson_name: 'T2->T4', start: "13:25", end: "16:00"},
  {id: 5,lesson_name: 'T1->T2', start: "12:30", end: "14:10"},
  {id: 6,lesson_name: 'T3->T4', start: "15:10", end: "16:00"},
  {id: 7,lesson_name: 'T4->T5', start: "16:00", end: "17:00"},
  {id: 8,lesson_name: 'T2->T3', start: "14:10", end: "15:10"},
  {id: 9,lesson_name: 'T1->T4', start: "12:30", end: "16:00"},
  {id: 10,lesson_name: 'T3->T5', start: "15:10", end: "17:00"},
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
  {id: 1, email:"admin@rikai.technology", password: "password", admin: 1},
  {id: 2, email:"teacher@rikai.technology", password: "password", admin: 2},
  {id: 3, email:"student@rikai.technology", password: "password", admin: 3},
  {id: 4, email:"lam.dao@rikai.technology", password: "password", admin: 2},
  {id: 5, email:"lien.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 6, email:"loc.le@rikai.technology", password: "password", admin: 2},
  {id: 7, email:"ly.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 8, email:"chien.pham@rikai.technology", password: "password", admin: 2},
  {id: 9, email:"cuong.tran@rikai.technology", password: "password", admin: 2},
  {id: 10, email:"danh.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 11, email:"duy.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 12, email:"duc.phan@rikai.technology", password: "password", admin: 2},
  {id: 13, email:"huy.tran@rikai.technology", password: "password", admin: 2},
  {id: 14, email:"hong.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 15, email:"huong.pham@rikai.technology", password: "password", admin: 2},
  {id: 16, email:"ha.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 17, email:"hien.tran@rikai.technology", password: "password", admin: 2},
  {id: 18, email:"hau.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 19, email:"hieu.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 20, email:"hanh.dao@rikai.technology", password: "password", admin: 2},
  {id: 21, email:"ho.dinh@rikai.technology", password: "password", admin: 2},
  {id: 22, email:"kha.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 23, email:"khang.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 24, email:"khanh.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 25, email:"minh.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 26, email:"tuan.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 27, email:"tien.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 28, email:"tin.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 29, email:"tam.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 30, email:"vu.nguyen@rikai.technology", password: "password", admin: 2},
  {id: 31, email:"quang.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 32, email:"quang.duc@rikai.technology", password: "password", admin: 3},
  {id: 33, email:"quang.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 34, email:"quan.le@rikai.technology", password: "password", admin: 3},
  {id: 35, email:"son.le@rikai.technology", password: "password", admin: 3},
  {id: 36, email:"sang.dinh@rikai.technology", password: "password", admin: 3},
  {id: 37, email:"tan.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 38, email:"tien.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 39, email:"tri.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 40, email:"trung.ly@rikai.technology", password: "password", admin: 3},
  {id: 41, email:"truyen.tien@rikai.technology", password: "password", admin: 3},
  {id: 42, email:"trieu.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 43, email:"tra.ly@rikai.technology", password: "password", admin: 3},
  {id: 44, email:"thi.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 45, email:"thuc.ba@rikai.technology", password: "password", admin: 3},
  {id: 46, email:"thong.tran@rikai.technology", password: "password", admin: 3},
  {id: 47, email:"thong.ly@rikai.technology", password: "password", admin: 3},
  {id: 48, email:"thong.le@rikai.technology", password: "password", admin: 3},
  {id: 49, email:"quang.bui@rikai.technology", password: "password", admin: 3},
  {id: 50, email:"quang.dinh@rikai.technology", password: "password", admin: 3},
  {id: 51, email:"quang.le@rikai.technology", password: "password", admin: 3},
  {id: 52, email:"quang.tran@rikai.technology", password: "password", admin: 3},
  {id: 53, email:"quang.trinh@rikai.technology", password: "password", admin: 3},
  {id: 54, email:"quang.dao@rikai.technology", password: "password", admin: 3},
  {id: 55, email:"quang.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 56, email:"quang.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 57, email:"thuc.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 58, email:"thuc.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 59, email:"thien.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 60, email:"thien.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 61, email:"thien.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 62, email:"thien.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 63, email:"vu.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 64, email:"vu.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 65, email:"vu.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 66, email:"vu.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 67, email:"vuong.ly@rikai.technology", password: "password", admin: 3},
  {id: 68, email:"vuong.tran@rikai.technology", password: "password", admin: 3},
  {id: 69, email:"vuong.le@rikai.technology", password: "password", admin: 3},
  {id: 70, email:"vuong.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 71, email:"vuong.duc@rikai.technology", password: "password", admin: 3},
  {id: 72, email:"vuong.quoc@rikai.technology", password: "password", admin: 3},
  {id: 73, email:"vuong.trieu@rikai.technology", password: "password", admin: 3},
  {id: 74, email:"tung.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 75, email:"tung.quang@rikai.technology", password: "password", admin: 3},
  {id: 76, email:"tung.tran@rikai.technology", password: "password", admin: 3},
  {id: 77, email:"tung.ly@rikai.technology", password: "password", admin: 3},
  {id: 78, email:"tung.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 79, email:"tung.nguyen@rikai.technology", password: "password", admin: 3},
  {id: 80, email:"tung.nguyen@rikai.technology", password: "password", admin: 3},
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
  {id: 1,person_name: 'Nguyễn Quang Lĩnh',department_id: Department.first.id, user_id: User.first.id, code: 1651120032, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 2,person_name: 'Hứa Minh Long',department_id: 1, user_id: User.second.id, code: 1651120033, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 3,person_name: 'Trần Thị Lan',department_id: 2, user_id: 3, code: 1651120034, sex: 1, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 4,person_name: 'Đào Bá Lâm',department_id: 5, user_id: 4, code: 1651120035, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 5,person_name: 'Nguyễn Kim Liên',department_id: 4, user_id: 5, code: 1651120036, sex: 1, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 6,person_name: 'Lê Đức Lộc',department_id: 6, user_id: 6, code: 1651120037, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 7,person_name: 'Nguyễn Trúc Ly',department_id: 9, user_id: 7, code: 1651120038, sex: 1, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 8,person_name: 'Phạm Minh Chiến',department_id: 10, user_id: 8, code: 1651120039, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 9,person_name: 'Trần Minh Cường',department_id: 8, user_id: 9, code: 1651120132, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 10,person_name: 'Nguyễn Văn Danh',department_id: 8, user_id: 10, code: 1651120232, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 11,person_name: 'Nguyễn Đức Duy',department_id: 3, user_id: 11, code: 1651120332, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 12,person_name: 'Phan Văn Đức',department_id: 5, user_id: 12, code: 1651120432, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 13,person_name: 'Trần Đức Huy',department_id: 1, user_id: 13, code: 1651120532, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 14,person_name: 'Nguyễn Thị Hồng',department_id: 2, user_id: 14, code: 1651120632, sex: 1, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 15,person_name: 'Phạm Hương',department_id: 7, user_id: 15, code: 1651120732, sex: 1, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 16,person_name: 'Nguyễn Hà',department_id: 8, user_id: 16, code: 1651120832, sex: 1, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 17,person_name: 'Trần Hiền',department_id: 10, user_id: 17, code: 1651120932, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 18,person_name: 'Nguyễn Hậu',department_id: 2, user_id: 18, code: 1651120012, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 19,person_name: 'Nguyễn Hiếu',department_id: 1, user_id: 19, code: 1651120022, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 20,person_name: 'Đào Hạnh',department_id: 4, user_id: 20, code: 1651120042, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 21,person_name: 'Đinh Hồ',department_id: 3, user_id: 21, code: 1651120052, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 22,person_name: 'Nguyễn Kha',department_id: 6, user_id: 22, code: 165112062, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 23,person_name: 'Nguyễn Khang',department_id: 8, user_id: 23, code: 165112072, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 24,person_name: 'Nguyễn Khánh',department_id: 7, user_id: 24, code: 1651120082, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 25,person_name: 'Nguyễn Minh',department_id: 10, user_id: 25, code: 1651120092, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 26,person_name: 'Nguyễn Tuân',department_id: 1, user_id: 26, code: 1651120012, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 27,person_name: 'Nguyễn Tiền',department_id: 6, user_id: 27, code: 1651120013, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 28,person_name: 'Nguyễn Tín',department_id: 9, user_id: 28, code: 1651120014, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 29,person_name: 'Nguyễn Tâm',department_id: 1, user_id: 29, code: 1651120015, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 30,person_name: 'Nguyên Vũ',department_id: 10, user_id: 30, code: 1651120016, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 31,person_name: 'Nguyễn Văn Quang',department_id: 1, user_id: 31, code: 1651120017, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 32,person_name: 'Nguyễn Đức Quang',department_id: 1, user_id: 32, code: 1651120018, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 33,person_name: 'Nguyễn Đình Quang',department_id: 2, user_id: 33, code: 1651120019, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 34,person_name: 'Lê Quân',department_id: 6, user_id: 34, code: 1651120021, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 35,person_name: 'Lê Sơn',department_id: 6, user_id: 35, code: 1651120022, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 36,person_name: 'Đình Sang',department_id: 5, user_id: 36, code: 1651120041, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 37,person_name: 'Nguyễn Tấn',department_id: 5, user_id: 37, code: 1651120042, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 38,person_name: 'Nguyễn Tiến',department_id: 4, user_id: 38, code: 1651120043, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 39,person_name: 'Nguyễn Trí',department_id: 4, user_id: 39, code: 1651120044, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 40,person_name: 'Lý Trung',department_id: 3, user_id: 40, code: 1651120045, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 41,person_name: 'Tiền Truyện',department_id: 3, user_id: 41, code: 1651120046, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 42,person_name: 'Nguyễn Triều',department_id: 10, user_id: 42, code: 1651120047, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 43,person_name: 'Lý Tra',department_id: 10, user_id: 43, code: 1651120048, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 44,person_name: 'Nguyễn Thi',department_id: 9, user_id: 44, code: 1651120049, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 45,person_name: 'Bá Thức',department_id: 9, user_id: 45, code: 1651120071, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 46,person_name: 'Trần Thông',department_id: 9, user_id: 46, code: 1651120072, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 47,person_name: 'Lý Thông',department_id: 7, user_id: 47, code: 1651120073, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 48,person_name: 'Lê Thông',department_id: 7, user_id: 48, code: 1651120074, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 49,person_name: 'Bùi Quang',department_id: 8, user_id: 49, code: 1651120075, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 50,person_name: 'Đình Quang',department_id: 8, user_id: 50, code: 1651120076, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 51,person_name: 'Lê Quang',department_id: 6, user_id: 51, code: 1651120077, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 52,person_name: 'Trần Quang',department_id: 6, user_id: 52, code: 1651120078, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 53,person_name: 'Trịnh Quang',department_id: 3, user_id: 53, code: 1651120079, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 54,person_name: 'Đào Văn Quang',department_id: 3, user_id: 54, code: 1651120080, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 55,person_name: 'Nguyễn Tấn Quang',department_id: 1, user_id: 55, code: 1651120081, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 56,person_name: 'Nguyễn Trần Quang',department_id: 1, user_id: 56, code: 1651120082, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 57,person_name: 'Nguyễn Quang Thức',department_id: 8, user_id: 57, code: 1651120083, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 58,person_name: 'Nguyễn Thức',department_id: 7, user_id: 58, code: 1651120084, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 59,person_name: 'Nguyễn Văn Thiên',department_id: 9, user_id: 59, code: 1651120085, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 60,person_name: 'Nguyễn Thiên',department_id: 2, user_id: 60, code: 1651120086, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 61,person_name: 'Nguyễn Văn Thiện',department_id: 1, user_id: 61, code: 1651120087, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 62,person_name: 'Nguyễn Đức Thiện',department_id: 10, user_id: 62, code: 1651120088, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 63,person_name: 'Nguyên Vũ',department_id: 9, user_id: 63, code: 1651120089, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 64,person_name: 'Nguyễn Đình Vũ',department_id: 4, user_id: 64, code: 1651120090, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 65,person_name: 'Nguyễn Thành Vũ',department_id: 2, user_id: 65, code: 1651120091, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 66,person_name: 'Nguyễn Vũ',department_id: 5, user_id: 66, code: 1651120092, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 67,person_name: 'Lý Vương',department_id: 1, user_id: 67, code: 1651120093, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 68,person_name: 'Trần Vương',department_id: 8, user_id: 68, code: 1651120094, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 69,person_name: 'Lê Vương',department_id: 1, user_id: 69, code: 1651120095, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 70,person_name: 'Nguyễn Vương',department_id: 4, user_id: 70, code: 1651120096, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 71,person_name: 'Đức Vương',department_id: 3, user_id: 71, code: 1651120097, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 72,person_name: 'Quốc Vương',department_id: 6, user_id: 72, code: 1651120098, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 73,person_name: 'Triệu Vương',department_id: 9, user_id: 73, code: 1651120099, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 74,person_name: 'Nguyễn Tùng',department_id: 10, user_id: 74, code: 1651120100, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 75,person_name: 'Quang Tùng',department_id: 3, user_id: 75, code: 1651120101, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 76,person_name: 'Trần Văn Tùng',department_id: 6, user_id: 76, code: 1651120102, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 77,person_name: 'Lý Tùng',department_id: 8, user_id: 77, code: 1651120103, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 78,person_name: 'Nguyễn Đình Tùng',department_id: 1, user_id: 78, code: 1651120104, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 79,person_name: 'Nguyễn Hoàng Tùng',department_id: 9, user_id: 79, code: 1651120105, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
  {id: 80,person_name: 'Nguyễn Văn Tùng',department_id: 10, user_id: 80, code: 1651120106, sex: 0, born: "15-5-1998", address: "Hồ Chí Minh", telephone: "01213134902"},
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
