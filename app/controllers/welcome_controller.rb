class WelcomeController<ApplicationController
  def home
    @quotes_array=["\"Failure is not an option. Everyone has to Succeed\"",
      "\"Your time is limited so don't waste it living someone elses life\"",
      "\"Better ingredients, better pizza\"",]

    @quote_authors=["Arnold Schwarzenegger","Steve Jobs","Papa Johns"]
  end

  def about

  end

  def terms

  end

end
