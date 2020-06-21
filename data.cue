package auth

data: {
	{
		"user_roles": {
			"alice": [
				"admin",
			]
			"bob": [
				"employee",
				"billing",
			]
			"eve": [
				"customer",
			]
		}
		"role_grants": {
			"customer": [
				{
					"action": "read"
					"type":   "dog"
				},
				{
					"action": "read"
					"type":   "cat"
				},
				{
					"action": "adopt"
					"type":   "dog"
				},
				{
					"action": "adopt"
					"type":   "cat"
				},
			]
			"employee": [
				{
					"action": "read"
					"type":   "dog"
				},
				{
					"action": "read"
					"type":   "cat"
				},
				{
					"action": "update"
					"type":   "dog"
				},
				{
					"action": "update"
					"type":   "cat"
				},
			]
			"billing": [
				{
					"action": "read"
					"type":   "finance"
				},
				{
					"action": "update"
					"type":   "finance"
				},
			]
		}
	}
}
