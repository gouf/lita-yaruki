module Yaruki
  def self.ga(user_name, hide_url: true)
    result = ::ShindanScrape.new(347_730, user_name).shindan

    if hide_url
      cutoff_last_url(result)
    else
      result
    end
  end

  def self.cutoff_last_url(result)
    result.lines.first(result.lines.size - 1).join
  end
end
