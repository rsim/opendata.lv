require "rubygems"

require "mechanize"
require "fastercsv"

class Donation
  SEARCH_URL = "http://www.knab.gov.lv/lv/finances/db/donations/?"
  HEADING = ["Partija", "Veids", "Valūta", "Summa", "Dāvinātājs", "Datums"]

  def self.get_all_in_page(page)
    url = SEARCH_URL + "page=#{page}"

    agent = Mechanize.new
    result = []
    agent.get(url) do |page|
      if page.code.to_i == 200
        page.search(:css, "#part-db-list tbody tr").each do |tr|
          party, donation_type, amount_string, donator, date = tr.css("td").map{|td| td.text}
          donator.gsub! /\s+/, ' '
          donator.gsub! /^\s|\s$/, ''
          donator.gsub! /\s*\(/, ' ('
          currency, amount = amount_string.split(/\s+/)
          result << [
            party, donation_type, currency, amount, donator, date
          ]
        end
      end
    end
    result
  end

  MAX_PAGE = 1000

  def self.get_all
    page = 1
    result = [HEADING]
    while page <= MAX_PAGE && (page_result = get_all_in_page(page)).length > 0
      result.concat page_result
      page += 1
    end
    result
  end

  def self.get_all_csv
    get_all.map{|line| line.to_csv}.join("")
  end
end

puts Donation.get_all_csv
