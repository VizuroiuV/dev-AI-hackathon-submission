{
	"properties": {
		"devices": {
			"enum": [
				"refrigerator",
				"washing_machine",
				"television",
				"microwave_oven",
				"computer",
				"light_bulbs",
				"air_conditioning",
				"electric_stove"
			],
			"type": "array",
			"buildship": {
				"options": [
					{
						"value": "refrigerator",
						"label": "Refrigerator"
					},
					{
						"label": "Washing Machine",
						"value": "washing_machine"
					},
					{
						"label": "Television",
						"value": "television"
					},
					{
						"value": "microwave_oven",
						"label": "Microwave Oven"
					},
					{
						"label": "Computer",
						"value": "computer"
					},
					{
						"label": "Light Bulbs",
						"value": "light_bulbs"
					},
					{
						"value": "air_conditioning",
						"label": "Air Conditioning"
					},
					{
						"label": "Electric Stove",
						"value": "electric_stove"
					}
				],
				"index": 0
			},
			"description": "Select the devices in the house",
			"items": {
				"enum": [
					"refrigerator",
					"washing_machine",
					"television",
					"microwave_oven",
					"computer",
					"light_bulbs",
					"air_conditioning",
					"electric_stove"
				]
			},
			"title": "Devices"
		}
	},
	"required": [
		"devices"
	],
	"type": "object"
}