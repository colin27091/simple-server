const page = (number) => {
    fetch(`/page?id=${number}`)
        .then((res)=>res.text())
        .then((res)=> {
            document.getElementById('content').innerHTML = res;
        })
};