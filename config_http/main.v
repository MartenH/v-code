
module main

import ( 
	net.http
	encoding.base64
	net.urllib
	mysite
	os
	filepath
	json
)


struct Config {
	user       	string
	password  	string
	url      	string
}

pub fn (u Config) str() string {
	return  'user:     $u.user\n' + 
			'password: $u.password\n' + 
			'url:      $u.url\n'
}

fn read_config() Config {
	mut home_path := ''

	home_path = os.getenv('HOME')

	/*
	if os.getenv('GITHUB_WORKSPACE') == '' {
		home_path = os.getenv('HOME')
	} else {
		home_path = os.getenv('GITHUB_WORKSPACE')
	}
	*/
	
	sfile := filepath.join(home_path,".config/martenh/test.json")
	spath := filepath.basedir(sfile)

	/* Check if there is a config file */
	if !os.exists(sfile) {
		/* Nope, create one */

		if !os.exists(spath) {
			println("$spath does not exist, creating it")

			os.mkdir(spath) or {
				println("os.mkdir() failed on $spath")
				panic(err)
			}
		}			

		println("Creating $sfile")
		s := Config {user: "user@example.com", password : "123", url: "https://example.com" }

		mut file := os.open_file(sfile, "w+", 0666) or { panic(err) }
		out := json.encode(s)

  		file.write(out)
  		file.close()
	}

	/* Read the setting file */
	t := os.read_file(sfile) or {
    	panic('Error reading: $sfile')
  	}

	out := json.decode(Config, t) or {
		panic(err)
	}

	return out
}


fn main() {


	// Read environment 
	config := read_config() 
	println(config)
	

	site := mysite.connect(config.url, config.user, config.password ) or {
		println("Failed")
		return 
	}

	rsp := mysite.req(site, config.url ) or {
		println("Failed")
		return 
	}

	println(rsp)


}	
