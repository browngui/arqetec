    // forma nativa(antiga) de importar aquivos no node
    // const fs = require("fs");

    import { promises as fs } from 'fs'; //essa é uma importação nomeada, onde só funciona com o nome que o criador do arquivo deu


    async function rData() {
        try{
            const data = JSON.parse(await fs.readFile('./people.json'));
            return data;
        } catch(err){
            console.log("error")
        }
    }
    rData();
// ===========================================================================
    async function doMap() {
        const people = await rData();
       
        // o metodo map permite criar um novo array apenas com informações importantes
        const nameEmail = people.results.map    (person => {
            return {
                name: `${person.name} ${person.name.last}`, 
                email: person.email,
                genero: person.gender
            }
        })
        
        
        console.log(nameEmail);
    }

    // doMap();

        // ==============================================================================================================================

    async function doForEach(){
        const people = await rData();

        //O foreach vai percorrer todos os dados do array, porem, não será possivel retornar nada a uma nova variavel.

        people.results.forEach(person => {
            if(person.dob.age >= 60){
                console.log(`${person.name.last} tem ${person.dob.age}`)
            }
        });
    }

    // doForEach();

// ==============================================================================================================================

    async function doReduce() {
        const people = await rData();

        // Reduce serve para realizar operações matemáticas dentro do nosso loop. Ele permite retornar este valor
        // a uma variavel, assim como no metodo MAP

        const totalAge = people.results.reduce( (valorSoma, person) => {
            return valorSoma + person.dob.age;
        }, 0 ) 
        // console.log(totalAge)
    }
    

// ==============================================================================================================================

    async function doFilter() {
        const people = await rData();

        // o FILTER vai criar um filtro baseado na informação que você solicitar, ele também retorna o valor para uma variavel

        const menores45 = people.results.filter((person) => {
            return person.dob.age < 45;
        })

        // console.log(menores45);
    }

// ==============================================================================================================================

    async function doFind() {
        const people = await rData();

        // FIND vai percorrer todos os dados do array e baseado em um filtro ele vai retornar um booleano se forem encontrado dados
        const encontriu = people.results.find((person) =>{
            return person.gender === "male"
        })
    }
    

// ==============================================================================================================================

        async function doSome() {
            const people = await rData();
        
        //A função doSame verifica se existe algum dado que foi informado, caso tenha, TRUE, caso não, retorna um FALSE
        const existe = people.results.some((person) =>{
            return person.emaill === 'mira.novaes@example.com'
        })
    }
        // console.log(existe)

// ==============================================================================================================================
       
       
        async function doEvery() {
            const people = await rData();
        
        //A função doEvery verifica todos os dado que foi informado, caso tenha, TRUE, caso não, retorna um FALSE
        const existe = people.results.every((person) =>{
            return person.nat === 'BR'
        })

        console.log(existe)
       
    }
    //    doEvery()
    
       
 // ==============================================================================================================================
    async function doSort() {
            const people = await rData();

        const names = people.results.map((person) =>{
            return {
                name: person.name.first
            };
        })

        const justName = people.results.map((person)=>{
            return person.name.first
        })

    // O comando Sort serve para podermos ordenar os dados dentro da nossa função. 
    // Ele criar uma nova variavel com eses dados ordernados


        // Este modelo serve para para ordernar por valor numerico
        const organizado = names.sort((a,b)=>{
            return a.name.length - b.name.length
        })


        // Este serve para ordernar dados com valores em strings (ordem alfabetica)
        const nomesOrdernados = justName.sort();



        console.log(justName)
        }
        // doSort()

 // ==============================================================================================================================
   
    function exemplos (){
        const cidade = 'Ribeirão Preto';

        // O metodo chamado STARTSWITH verifica se um dado começa com a informação solicitada.
        console.log(cidade.startsWith('Rio'))


        // o metodo INCLUDES verifica se um dado possui em qualquer lugar a informação solicitada
        // outro ponto é se no includes for escrito com letra minuscula, a variavel não será encontrada
        const estado = 'Minas Gerais';
        console.log(estado.includes('Gera'));
    }

    // exemplos()