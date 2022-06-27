#!/bin/sh

# A dwm_bar function to print the rate of CURRENCY/USD from rate.sx using rate.sx/1CURRENCY
# Creator of the project: Joe Standring <git@joestandring.com>
# Additional plugin added by Brayan de Albuquerque <brayandealbuquerque@gmail.com>
# GNU GPLv3

# Dependencies: curl

# Change the value of CURRENCY to match your currency code
dwm_currency() {
	CURRENCY=USD

	printf "%s" "$SEP1"
	if [ "$IDENTIFIER" = "" ]; then
		printf "%s" "$(curl -s try.rate.sx/1$CURRENCY)"
	else
		printf "  %.5s" "$(curl -s try.rate.sx/1$CURRENCY)"
	fi
	printf "%s\n" "$SEP2"
}

dwm_currency
