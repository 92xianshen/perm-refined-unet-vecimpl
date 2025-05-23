from distutils.core import setup, Extension
from Cython.Build import cythonize
import numpy as np

setup(ext_modules=cythonize(
    Extension(
        'pyvechash',
        sources=['pyvechash.pyx'],
        language='c++',
        include_dirs=[np.get_include(), '.'],
        library_dirs=[],
        libraries=[],
        extra_compile_args=["/O3"],
        extra_link_args=[]),
    compiler_directives={'language_level': 3}
))
