Project: Logistics Tracing application with solidity , Ganache and connecting to metamask wallet
 
 
Prerequisites to be followed before deployment:
 
    -> Set seller account address in '2_migrations.sol' file.
    -> Set Forwarder account address in '4_migrations.sol' file.
    -> Set Clearnce account address in  '5_migrations.sol' file.
 
 
Sequence flow:
 
    -> Seller - addProduct
    -> Buyer  - register (Enter id is not a register id,regId will increament while registering buyer )

    -> Buyer  - chooseSeller (Seller Contract Address)
    -> Buyer  - requestProduct by using product id
    -> Seller - Accept request by using product id i.e pid (only seller account can do)
    -> Buyer  - Buy product by using pid and register id
    -> Seller - packgoods (only seller account)
    -> Buyer - chooseFreight 
    -> Buyer - Book Freighter by using odrer id and charges (charges fixed for all oderds i.e 1000000000000000000)

    -> Forwarder - viewBooking 
    -> Seller - chooseFreight 
    -> Forwarder - ProductPickups i.e pickup packed product using exportId (only forwareder account)
    -> Forwarder - startDelivery
    -> Forwarder - chooseClearence
    -> Forwarder - sourcePortclearence
    -> Forwarder - destPortclearence

    -> Port clearence  - viewExportClearence
    -> Port clearence  - viewImportClearence

    -> Forwarder - Delivery (need both port clearence to deliver the product)

    -> Buyer - viewdeliverystatus at any time 