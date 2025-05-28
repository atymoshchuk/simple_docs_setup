PyScript in your Documentation?
===============================

Let's try adding more documentation with PyScript.
All you need to do is to install PyScript Sphinx extension:
.. code-block::

   pip install sphinx-pyscript

And add it to your `conf.py`:

.. code-block::

   extensions = [
    "sphinx_pyscript",
   ]

Here is an example, how can you add a piece of Python code to your documentation and be able to run it:
(Press shift+enter to run the code)

.. py-repl::
    :output: replOutput

    print("hallo world")
    import matplotlib.pyplot as plt
    plt.plot([1, 2, 3])
    plt.gcf()

.. raw:: html

    <div id="replOutput"></div>

.. py-terminal::


Code was here and should be shown above.
