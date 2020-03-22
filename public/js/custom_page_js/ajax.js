let AJAX = async (URL, type, data = undefined) => {
    return (await fetch(URL, {
        method: type,
        headers: {
            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
        },
        body: data,
    })).json();
};

let POST = async (URL, data = undefined) => AJAX('POST', URL, data);
let GET = async URL => AJAX('GET', URL);
