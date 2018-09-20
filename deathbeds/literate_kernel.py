
with __import__('importnb').Notebook():
    from deathbeds.__Inspecting_Literate_Kernel import LiterateKernel

if __name__ == '__main__':
    from ipykernel.kernelapp import IPKernelApp
    IPKernelApp.launch_instance(kernel_class=LiterateKernel)