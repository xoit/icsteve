# Use Asciinema

This is a terminal recording tool.

Enjoy a lightweight, purely text-based approach to terminal recording.

## Deploymnet

Make sure you have python3 installed.

I will use "Run from source" approach.

- download source

```sh
git clone https://github.com/asciinema/asciinema.git
cd asciinema
pwd
```

- set PYTHONPATH

for bash

```bash
export PYTHONPATH=`pwd` ;
```

```csh
setenv PYTHONPATH `pwd` ;
```

- Create command alias

```bash
alias asciinema="python3 -m asciinema "
```

```csh
alias asciinema 'python3 -m asciinema \!*' ;
```

## Recording

```sh
asciinema rec test.cast
```

## Display

```html
<html>
<head>
  <link rel="stylesheet" type="text/css" href="http://icsteve.com/vendor/asciinema-player/asciinema-player.css" />
  <link rel="stylesheet" type="text/css" href="http://icsteve.com/assert/default.css" />
</head>

<body>
  <script>
  var args={};
  args["f"]="test" ;
  if (typeof args["f"]!=="undefined" && args["f"]!==null) {
    document.write("<asciinema-player src=\"assert/"+args["f"]+".cast\" cols=\"120\" font-size=\"16px\" theme=\"monokai\"></asciinema-player>") ;
  } else {
    document.write("Please provide URL argument like: ?show=demo_name.") ; 
  }
  </script>
  <script src="http://icsteve.com/vendor/asciinema-player/asciinema-player.js"></script>
</body>
</html>

```

## Showtime

http://icsteve.com/demo/asciinema-player.html
