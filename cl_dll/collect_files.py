import os

def list_cpp_files(directory):
    cpp_files = []
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.cpp'):
                relative_path = os.path.relpath(os.path.join(root, file), directory)
                cpp_files.append(relative_path)
    return cpp_files

if __name__ == "__main__":
    directory = '.'
    cpp_files = list_cpp_files(directory)
    for cpp_file in cpp_files:
        print(f"SRCS+=./{cpp_file.replace('\\', '/')}")