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


def price_sorter(data)
	keys = data.keys
	keys.each do |key|
		data[key]

	end
end

p price_sorter(data)