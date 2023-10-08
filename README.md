# Dashboard P7

## Overview
This application was developped as a part of my Master's in Data Science with Openclassrooms.
The code for the dashboard and the dockerfile can be found in this repository although the dashboard is deployed
using `streamlit cloud` and can be found [here](https://client-loan-dashboard-p7.streamlit.app/).

## Usage
- Click the link mentioned above to use the interactive dashboard. Type in a client ID to search the database for an existing client and retrieve the information
and modify it if necessary.
- Sumit the information to get a prediction on whether the client can repay his loan back or not, with a probability percentage.
- Also explore which factors contributed to this decision and how the client compares to the rest of the clients in the database

## API 
The dashboard makes API calls to an API hosted on [render](https://render.com/) which provides free hosting.
The API is called from a docker image which is built using [this](https://gitlab.com/openclassrooms-p7/api-client-loan) code.

Since the API is hosted for free, if the API doesn't get any incoming requests for 15 minutes, it goes to sleep and and reactivates when a new request is made.
Note that the reactivation might take upto a minute.
