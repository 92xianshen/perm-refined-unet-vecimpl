"""
`python setup.py build_ext --inplace -a`

2025.01.17: compile `permutohedral_npimpl.py` to pyd with OpenMP
"""

from distutils.core import setup, Extension
from Cython.Build import cythonize
import numpy as np

build_name = "permutohedral_npimpl"

setup(ext_modules=cythonize(
    Extension(
        build_name, 
        sources=["{}_src.py".format(build_name)], 
        language="c++", 
        include_dirs=[np.get_include()], 
        library_dirs=[], 
        libraries=[], 
        extra_compile_args=["/openmp"], 
        extra_link_args=["/openmp"]
    ), 
    annotate=True,
    compiler_directives={"language_level": 3}, 
))