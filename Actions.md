1. Look for required documents for a flight

   - Method
     - GET
   - URL
     - /flights/{flight_id}/req_docs
   - Inputs
     - Flight ID
   - Response
     - A list of required documents

2. Look for required documents base on user's information

   - Method
     - POST
   - URL
     - /flights/{flight_id}/req_docs
   - Inputs
     - flight_id
     - user_id
   - Responses
     - A list of required documents
   - Expected result
   - A list of required documents specifying for the user
