#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "Welcome to the salon! Which service would you like to book?\n"

MAIN_MENU()
{

# Get list of services
  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY SERVICE_ID;")

 #while read method
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done


  # Get selected service
  read SERVICE_ID_SELECTED
  SERVICE_ID=$($PSQL "SELECT service_id FROM services WHERE service_id='$SERVICE_ID_SELECTED';")
  # if input is not a service
  if [[ -z $SERVICE_ID ]]
  then
    MAIN_MENU "I could not find that service. What would you like today?"
  else
    SERVICE_SELECTED=$($PSQL "SELECT name FROM services WHERE service_id='$SERVICE_ID_SELECTED';")
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone ='$CUSTOMER_PHONE';")
    #if not found
    if [[ -z $CUSTOMER_ID ]]
    then

      #get name
      echo -e "\nWhat's your name?"
      read CUSTOMER_NAME

      #insert into customers phone & name
      INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE');")

      #get customer id
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE';")

    
    fi
    
    echo -e "\nWhat time would you like?"
    read SERVICE_TIME
    INSERT_SERVICE_BOOKED=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES('$CUSTOMER_ID', '$SERVICE_ID', '$SERVICE_TIME');")
    #output message
    #retrieve customer name
    CUSTOMER_NAME_2=$($PSQL "SELECT name FROM customers WHERE phone ='$CUSTOMER_PHONE';")
    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id =$SERVICE_ID_SELECTED;")
    echo "I have put you down for a $SERVICE_NAME at $SERVICE_TIME,$CUSTOMER_NAME_2."
  fi
}
MAIN_MENU
