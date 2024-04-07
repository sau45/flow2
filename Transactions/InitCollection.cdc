import CryptoPoops from 0x05;
import NonFungibleToken from 0x05;

transaction() {
  prepare(signer: AuthAccount) {
  
    signer.save(<- CryptoPoops.createEmptyCollection(), to: /storage/MyCollection)
    
    signer.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic , CryptoPoops.IPublicNFT}>(/public/MyCollection, target: /storage/MyCollection);
  }
}
