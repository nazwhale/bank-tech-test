class Statement

  attr_reader :history

  def initialize
    @history = []
  end

  def add_action(action)
    history << action
  end
end
