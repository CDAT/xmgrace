from distutils.core import setup


setup(name="xmgrace",
      version='8.1.0',
      author='doutriaux1@llnl.gov',
      description="wrapping package for xmgrace",
      url="http://www-pcmdi.llnl.gov/software",
      packages=['xmgrace'],
      package_dir={'xmgrace': 'Lib'},
      )
