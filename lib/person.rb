class Person
  attr_reader :name,
              :age,
              :intensity_max

  def initialize(details)
    @name          = details["name"]
    @age           = details["age"]
    @intensity_max = details["intensity_max"]
  end

  def adult?
    if @age >= 18
      true
    else
      false
    end
  end


  def pep_talk
    @intensity_max += 1
  end
end
