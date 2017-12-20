path "secret/*" {
    capabilities = [
	"list",
	"read"
    ]
}

path "secret/devs/*" {
    capabilities = [
	"create",
	"delete",
	"list",
	"read",
	"update"
    ]
}
