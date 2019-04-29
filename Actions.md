1. Look up representative information

   - Method
     - GET
   - URL
     - /customer_service/representative/{reps_id}/rating
   - Inputs
     - Representative ID
   - Response
     - reps_id
     - current rating

2. Rate a representative’s chat session

   - Method
     - POST
   - URL
     - /customer_service/representative/{reps_id}/rating
   - Inputs
     - Representative ID
     - Session ID
     - Rating
   - Responses
     - Confirmation message
   - Expected result
     - Rating is recorded
