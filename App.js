
import React, {Component} from 'react';
import {
     AppRegistry,
     StyleSheet,
     Text,
     View,
     NativeModules,
     InteractionManager
} from 'react-native';

import Button from 'apsl-react-native-button'

// 看到 PushNative 是不是很熟悉，没错这个就是原生中写的那个类
// 后面一定要一样哦，前面可以随意定制。
var Push = NativeModules.PushNative;

type Props = {};
export default class App extends Component<Props> {
  render() {
    return (
      <View style={styles.container}>
          
          <Button 
              style={styles.buttonStyle}
              textStyle={styles.textStyle}
              onPress={() => {
                InteractionManager.runAfterInteractions(()=> {
                    Push.RNOpenOneVC('测试');
                });
              }}>
              点击跳转原生页面
          </Button>      
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  textStyle: {
    color: 'white'
  },
  buttonStyle: {
      borderColor: '#f39c12',
      backgroundColor: '#f1c40f',
      margin: 10  //边距
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});