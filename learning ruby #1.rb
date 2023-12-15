class User
  @password = nil
  @username = nil
  @@version = 1

  def initialize(selectUsername, selectPassword)
    @password = selectPassword
    @username = selectUsername
    puts "Initialized user!"
  end

  def credsCheck(password)
    if password == @password then
      return true
    end

    return false
  end
end

# Main code here

me = User.new("arthur", "25/12/2008")

def CheckCredentials(user, password)
  if user.credsCheck(password) == true then
    puts "Password is correct!"
    return
  end

  puts "Password is incorrect!"
  return
end

CheckCredentials(me, "25/12/2008")
