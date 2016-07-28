fs = require "fs"
postFolder = "../_posts"

getName = (url) ->
	match = url.match /images\/(.*?)\"\s*\/>/
	match[1]	


instead = (cnt, match) ->
	img = getName match
	newCnt = cnt.replace "#{match}\n", ""
	newCnt = newCnt.replace "layout: post", "layout: post\nimage: #{img}"
	newCnt

start = ->
	fs.readdir postFolder, (err, files) ->
		files.forEach (file, idx) ->
			fs.readFile "#{postFolder}/#{file}", "utf-8", (err, cnt) ->
				match = cnt.match /<img src=\"(.*?)\/>/g
				if match and match[0]
					fs.writeFileSync "#{postFolder}/#{file}", instead(cnt, match[0]),  "utf-8", ->


start()