
with __import__('importnb').Notebook():
    from deathbeds.__Literate_Markdown_Kernel import LiterateKernel

if __name__ == '__main__':
    from ipykernel.kernelapp import IPKernelApp
    IPKernelApp.launch_instance(kernel_class=LiterateKernel)