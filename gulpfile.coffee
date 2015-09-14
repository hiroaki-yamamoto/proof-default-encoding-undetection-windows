g = require "gulp"
path = require "path"
rename = require "gulp-rename"
concat = require "gulp-concat"
less = require "gulp-less"

g.task "singleCompile", ->
  g.src(
    "./src/single/style.less"
  ).pipe(
    less()
  ).pipe(
    rename("single.css")
  ).pipe g.dest "./dist"

g.task "multipleCompile", ->
  scripts = ("test#{counter}.less" for counter in [1..3])
  g.src(
    (path.join("./src/multiple", script) for script in scripts)
  ).pipe(
    less()
  ).pipe(
    concat("multiple.css")
  ).pipe g.dest "./dist"

g.task "importCompile", ->
  g.src(
    "./src/import/style.less"
  ).pipe(
    less()
  ).pipe(
    rename("import.css")
  ).pipe g.dest "./dist"

g.task "default", ["singleCompile", "multipleCompile", "importCompile"], ->
