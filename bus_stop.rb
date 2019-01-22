class BusStop

  attr_reader :que

  def initialize
    @que = []
  end

  def add_person_to_que(person)
    @que.push(person)
  end



end
