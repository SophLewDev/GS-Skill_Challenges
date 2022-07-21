class GrammarStats
  def initialize
    @pass = 0
    @fail = 0
  end

  def check(text)
    if text.match?(/^[A-Z].*\W$/)
      @pass += 1
      true
    else
      @fail += 1
      false
    end
  end

  def percentage_good
    total = @pass + @fail
    @pass / total.to_f * 100
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end