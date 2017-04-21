# frozen_string_literal: true

# Define a Person class
class Person
  attr_reader :status

  # defines Person class with a @status of nill
  def initialize
    @status = nil
  end

  # allow you to define status
  def status=(new_status)
    @status = new_status

    # will show the new value of status
    # Side Effect of changing a Person's status is to say it
    %x(`say "Status changed to #{status}"`)
    puts "Status changed to #{status}"
  end

  def log_in
    self.status = 'online'
  end

  def log_out
    # Problem:
    # Will not call the setter method to and notify -- nor say --
    # that the status
    # has changed!
    @status = 'offline'
  end
end
