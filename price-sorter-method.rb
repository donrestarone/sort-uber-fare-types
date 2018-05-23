data = {
    "uber": [
        {
            "type": "uberXL",
            "distance": 17.32,
            "fare": 74,
            "currency": "CAD",
            "duration": 2400
        },
        {
            "type": "UberSELECT",
            "distance": 17.32,
            "fare": 81,
            "currency": "CAD",
            "duration": 2400
        },
        {
            "type": "POOL",
            "distance": 17.32,
            "fare": 27,
            "currency": "CAD",
            "duration": 2400
        },
        {
            "type": "UberBLACK",
            "distance": 17.32,
            "fare": 103,
            "currency": "CAD",
            "duration": 2400
        },
        {
            "type": "UberSUV",
            "distance": 17.32,
            "fare": 117,
            "currency": "CAD",
            "duration": 2400
        },
        {
            "type": "uberX",
            "distance": 17.32,
            "fare": 39,
            "currency": "CAD",
            "duration": 2400
        },
        {
            "type": "uberASSIST",
            "distance": 17.32,
            "fare": 39,
            "currency": "CAD",
            "duration": 2400
        },
        {
            "type": "uberWAV",
            "distance": 17.32,
            "fare": 39,
            "currency": "CAD",
            "duration": 2400
        },
        {
            "type": "TAXI",
            "distance": 17.32,
            "currency": nil,
            "duration": 2400
        }
    ],
    "lyft": [
        {
            "type": "Lyft Line",
            "distance": 17.69,
            "fare": 27,
            "currency": "CAD",
            "duration": 2462
        },
        {
            "type": "Lyft",
            "distance": 17.69,
            "fare": 39,
            "currency": "CAD",
            "duration": 2462
        },
        {
            "type": "Lyft Plus",
            "distance": 17.69,
            "fare": 73,
            "currency": "CAD",
            "duration": 2462
        },
        {
            "type": "Lyft Premier",
            "distance": 17.69,
            "fare": 81,
            "currency": "CAD",
            "duration": 2462
        },
        {
            "type": "Lyft Lux",
            "distance": 17.69,
            "fare": 119,
            "currency": "CAD",
            "duration": 2462
        },
        {
            "type": "Lyft Lux SUV",
            "distance": 17.69,
            "fare": 134,
            "currency": "CAD",
            "duration": 2462
        }
    ]
}

def sort_uber_prices(uber_data)
	uber_prices = Array.new
	uber_data.each do |fare|
		if fare[:fare] != nil
			uber_prices.push(fare[:fare])
		end
	end	
	return uber_prices.sort{|x,y| x <=> y}
end

def sort_lyft_prices(lyft_data) 
	lyft_prices = Array.new
	lyft_data.each do |fare|
		if fare[:fare] != nil
			lyft_prices.push(fare[:fare])
		end
	end
	return lyft_prices.sort{|x,y| x <=> y}
end

def uber_lyft_data_sorter(data)
	uber_prices = sort_uber_prices(data[:uber])

	lyft_prices = sort_lyft_prices(data[:lyft])

	sorted_data = Hash.new
	
	uber = Array.new
	lyft = Array.new

	uber_prices.each do |price|
		data[:uber].each do |fare|
			if fare[:type] == "POOL"
				fare[:type] = "UberPool"
			end
			if fare[:fare] == price
				
				ride = Hash.new
				ride[:type] = fare[:type]
				ride[:price] = fare[:fare]
				ride[:distance] = fare[:distance]
				ride[:currency] = fare[:currency]
				ride[:duration] = fare[:duration]

				uber.push(ride)
			end
		end
	end
	uber = return_uber_data(uber)

	lyft_prices.each do |price|
		data[:lyft].each do |fare|
			if fare[:fare] == price
				ride = Hash.new
				ride[:type] = fare[:type]
				ride[:price] = fare[:fare]
				ride[:distance] = fare[:distance]
				ride[:currency] = fare[:currency]
				ride[:duration] = fare[:duration]

				lyft.push(ride)
			end
		end
	end
	lyft = return_lyft_data(lyft)
	sorted_data = Hash.new
	sorted_data[:uber] = uber
	sorted_data[:lyft] = lyft
	
	return sorted_data

end


def return_uber_data(sorted_uber_data)
	return sorted_uber_data.uniq
end

def return_lyft_data(sorted_lyft_data)
	return sorted_lyft_data.uniq
end




sorted_data = uber_lyft_data_sorter(data)
p sorted_data.keys
p sorted_data

