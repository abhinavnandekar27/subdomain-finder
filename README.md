# Subdomain Finder Script

![Screenshot 2024-10-16 002418](https://github.com/user-attachments/assets/99ab45eb-a980-4fec-b1b0-e72b96dbc8c0)

This Bash script allows you to find subdomains of a specified domain by checking for their existence via DNS resolution. The script also retrieves the IP address and server information for each found subdomain.

## Features
- Finds subdomains for a given domain.
- Retrieves IP addresses for each subdomain.
- Fetches server information for each subdomain.
- Simple and easy to use.

## Requirements
- Bash shell (Linux, macOS, or Windows with WSL or Git Bash).
- `curl` command-line tool.
- `host` command-line tool (part of the `bind-utils` package on some systems).
- A text file containing a list of potential subdomains (wordlist).

## Installation
1. Clone or download this repository to your local machine.
2. Navigate to the directory containing the script and the wordlist file.

## Usage
To run the script, open a terminal and use the following command:

bash
`````````````````````````````````````
bash subdomain.sh <domain> <wordlist>
