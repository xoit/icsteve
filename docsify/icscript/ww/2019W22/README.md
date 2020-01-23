# Tcl Package

Tcl package is used for reusable unit of tcl script. And it is also a good way to share your script, centralize your script and document your script. Let's see what did we know about the tcl pacakge for now.

![Organize Packages](organize_packages.jpg)

## How tcl package looks like

Tcllib is a standard tcl library. And for TK, we have Tklib. It is the standard tk library.

- [https://core.tcl.tk/tcllib/home](https://core.tcl.tk/tcllib/home)
- [https://core.tcl.tk/tklib/home](https://core.tcl.tk/tklib/home)

``` sh
# Download tcllib-trunk.tar.gz
tar xzvf tcllib-trunk.tar.gz
cd tcllib-trunk
~/.local/tcllib-trunk$ ./configure --prefix=/home/steve/.local/
make install
```

Check the detail [tcllib.md](./tcllib.md)

Find the most important file pkgIndex.tcl which is the package definition of this whole package.

- `dir` is the pre-defined variable by tcl package. It is the current dir, equal to `[info dirname [info script]]`
- Use `package ifneeded` to handle the tcl script which is needed by `package require`
- pkgIndex.tcl in the package directory will be sourced when `package require` runs.

## How tclsh knows the package

`auto_path` is the global variable used to define the package path. For instance, the path of tcllib, if you add this path to the `auto_path`. Basically, this file will source all pkgIndex.tcl in the sub folders, so all the modules under tcllib will be available, though they are not in the auto_path.

Use env variable TCLLIBPATH to auto-load the tcl package.

`$env(TCLLIBPATH)` is a Tcl list, not some platform-specific colon-separated or semi-colon separated format, of paths to prepend to `$auto_path`. Regardless of platform, each item in `$env(TCLLIBPATH)` should use / to delimit parts of a path.

## How to create your own package

It is easy to understand what is the tcl package, and we already use it a lot in our daily tcl scripts.

It is good style to start every script you create with a set of `package require` statements to load any packages required.

This serves two purposes: making sure that any missing requirements are identified as soon as possible; and, clearly documenting the dependencies that your code has.

### code the function

Let's code a basic function to count the cells.

``` sh
mkdir -p mypkg
cd mypkg
touch countCells.tcl
touch pkgIndex.tcl
```

__content of countCells.tcl__

``` tcl
package provide mypkg 1.0
proc countCells {tool} {
  set cnt 0 ;
  if {$tool=="icc2"} {
    set cnt [countCells_icc2] ;
  } elseif {$tool=="innovus"} {
    set cnt [countCells_innovus] ;
  }
  return $cnt ;
}

# Fake proc
proc countCells_icc2 {} {
  return 12 ;
}
proc countCells_innovus {} {
  return 13 ;
}
```

### Create pkgIndex.tcl

__content of pkgIndex.tcl__

```tcl
package ifneeded mypkg 1.0 [list source [file join $dir countCells.tcl]]
```

### Use mypkg package

Let's try to use env variable TCLLIBPATH.

``` sh

setenv TCLLIBPAHT ./mypkg
# or export TCLLIBPATH="./mypkg"

tclsh
```

Launch tclsh and run function countCells

```tcl
puts $auto_path ;
package require mypkg ;
countCells innovus ;
```

You will see your first pakcage is done.

## Use "source" or "package"

Sometimes we may think "source" command is straightforard and easy to manage.

And package is better to manage the procs, functions which could be shared among projects.

Keep the CAD in the mind, so our goal is to deliver the CAD concept to every engineer.

All CAD tool or methodology is powerful if all team members could work like one.

At the end of all these sharing, I hope I can come to a platform that could help on all implenmentation designers to make the work life easy.
