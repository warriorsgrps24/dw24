%dw 2.0
output application/json
---
payload map {
    ref: $.id,
    amount: $.characters.value..value [0],
    reedem: $.characters.value..value[-1]
}

//mapping the payload as our requirement, by calling single dot it shows null value so here we use double dots to getting value of value