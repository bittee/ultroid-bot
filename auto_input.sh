#!/bin/bash
# Create input file with all necessary inputs
echo "1" > input.txt  # Continue with Python installed
echo "skip" >> input.txt  # Skip session generation
echo "1" >> input.txt  # Choose Telethon Session
echo "23061351" >> input.txt  # API_ID
echo "1065a0bc3f033812d61c16ba26f28ae9" >> input.txt  # API_HASH
echo "1BJWap1wBu42heBjfFoKs_NifHtpnqK4HX9e-NPcH6wWUXB20uJ1A_xvvaLBxut4AQI1CDq2sl6ejc3g-Ph_7QpNz3VM36k3UC2onyRuLOVQhvhaow-pNALQidSk-l01_4dQKUTEP7YU9Gil1AiHTNGGevnarvMIZchSITdgKwPmHVlxrBzmG56Zn6i_s8c26iR2CdClTiFUpJ8WLGRAB5oGNfeDbEMVonYwA4MGFgXVOKttnvfDM1gEe66YmGGD4u2w7lg_0XyPI8EG2iczdRtFZTQ9ZX5ge8BGK6aPR06CWrO9HNe7hcXK6kJD4G4ZTmo3OlnUvpKvG2EJCHEL8Tld4sbLgBVc=" >> input.txt  # Session string
echo "mongodb+srv://acsuntnumber1:DP3oWHdk3ir1JOQ2@cluster0.hyxj72r.mongodb.net/ultroid?retryWrites=true&w=majority" >> input.txt  # MONGO_URI
echo "yes" >> input.txt  # Install other requirements
echo "yes" >> input.txt  # Answer yes to any additional prompts

# Create .env file
echo "SESSION=1BJWap1wBu42heBjfFoKs_NifHtpnqK4HX9e-NPcH6wWUXB20uJ1A_xvvaLBxut4AQI1CDq2sl6ejc3g-Ph_7QpNz3VM36k3UC2onyRuLOVQhvhaow-pNALQidSk-l01_4dQKUTEP7YU9Gil1AiHTNGGevnarvMIZchSITdgKwPmHVlxrBzmG56Zn6i_s8c26iR2CdClTiFUpJ8WLGRAB5oGNfeDbEMVonYwA4MGFgXVOKttnvfDM1gEe66YmGGD4u2w7lg_0XyPI8EG2iczdRtFZTQ9ZX5ge8BGK6aPR06CWrO9HNe7hcXK6kJD4G4ZTmo3OlnUvpKvG2EJCHEL8Tld4sbLgBVc=" > .env
echo "API_ID=23061351" >> .env
echo "API_HASH=1065a0bc3f033812d61c16ba26f28ae9" >> .env
echo "MONGO_URI=mongodb+srv://acsuntnumber1:DP3oWHdk3ir1JOQ2@cluster0.hyxj72r.mongodb.net/ultroid?retryWrites=true&w=majority" >> .env

# Create session file
echo "1BJWap1wBu42heBjfFoKs_NifHtpnqK4HX9e-NPcH6wWUXB20uJ1A_xvvaLBxut4AQI1CDq2sl6ejc3g-Ph_7QpNz3VM36k3UC2onyRuLOVQhvhaow-pNALQidSk-l01_4dQKUTEP7YU9Gil1AiHTNGGevnarvMIZchSITdgKwPmHVlxrBzmG56Zn6i_s8c26iR2CdClTiFUpJ8WLGRAB5oGNfeDbEMVonYwA4MGFgXVOKttnvfDM1gEe66YmGGD4u2w7lg_0XyPI8EG2iczdRtFZTQ9ZX5ge8BGK6aPR06CWrO9HNe7hcXK6kJD4G4ZTmo3OlnUvpKvG2EJCHEL8Tld4sbLgBVc=" > session.txt

# Run the script with the input file
cat input.txt | python3 locals.py 