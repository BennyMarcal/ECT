function calcular()
{
    if(document.getElementById("op1").value.length == 0 ||document.getElementById("op2").value.length == 0){
        alert("Por favor, preencha todos os campos antes de realizar a operação");
        res = null;
    }
    let res;
    let op1 = parseInt(document.getElementById("op1").value);
    let op2 = parseInt (document.getElementById("op2").value);
    let oper = document.getElementById("oper").value;
    if (oper == '+')
            
        res = op1 + op2;
    else if (oper == '*')

        res = op1 * op2;
    else if (oper == '-')

        res = op1 - op2;
    else if (oper == '/')

        res = op1 / op2;
    else

        res = undefined;

    if (oper == "/" && op2 == 0){
        alert("Operação invalida, impossivel dividir por 0");
        res = null;
    }
    document.getElementById("res").value = res;
}