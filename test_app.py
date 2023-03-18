# Test file for simple client/server app
import subprocess

def test_client_server():
    binary_folder = "./bin/"

    # Start the server in the background
    server_r = subprocess.Popen([f"{binary_folder}server &"], stdout=subprocess.PIPE, shell=True)
    # (server_out, err) = server_r.communicate()
    
    # Run the client
    client_r = subprocess.Popen([f"{binary_folder}client"], stdout=subprocess.PIPE, shell=True)
    (client_out, err) = client_r.communicate()

    # Assert
    assert(client_out.decode('ascii') == "Message: Message from the server to the client \'Hello Client\' \n"), "Test failed!"