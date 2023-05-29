import platform

def hello():
    system = platform.system()
    if system == 'Linux':
        return 'Linux'
    elif system == 'Windows':
        return 'Windows'
    else:
        return 'Error!'

if __name__ == '__main__':
    print(hello())