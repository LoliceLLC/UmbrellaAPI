import os

def merge_lua_files(folder_path, output_file):
    with open(output_file, 'w') as output:
        output.write("--- @diagnostic disable\n\n")
        for root, _, files in os.walk(folder_path):
            for file in files:
                if file.endswith('.lua'):
                    file_path = os.path.join(root, file)
                    with open(file_path, 'r') as input_file:
                        for line in input_file:
                            if not line.lstrip().startswith(("return", "--- @meta")):
                                output.write(line)
                    output.write('\n\n')

if __name__ == '__main__':
    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_folder = os.path.join(script_dir, 'api_files')
    output_file = os.path.join(script_dir, 'umbrella_ong_api.lua')

    merge_lua_files(api_folder, output_file)
    print('Api successfully merged.')