    const botao = document.querySelector('button');
    morses = ["zero.png", "um.png", "dois.png", "tres.png", "quatro.png", "cinco.png", "seis.png", "sete.png", "oito.png", "nove.png"]
 
    botao.addEventListener('click',function(evt){
    evt.preventDefault();
    document.querySelector('.resultado').innerHTML="";
    const n1 = parseInt(document.querySelector('#primeiron').value);
    const n2 = parseInt(document.querySelector('#segundon').value);
    const r = parseInt(document.querySelector('#operacao').value);
    
    if (r == 1){
        let resultado = n1+n2;
        imagem = String(parseInt(resultado));
        texto = document.createElement("p");   
        texto.innerHTML = imagem;
        document.querySelector('.resultado').appendChild(texto);
        for(x=0;x<imagem.length;x++){
            img = document.createElement("img");
            img.src=morses[imagem[x]];
            document.querySelector('.resultado').appendChild(img);
        } }
    if (r == 2){
        let resultado = n1-n2;
        imagem = String(parseInt(resultado));
        texto = document.createElement("p"); 
        texto.innerHTML = imagem;
        document.querySelector('.resultado').appendChild(texto);
        for(x=0;x<imagem.length;x++){
            img = document.createElement("img");
            img.src=morses[imagem[x]];
            document.querySelector('.resultado').appendChild(img);
        }     }
    if (r == 3){
        let resultado = n1*n2;
        imagem = String(parseInt(resultado));
        texto = document.createElement("p");      
        texto.innerHTML = imagem;
        document.querySelector('.resultado').appendChild(texto);
        for(x=0;x<imagem.length;x++){
            img = document.createElement("img");
            img.src=morses[imagem[x]];
            document.querySelector('.resultado').appendChild(img);
        }   }
    if (r == 4){
        let resultado = n1/n2;
        imagem = String(parseInt(resultado));
        texto = document.createElement("p");      
        texto.innerHTML = imagem;
        document.querySelector('.resultado').appendChild(texto);
        for(x=0;x<imagem.length;x++){
            img = document.createElement("img");
            img.src=morses[imagem[x]];
            document.querySelector('.resultado').appendChild(img);
        
        }   }  
    });

    modos = document.getElementsByName("modo");
    modos.forEach(function(radio){
        radio.addEventListener("click",function(e){
            if(e.target.value == "light"){
                document.querySelector("fieldset").style.backgroundColor="White";
                document.querySelector("h1").style.color="Black";
                document.querySelector("h4").style.color="Black";
                document.querySelector("label").style.color="Black";
                document.querySelector(".tema_light").style.color="Black";
                document.querySelector(".tema_dark").style.color="Black";
                document.querySelector(".assinatura").style.color="Black";
            }else{
                document.querySelector("fieldset").style.backgroundColor="Black";
                document.querySelector("h1").style.color="White";
                document.querySelector("h4").style.color="White";
                document.querySelector("label").style.color="White";
                document.querySelector(".tema_light").style.color="white";
                document.querySelector(".tema_dark").style.color="white";                
                document.querySelector(".assinatura").style.color="White";
            }
        })
    });