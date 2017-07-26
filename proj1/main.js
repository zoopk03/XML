(function(){
    let doc = document;
    let displayer = doc.getElementById("displayer");
    let formula = doc.getElementById("formula");
    let answer = doc.getElementById("answer");
    let value_input = doc.getElementById("value_input");
    let operator_input = doc.getElementById("operator_input");
    let control_input = doc.getElementById("control_input");
    
    const VARIABLE = [7,8,9,4,5,6,1,2,3,0,".","←"];
    const OPERATOR = Array.from("+-*/()C=");
    let tmp = "";
    (function(){
        let creatButton = function(text){
        let node = doc.createElement("button");
        let text_node = doc.createTextNode(text);
        node.appendChild(text_node);
        return node;
        };
    for (let i in VARIABLE){
        let variable =VARIABLE[i];
        let button = creatButton(variable);
        value_input.appendChild(button);
        button.onclick = function(){
            console.log("←");
            if(variable === "←"){
            tmp = tmp.slice(0, tmp.length - 1);  
            }
            else
            tmp += variable;
        }
    }
    for (let i in OPERATOR){
         let operator = OPERATOR[i];
        let button = creatButton(operator);
        operator_input.appendChild(button);
        if(operator === "C"){
         button.onclick = function(){
            tmp = "";
            answer.innerHTML = "";
        }

        }
        else if (operator === "="){
           button.onclick = function(){
            try{
                answer.innerHTML = eval(tmp);
            }
            catch(error){
                throw error;
                }
            };
        }
        else if (operator ==="("){
            button.onclick = function(){
                let last=tmp[tmp.length-1];
                if(last === "."){
                    tmp += `0*${operator}`;
                }
                else if(VARIABLE.includes(Number(last))){
                    tmp += `*${operator}`;
                }
                else {
                    tmp += operator;
        
                }
            }
        }
        else{
            button.onclick = function(){
                tmp += operator;
                getAnswer();
            };
        }
    }
    let getAnswer = function(){
        try{
            answer.innerHTML = Number(eval(tmp) || 0);
        }
        catch(error){
            answer.innerHTML = "運算式不正確" ;
        }
    }
    })();

setInterval(function(){
    formula.innerHTML = tmp;

},100);
})();