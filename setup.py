import setuptools

setuptools.setup(
    name='execdir',
    install_requires=open('requirements.txt').read().splitlines(),
    packages=setuptools.find_packages(),
    scripts=['scripts/.execdir-add','scripts/.execdir-clear','scripts/.execdir-get','scripts/.execdir-rm','scripts/.execdir-run','scripts/.execdir-set','scripts/execdir']
)
