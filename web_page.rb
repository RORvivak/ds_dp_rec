class WebPageTraffic

	def initialize
		@pages = {}
		@queries = {}
		@query_value_mapper = {}
		@rank = {}
	end

	def page_info(info)
		page_data = {}
		single_page_data = info.split(" ").uniq
    page_identifier = "P" + (@pages.length + 1).to_s
    
    single_page_data.each_with_index  do |e,i| 
    	page_data[e.upcase] = (8 - i)
    	@query_value_mapper[e.upcase] = @query_value_mapper[e.upcase].nil? ? [page_identifier] : @query_value_mapper[e.upcase].push(page_identifier).uniq
    end	
    @pages[page_identifier] = page_data
	end

	def query_info(info)
		query_data = {}
		single_page_data = info.split(" ").uniq
		query_identifier = "Q" + (@queries.length + 1).to_s

    single_page_data.each_with_index{|e,i| query_data[e.upcase] = (8 - i)}
    @queries[query_identifier] = query_data
  end

  def rank_calculation
  	@queries.each do |key, values|
  		@rank[key] = {}
  		values.each do |k,v|

  			if !@query_value_mapper[k].nil?
        	@query_value_mapper[k].each do |page|
        		key_value = @pages[page][k]&.*v
         	  key_value = 0 if key_value.nil?
          	@rank[key][page] = key_value + ((@rank[key][page]).nil? ? 0 : @rank[key][page])
        	end  
        end	
  		end	
    end
    dispay_as_per_the_rank
  end  

  private

	  def dispay_as_per_the_rank
	  	@rank.each do |k,v|
	   		pages = v.sort_by{|_k,v1| -v1}.to_h.keys[0..4].join(" ")
	   		puts k + ":" + " " + pages
	   	end
	  end	

end

wbt = WebPageTraffic.new
puts "Enter p and q followed by the keywords for adding the page and query respectively. Press any other letter for the output."
method_selector = {"P" => "page_info", "Q" => "query_info"}
method_selector.default = "rank_calculation"

loop do
	input_item = gets.chomp
	return if input_item[0].nil?
	length = input_item.length
	method_value = method_selector[input_item[0].upcase]
	
	if method_value ==  "rank_calculation"
		wbt.rank_calculation
	else	
		wbt.send(method_value, input_item[2...length])
	end	
end
