results = PgSearch.multisearch('superman')

results.each do |result|
  puts result.searchable
end
