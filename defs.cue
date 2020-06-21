package auth

#Grant: {
	action: "read" | "adopt" | "update"
	type:   string
}

#Output: {
	allow:         bool
	user_is_admin: bool
	user_is_granted: [...#Grant]
}
