class OutputSpy
  def initialize
    @written_output = []
  end

  def all_output
    @written_output.join("\n")
  end

  def puts value
    @written_output << value
  end
end
