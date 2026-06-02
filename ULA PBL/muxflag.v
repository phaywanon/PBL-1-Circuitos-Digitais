module muxflag(
	 input ZEROflag, ERRflag, OVflag,
	 output led1, led2
	);

	or or1(led1, ZEROflag, OVflag);
	or or2(led2, ERRflag, OVflag);

endmodule
