Before do |scenario|
  start_test_server_in_background
end

After do |scenario|

  	time = Time.new

	day = time.day
	month = time.month
	year = time.year

	Dir.mkdir('report') unless Dir.exist?('report')

	sufix = ('error' if scenario.failed?) || 'sucess'
	name = scenario.name.tr(' ','_').downcase

	screenshot_embed(:name => "./report/#{sufix}_#{name}_#{day}-#{month}-#{year}")
    shutdown_test_server

end