module mysite

import (
	net.http
	encoding.base64
)

struct MySite {
mut:
	auth string
}

pub fn connect(url string, user, password string) ?MySite {
	mut site := MySite{}
	site.auth = base64.encode(user + ':' + password)
	return site
}

pub fn req(site &MySite, url string) ?http.Response {
	rsp := http.fetch(url, {
		method: 'GET'
		headers: {
			'Authorization': 'Basic ' + site.auth
		}
	})
	return rsp
}
