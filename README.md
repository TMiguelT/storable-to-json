# Storable to JSON
## Installation
To install the application's dependencies, first ensure you have cpanm installed.
If not, obtain it using:
```bash
cpan App::cpanminus
```

Now to install the dependencies, move into this directory, and run:
```bash
cpanm --installdeps .
```

## Usage
Run this program as follows: 
```bash
perl storable-to-json.pl /path/to/storable
```

Options:
* --pretty-print, -p: Outputs to properly indented JSON. Defaults to off.
