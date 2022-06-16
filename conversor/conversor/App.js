import { StyleSheet, Text, TouchableOpacity, View, TextInput, Alert} from 'react-native';
import { useState } from 'react';

export default function App() {

  const [celsius, setCelsius] = useState(0);
  let fahrenheit;

  function calculateTempeture() {
    fahrenheit = (9 * celsius + 160) /5;
    Alert.alert('Conversor', `${celsius}ºc equivalem a ${fahrenheit}ºf`);
    // alert('Conversor', `${celsius}ºc equivalem a ${fahrenheit}ºf`);
  }

  return (
    <View style={styles.container}>
      <Text style={styles.title}> 🥶 Aplicativo de Temperatura 🥵</Text>
      <TextInput 
      style={styles.tempeture}
      placeholder='Informe a temperatura em celsius'
      keyboardType='numeric'
      onChangeText={(celsius) => setCelsius(celsius)}
      /> 

      <TouchableOpacity onPress={calculateTempeture}>
        <Text style={styles.buttonCalc}> Calcular</Text>
      </TouchableOpacity>

    </View>
  );
}

const styles = StyleSheet.create({
    container: {
    flex: 1,
    backgroundColor: '#99B3FF',
    alignItems: 'center',
    justifyContent: 'center',
  },

  title: {
    textAlign: 'center',
    marginTop: '40',
    marginBottom: '40',
    fontSize:'22',
    color:'#000'
  },

  tempeture: {
    backgroundColor: '#fff',
    color: '000',
    borderRadius:'10' ,
    margin:'15',
    padding:'10',
    borderColor:'#000',
    borderWidth: 1
  },

  buttonCalc:{
    justifyContent:'center',
    alignItems:'center',
    backgroundColor:'#FFD700',
    paddingHorizontal:30,
    paddingVertical: 10,
    fontWeight:'bold',
    textTransform: 'uppercase'
  },
});
