echo "Welcome to the Random Number Generator!"
echo "Type a minimum and a maximum number for the generator to pick in between"

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 min max"
    exit 1
fi

min=$1
max=$2

random_number=$(shuf -i "$min"-"$max" -n 1)

echo "Random number between $min and $max is: $random_number"