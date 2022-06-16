import { StyleSheet, Text, View,TextInput, Alert, TouchableOpacity  } from 'react-native';

import { useState } from 'react';

export default function App() {
  const[KMh, setKMh] = useState();
 
    let mph;

    function teste(){
      mph = KMh * 0.621371;
      // Alert.alert(`A sua velocidade de ${KMh} km por hora equivalem a ${mph} milhas por hora 🚦`); //Mensagem de alerta para celular
      alert(`A sua velocidade de ${KMh} km por hora equivalem a ${mph} milhas por hora 🚦`); //Mensagem de alert para web
    }
 
  return (
    <View style={styles.container}>
      <Text style={styles.title}> Qual a minha velocidade em milhas por hora? 🤔 </Text>
      <TextInput 
        style={styles.inputSpeed}
        placeholder='Informe a velocidade'
        keyboardType='numeric'
        onChangeText={(KMh) => setKMh(KMh)}   
      />
   
   
    {/* Texto convertido em botão para fazer o calculo funcionar */}
      <TouchableOpacity onPress={teste}>
        <Text style={styles.buttonCalculated}>Converter</Text>
      </TouchableOpacity>
      
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#3D403A',
    alignItems: 'center',
    justifyContent: 'center',

  },
  title: {
    textAlign: 'center',
    marginTop: 40,
    marginBottom: 40,
    fontSize: 30,
    color: '#E0E2DB',
  },
  buttonCalculated: {
    backgroundColor: '#0E0004',
    paddingHorizontal: 30,
    paddingVertical: 10,
    fontWeight: 'bold',
    textTransform:'uppercase',
    justifyContent: 'center',
    alignItems:'center',
    color: '#fff'
  },
  inputSpeed: {
    backgroundColor: '#FFF',
    color: '#000',
    borderRadius: 10,
    margin: 15,
    padding: 10,
    borderColor: '#3B2F4C',
    borderWidth: 1,
  }
})