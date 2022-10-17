var persons = '[ \
                { "fname": "Ricardo", "Iname": "Miranda", "email": "zentric@mcdonalds.pt" }, \
                { "fname": "Tiago", "Iname": "Saramago", "email": "vski@prozis.pt" }, \
                { "fname": "Ruben", "Iname": "Ex", "email": "ndjaw@ruben.ex" } \
               ]';
function fill() {
    let data = JSON.parse(persons);
    let htm = "";
    for (i=0; i < data. length; i++)
    {
      htm += "<tr>";
      htm += "<td>" + data[i].fname + "</td>";
      htm += "<td>" + data[i].Iname + "</td>";
      htm += "<td>" + data[i].email + "</td>";
      htm += "</tr>";
}
document.getElementById ("pessoal").innerHTML = htm;
}   