from pathlib import Path

with Path(__file__).parent / 'deathbeds' / '_version.py' as file:
    exec(file.read())

__import__('setuptools').setup(
    name="deathbeds",
    version=__version__,
    author="deathbeds", 
    author_email="tony.fast@gmail.com",
    description="sand to sand, silicon to silicon", 
    license="BSD-3-Clause",
    packages=['deathbeds'],
    include_package_data=True)