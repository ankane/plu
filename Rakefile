require "bundler/gem_tasks"
require "rake/testtask"

task default: :test
Rake::TestTask.new do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
end

task :update, [:file] do |t, args|
  require "csv"
  require "json"

  codes = {}
  CSV.foreach(args.file, headers: true) do |row|
    size = row["SIZE"].strip =~ /all.+sizes/i ? nil : row["SIZE"]
    name = [size, row["VARIETY"], row["COMMODITY"].capitalize].join(" ")
    name = name.gsub(/\s+/, " ").strip
    codes[row["PLU"].to_i] = name
  end

  codes.merge!(
    3281 => "Orange Seedless Watermelon",
    3283 => "Honeycrisp Apples",
    3308 => "Watermelon",
    3421 => "Mini Seedless Watermelon",
    4011 => "Bananas",
    4031 => "Seeded Watermelon",
    4032 => "Seedless Watermelon",
    4088 => "Red Bell Peppers",
    4234 => "Nino Bananas",
    4331 => "Mickey Lee/Sugar Baby Watermelon",
    4340 => "Yellow Seeded Watermelon",
    4341 => "Yellow Seedless Watermelon"
  )

  File.write("plu_codes.json", JSON.pretty_generate(codes))
end
