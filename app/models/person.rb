class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :company_name, :email

  has_many :notes

  def self.merge(winner, loser)
    duplicates = nil
    if winner.email == nil || winner.email = ""
      winner.email << loser.email
    end
    winner.notes << loser.notes
    loser.delete
    winner
  end

  def duplicates?(person)
    if person == nil
      return false
    end
      if self.first_name != person.first_name
        return false
      elsif self.last_name != person.last_name
        return false
      elsif self.email != person.email
        return false
      else
        return true
      end
  end
end