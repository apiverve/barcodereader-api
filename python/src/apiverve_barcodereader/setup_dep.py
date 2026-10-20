from setuptools import setup, find_packages

setup(
    name='apiverve_barcodereader',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Barcode Reader decodes 1D barcodes from an uploaded image or an image URL, including EAN-13, EAN-8, UPC-A, UPC-E, Code 128, Code 39, Code 93, ITF, Codabar and GS1 DataBar. It returns the decoded value and the symbology. Paid plans add the GTIN, the barcode's orientation and corners, and every barcode found in the image.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/barcodereader?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
