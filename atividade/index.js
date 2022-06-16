import {promises as fs} from 'fs' 


async function readData(){
 

  try{ 
    const data = JSON.parse(await fs.readFile('./estados-cidades-atividade.json'))
    return data
  }
  catch(err){
    console.log('Deu um problema aqui ')
  }

}

//===================================================================================================================================//

//1º exercicio

async function mostreEstados(){
  // Função criada para listar todos os estados dentro do arquivo

  const estado = await readData() 

  const mostre = estado.map((state) => { 
    return {
      estado: state.nome 
    }
  })

  console.log(mostre) 
}

// mostreEstados()


//===================================================================================================================================//

//2º exercicio

//ForEach vai procurar no arquivo o seu filtro de pesquisa, nesse caso estados com letra A
async function doForEach(){
    const estadoss = await readData();
  
  const estadoA = estadoss.forEach((estado) =>{
    if(estado.nome.startsWith('A')){
      console.log(estado.nome)
    }
  
  });
  
  }
  
//   doForEach();


//===================================================================================================================================//

//3º exercicio
async function doSort(){
    // Ordena os estados de acordo com o tamanho das palavras.
    // Como o uso é do sort, entãoo será os pequenos
    const cities = await readData();
    const name = cities.map((states) =>{
      return {
       nome: states.nome,
      }
    });
    const contagem = cities.map((states)=> {
    return states.nome;
  });
    const ordenados = name.sort((a,b) => {
      return a.nome.length - b.nome.length;
      
    });
    console.log(ordenados);
  }
//   doSort();


//===================================================================================================================================//

// 4º exercicio
async function cidSP(){
    // Função criada para as cidades de sp
  const estado = await readData()

  const SP = estado.find((state) =>{   //Nesse casso só será mostrado as cidades de SP
    return state.nome === 'São Paulo' 
  })

  const cidades = SP.cidades 

  console.log(cidades)
}

// cidSP()


//===================================================================================================================================//

// 5º exercicio
async function cidadesMA(){
  // Lista as cidades de maranhão que possuem mais de 6 letras

  const estado = await readData()

  const cidMA = estado.find((state) =>{   //Vai procurar as cidades do Maranhão
    return state.nome === 'Maranhão' 
  })
  
  const cidades = cidMA.cidades 

  const cidadesMA = cidades.filter((cidade) =>{ //Aqui vai filtrar as cidades por seu tamanho
    return cidade.length > 6
  })

  const ordenados = cidadesMA.sort((a, b) =>{
    return a.length - b.length    
  })

  console.log(ordenados)
}

// cidadesMA()


//===================================================================================================================================//

// 6º exercicio
async function contaCids(){
  // Informa o nome dos estados e a quantidade de cidades que cada um possuem

  const estado = await readData()

  const Estadocidades = estado.map(
    (state) =>{ 
        return{ 
        estado: state.nome, // Mostra o nome dos estados
        cidades: `${state.cidades.length}` // soma o número de cidades
        }
      }) 

      console.log(Estadocidades)

}

// contaCids()


//===================================================================================================================================//

// 7º exercicio
async function cidadesBA(){
  // Lista as cidades da bahia com menos de 5 letras

  const estado = await readData()

  const cidBA = estado.find((state) =>{   // Procura pelo estado 'Bahia' e coleta os seus dados
    return state.nome === 'Bahia' 
  })
  
  const cidades = cidBA.cidades 

  const cidadesBA5 = cidades.filter((cidade) =>{ // Mostra as cidades com menos de 5 letras
    return cidade.length < 5
  })

  const ordenados = cidadesBA5.sort((a, b) =>{
    return a.length - b.length    // Organiza pelo tamanho
  })

  console.log(ordenados)

}

// cidadesBA()


//===================================================================================================================================//
                                                      // FIM