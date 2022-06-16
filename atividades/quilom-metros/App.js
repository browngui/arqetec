import { StyleSheet, Text, View,TextInput, Alert, TouchableOpacity  } from 'react-native';

import { useState } from 'react';

export default function App() {
const[KM, setKM] = useState();

  let metros;

  function teste(){
    metros = KM * 1000;
    Alert.alert(`${KM} Km equivalem a ${metros} metros percorridos 🏃‍♂️🏃‍♂️`); //Mensagem de alerta para celular
    // alert(`${KM} Km equivalem a ${metros} metros percorridos 🏃‍♂️🏃‍♂️`); //Mensagem de alert para web
  }

return (
  <View style={styles.container}>
    <Text style={styles.title}> Quantos metros eu percorri em KM? 🤔 </Text>
    <TextInput 
      style={styles.inputDistancia}
      placeholder='Qual a distancia percorrida'
      keyboardType='numeric'
      onChangeText={(KM) => setKM(KM)} //verifica as mudanças de dados dentro Input
    />
  

  {/* Texto convertido em botão para fazer o calculo funcionar */}
    <TouchableOpacity onPress={teste}>
      <Text style={styles.buttonCalculated}>Calcular</Text>
    </TouchableOpacity>
    
  </View>
);
}

const styles = StyleSheet.create({
container: {
  flex: 1,
  backgroundColor: '#0A2463',
  alignItems: 'center',
  justifyContent: 'center',

},
title: {
  textAlign: 'center',
  marginTop: 40,
  marginBottom: 27,
  fontSize: 30,
  color: '#F3F9D2',
},
buttonCalculated: {
  backgroundColor: '#113EA7',
  paddingHorizontal: 30,
  paddingVertical: 10,
  fontWeight: 'bold',
  textTransform:'uppercase',
  justifyContent: 'center',
  alignItems:'center',
  color: '#fff'
},
inputDistancia: {
  backgroundColor: '#FFF',
  color: '#000',
  borderRadius: 10,
  margin: 15,
  padding: 10,
  borderColor: '#000',
  borderWidth: 2,
}
})