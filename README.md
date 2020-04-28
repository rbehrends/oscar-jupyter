# Tools to run Jupyter notebooks with Oscar

This setup requires installations of Julia (version 1.3 or later)
and Python (version 3.6 or later). It allows the creation of a
self-contained Jupyter environment and the execution and conversion of
Jupyter notebooks.

The primary difference compared to using `IJulia` directly is that the
resulting environment is entirely self-contained. It is intended for
testing and experimentation without affecting your normal Julia or
Jupyter configurations.

It can also be used to run automated conversions/executions of notebooks
via the `nbconvert` command in a defined environment.

# Usage

To install Jupyter+Oscar, run:

    make

This will create a `.oscar-jupyter` directory in the local directory and
an `oscar` script is installed that sets up the environment for the
jupyter and julia commands.

Alternatively, you can also use:

    make master

This will create an environment based on the master branch at
`https://github.com/oscar-system/Oscar.jl` instead of the current stable
version.

Note that this will take a while.

To run a notebook server, do:

    ./oscar jupyter notebook

To convert notebooks to HTML, do:

    ./oscar jupyter nbconvert SomeNotebook.ipynb

This will simply perform a formatting step. To actually execute the
notebooks, add the `--execute` option.

    ./oscar jupyter nbconvert --execute SomeNotebook.ipynb

Julia can also be run in this way, without or with arguments

    ./oscar julia
    ./oscar julia -e "using Oscar; 
