function AddressService(){
	this.createAddress = createAddress;
	this.updateAddress = updateAddress;

	function createAddress(args){

		args = _.pick(args,"data","success","error");
		args.url = "system/rest/address";
		args.contentType = "application/json";
		args.dataType ="json";
		args.type = "POST";

		LOGIC.Transport.ajax(args);
	}	

	function updateAddress(args){
		args = _.pick(args,'data',"success","error");
		args.url = "system/rest/address";
		args.type = "PUT";
		args.contentType = "application/json";
		args.dataType = "json";

		LOGIC.Transport.ajax(args);
	}
}