const paymentstart=() => {
	let amount = $("#payment_field").val();
	console.log(amount);
	if(amount=="" || amount==null){
		alert("Amount is required");
		return;
	}

	$.ajax({
		url:"/create-order",
		data:JSON.stringify({amount:amount,info:'order_request'}),
		contentType:'application/json',
		type:'POST',
		dataType:'json',
		})
    .done(function(response) {
        console.log(response);
        if (response.status === "created") {
            let options = {
					"key": "rzp_test_sLOYsaAbx9BCQm",
					"amount": response.amount,
					"currency": "INR",
					"name": "FlyEase",
					"description": "Ticket Payment",
					"image": "https://static.vecteezy.com/system/resources/previews/003/513/751/original/cute-monkey-hanging-tree-cartoon-illustration-free-vector.jpg",
					"order_id": response.id,
					"handler": function(response){
						console.log(response.razorpay_payment_id);
						console.log(response.razorpay_order_id);
						console.log(response.razorpay_signature);
						console.log("Payment Successful");
						alert("Zalll zalll dhika chika dhika chikaaa");
					},
					"prefill": {
						"name": "",
						"email": "",
						"contact": "",
					},
					notes:{
						address: "Anjaaaa",
					},
					theme:{
						color: "#3399cc",
					},

				};
            let rzp = new Razorpay(options);
            rzp.on("payment.failed", function(response) {
                console.log("Payment failed:", response);
                alert("Payment failed");
            });
            rzp.open();
        } else {
            console.log("Unexpected response status:", response.status);
        }
    })
    .fail(function(error) {
        console.log(error);
        alert("Something Went Wrong");
    });
};





