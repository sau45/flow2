import CryptoPoops from 0x05
import NonFungibleToken from 0x05

transaction(recipient: Address, name: String, favouriteFood: String , luckyNumber:Int) {

  prepare(signer: AuthAccount) {

    let minter = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)
                    ?? panic("Not the owner")

    let recipientsPublicCollection = 
                                    getAccount(recipient).getCapability(/public/MyCollection)
                                      .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic , CryptoPoops.IPublicNFT}>()
                                      ?? panic("does not have a Collection.")

    let nft <- minter.createNFT(name: name, favouriteFood : favouriteFood , luckyNumber : luckyNumber )

    recipientsPublicCollection.deposit(token: <- nft)

    log("mint successfully")
  }

}
 
