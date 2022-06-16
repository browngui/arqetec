import { StyleSheet, Text, View,TextInput, Alert, TouchableOpacity,} from 'react-native';
import { useState } from 'react';

export default function App() {
  const[real, setReal] = useState();
  const[dol, setDol] = useState();
 
    let USD;

    function dolar(){
      USD = real / dol ;
      Alert.alert(`O valor de ${real} reais vai sair por ${USD} USD 💲💲💲`);; //Mensagem de alerta para celular
      // alert(`O valor de ${real} reais vai sair por ${USD} USD 💲💲💲`); // Mensagem de alerta para web
    }
    
  return (
    <View style={styles.container}>
      <Text style={styles.title}> 🤑 Casa de câmbio - Exchange house 🤑💲 </Text>
      <TextInput 
        style={styles.inputValor}
        placeholder='Qual o valor em reais?'
        keyboardType='numeric'
        onChangeText={(real) => setReal(real)} //verifica as mudanças de dados dentro Input
      />

      <TextInput 
        style={styles.inputValor}
        placeholder='Qual o valor em dolar?'
        keyboardType='numeric'
        onChangeText={(dol) => setDol(dol)} //verifica as mudanças de dados dentro Input
      />

    {/* Texto convertido em botão para fazer o calculo funcionar */}
      <TouchableOpacity onPress={dolar}>
        <Text style={styles.buttonCalculated}>Converter</Text>
      </TouchableOpacity>
      
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#04724D',
    alignItems: 'center',
    justifyContent: 'center',

  },
  title: {
    textAlign: 'center',
    marginTop: 40,
    marginBottom: 40,
    fontSize: 30,
    color: '#000',
  },
  buttonCalculated: {
    backgroundColor: '#273C2C',
    paddingHorizontal: 30,
    paddingVertical: 10,
    fontWeight: 'bold',
    textTransform:'uppercase',
    justifyContent: 'center',
    alignItems:'center',
    color: '#fff'
  },
  inputValor: {
    backgroundColor: '#FFF',
    color: '#000',
    borderRadius: 10,
    margin: 15,
    padding: 10,
    borderColor: '#3B2F4C',
    borderWidth: 1,
  }
})