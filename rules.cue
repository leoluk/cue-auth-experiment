package auth

import (
	"list"
)

output: #Output & {
	allow: user_is_admin || list.Contains([ for k in output.user_is_granted {
		(input.action == k.action) && (input.type == k.type)
	}], true)

	user_is_admin: list.Contains(data.user_roles[input.user], "admin")

	user_is_granted: list.FlattenN([
				for role in data.user_roles[input.user] {
			data.role_grants[role]
		}], 1)
}
