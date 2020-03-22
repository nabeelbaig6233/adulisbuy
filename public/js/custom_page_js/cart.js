class Bag {
    constructor(bagName) {
        this.bagName = bagName;
    }

    all() {
        return GET(`${window.BaseURL}/${this.bagName}`);
    }

    find(productID) {
        return GET(`${window.BaseURL}/${this.bagName}/${productID}`);
    }

    put(productID) {
        return POST(`${window.BaseURL}/${this.bagName}`, productID);
    }

    delete(productID) {
        return POST(`${window.BaseURL}/${this.bagName}/${productID}`);
    }

    update(productID, updatedDetails) {
        return POST(`${window.BaseURL}/${this.bagName}/${productID}`, updatedDetails);
    }
}

let cart = new Bag('cart');
let wishList = new Bag('wishList');
