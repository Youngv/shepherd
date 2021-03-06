class Email
  def initialize
    @lines = []
  end

  def read_email_content(filename)
    #File.open(filename).each { |line| puts line }
    @lines = File.readlines(filename)
  end

  def check_the_content
    if @lines[0].include?("TO")
      check_the_address(@lines[0])
      if @lines[1].include?("BCC")
        check_the_address(@lines[1])
      end
    elsif @lines[0].include?("BCC")
      puts "This is a warning of no TO"
      check_the_address(@lines[0])
    else
      puts "This is exception of no TO and BCC"
    end
  end

  def check_the_address(address)
    email_regex = %r{([0-9a-z]?[0-9a-z.+]+[0-9a-z]?)@((?:[-a-z0-9]+\.)+[a-z]{2,})}xi
    unless address =~ email_regex
        puts "This is a warning of invalid email address in #{address}"
    end
  end
end
email = Email.new
email.read_email_content("email_content")
email.check_the_content