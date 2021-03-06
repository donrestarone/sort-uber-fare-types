
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





uber_fare_types = [] # sorted arrays of options
#p data[:uber].class

data[:uber].each do |fare|
  #p fare
  uber_fares = Hash.new
  uber_fares[:type] = fare[:type]
  uber_fares[:fare] = fare[:fare]
  #p uber_fares
  uber_fare_types.push(uber_fares)
  #fares["type"] = fare["type"]

end
#p fares[:type]
fare_prices = []
uber_fare_types.each do |fare|
    if fare[:fare] != nil
        fare_prices.push(fare[:fare])
    end
end
fare_prices = fare_prices.sort{|x,y| x <=> y}


sorted_prices_ridetypes_uber = []

##sort the prices with their matching type and replace "POOL" with "UberPool"
fare_prices.each do |price|
    data[:uber].each do |fare|
        
        if fare[:fare] == price
            if fare[:type] == "POOL"
                fare[:type] = "UberPool"
            end
            
            ride = Hash.new
            ride[:type] = fare[:type]
            ride[:price] = fare[:fare]
            ride[:distance] = fare[:distance]
            ride[:currency] = fare[:currency]
            ride[:duration] = fare[:duration] 
            
            
            #sorted_prices_ridetypes_uber.push(ride)
            sorted_prices_ridetypes_uber.push(ride)
        end
    end 

end 

uber = Hash.new
uber_fares = Array.new

sorted_prices_ridetypes_uber.each do |fare|
    #uber[:uber] = uber_fares
    uber_fares.push(fare)

end

p uber_fares

#puts sorted_prices_ridetypes_uber
sorted_uber_lyft = {}
##iterate through lyft
data[:lyft].each do |fare|
    
end


p data[:uber].count
p data[:lyft].count



