Intro into Simple Docs Setup
============================

Main idea
##########

Main idea of this repo is to start with a simple documentation setup and expand it to versioned version.

The first step to setup a simple documentation for any project is to add docstrings to each function.

For example if you have a following function:

.. code-block::

    @app.get("/")
    async def root():
        return {"message": "Hello World"}

Docstring should be added as a next line after function declaration:

.. code-block::

    @app.get("/")
    async def root():
        """My simple docstring for Hello World basic function"""
        return {"message": "Hello World"}

The second step would be to configure Sphinx and autodoc to go through the codebase and generate code reference.

Tutorial - Basic Sphinx setup
#############################

Follow the next steps:

- add Sphinx and recommonmark (Markdown support into your requirements file)
- install Sphinx package

.. code-block::

 pip install sphinx

- create a new docs directory in your project

.. code-block::

   mkdir docs

- go to docs directory

.. code-block::

   cd docs

- follow basic Sphinx setup by running

.. code-block::

   sphinx-quickstart

It's still too early to run build, we need to setup our configuration to make sure that we are able to generate code_reference.

Next step - edit your Sphinx documentation configuration file conf.py. You can find the exact configuration in this repo.

In this configuration you can see run_apidoc command, which will run apidoc to generate your code reference auto documentation and will store all generated files in code_reference directory.

And one more step to go - add generated code_reference into our documentation in index.rst file.

Don't forget to put all dependencies into requirements.txt file.

And now you can run building the docs and enjoy reading.
