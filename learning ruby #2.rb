$studentDatabase = Hash.new

def StudentExists(studentId)
  if studentDatabase[:studentId] == nil then
    return false
  end

  return true
end

def CreateStudent(name, studentId, dateOfBirth, grades)
  # check if we're missing something.
  if not name or not studentId or not dateOfBirth or not grades then
    puts "One or more parameters are missing!"
    return
  end

  # check if student already exists

  if StudentExists(studentId) then
    puts "This student already exists in the student database!"
    return
  end

  studentDatabase[studentId] = {
    "name" => name,
    "birthdate" => dateOfBirth,
    "student_id" => studentId,
    "grades" => grades
  }

  puts "Created new student!"
end

def GetStudentGrades(studentid, selectClass)
  if not StudentExists(studentid) then
    puts "Specified student does not exist!"
    return
  end

  grades = studentDatabase[studentid].grades

  if not selectClass then
    return grades
  end

  if grades[selectClass] then
    return grades[selectClass]
  end

  return nil
end

### main codeeee

# create myself!

CreateStudent("hello", 2406, "25 December 2007", {
  :maths => 100,
  :physics => 100,
  :turkish => 61,
  :history => 57,
  :chemistry => 91,
  :biology => 94,
  :religious_studies => "EXEMPT"
})

puts GetStudentGrades(2406, "maths")
