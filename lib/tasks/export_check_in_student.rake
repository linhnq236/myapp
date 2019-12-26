require 'csv'
require 'pathname'
task :export_check_in_student, [:path] do |key, value|
  p = Pathname.new(value[:path])
  path = p.dirname
  filename = p.basename
  if Dir["#{path}"].empty?
    Dir.mkdir path
  end
  CSV.open("#{path}/#{filename}","w") do |csv|
    csv << ["HO vs Ten", "Code"]
    @export_students_date_courses = Course.all
    @export_students_date_courses.each do |export_students_date_course|
      csv << [t.id]
    end
  end
end
