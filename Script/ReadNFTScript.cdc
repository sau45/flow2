import CryptoPoops from 0x05;
import NonFungibleToken from 0x05;
pub fun main( index:UInt64 , user: Address):&CryptoPoops.NFT  {

    let recipientsCollections = getAccount(user).getCapability(/public/MyCollection)
        .borrow<&CryptoPoops.Collection{CryptoPoops.IPublicNFT}>()
        ?? panic("The recipient does not have a Collection.")
    var NFT = recipientsCollections.borrowAuthNFT(id: index) 
    log(NFT.name);
    log(NFT.favouriteFood);
    log(NFT.luckyNumber) ; 
    return NFT;
}
