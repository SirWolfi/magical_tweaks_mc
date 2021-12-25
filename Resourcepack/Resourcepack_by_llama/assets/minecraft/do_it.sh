#!/bin/bash

FALSE=0
TRUE=1

NAME=""
FROM_T=0
TO_T=0
MAKE_NEW_JSON_F=$FALSE

work() {
	cd models/item/
	mkdir $NAME
	cd $NAME
	for (( i=$FROM_T ; i < $(expr $TO_T + 1) ; ++i )); do
		touch $i.json

		echo "{
			\"parent\": \"item/handheld\",
			\"textures\": {
			  \"layer0\": \"item/$NAME/$i\"
			}
		}" > $i.json
	done
	cd ..
	if [[ $MAKE_NEW_JSON_F == $TRUE ]]; then
		IT="
{
		\"parent\": \"item/handheld\",
		\"textures\": {
			\"layer0\": \"item/$NAME\"
		},
		
		\"overrides\": [
"

		END="
]
}"
		for (( i=$FROM_T ; i < $(expr $TO_T + 1) ; ++i )); do
			IT=$IT"
{\"predicate\": {\"custom_model_data\":$i}, \"model\": \"item/$NAME/$i\"}"
			if [[ $i != $TO_T ]]; then
				IT=$IT","
			fi
		done
		IT=$IT$END

		echo $IT > $NAME.json

	fi
	cd ../../textures/item
	mkdir $NAME
}


NAME=$1
FROM_T=$2
TO_T=$3
MAKE_NEW_JSON_F=$4
work


