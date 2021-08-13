import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
  TouchableOpacity,
  Dimensions,
  NativeModules,
} from 'react-native';
import SwiftView from './SwiftView';

const SwiftLibrary = NativeModules.SwiftLibrary;

const App = () => {
  const alertMessage = (message) => {
    SwiftLibrary.alertMessage(message);
  };

  const cbMessage = (message) => {
    SwiftLibrary.callBackMessage(message, (err, backMessage) => {
      console.log(err);
      console.log(`MESSAGE: ${backMessage}`);
    });
  };

  const alertNameAge = (name, age) => {
    SwiftLibrary.alertNameAge(name, age);
  };

  const cbNameAge = (name, age) => {
    SwiftLibrary.callBackNameAge(name, age, (err, backMessage) => {
      console.log(err);
      console.log(`MESSAGE: ${backMessage}`);
    });
  };

  return (
    <>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView>
        <ScrollView
          contentInsetAdjustmentBehavior="automatic"
          style={styles.scrollView}>
          <View style={styles.body}>
            <View>
              <Text style={styles.headText}>Call a Swift Function</Text>
              <View style={styles.btnParentSection}>
                <TouchableOpacity
                  onPress={() => alertMessage('Message from js')}
                  style={styles.btnSection}>
                  <Text style={styles.btnText}>Alert Message</Text>
                </TouchableOpacity>
                <TouchableOpacity
                  onPress={() => cbMessage('Message from js')}
                  style={styles.btnSection}>
                  <Text style={styles.btnText}>Callback Message</Text>
                </TouchableOpacity>
                <TouchableOpacity
                  onPress={() => alertNameAge('Peter', '15')}
                  style={styles.btnSection}>
                  <Text style={styles.btnText}>Alert Peter 15</Text>
                </TouchableOpacity>
                <TouchableOpacity
                  onPress={() => cbNameAge('Peter', '15')}
                  style={styles.btnSection}>
                  <Text style={styles.btnText}>Callback Peter 15</Text>
                </TouchableOpacity>
              </View>
              <View style={styles.swiftContainer}>
                <Text style={styles.headText}>
                  This is a view defined in Swift:
                </Text>
                <SwiftView />
              </View>
            </View>
          </View>
        </ScrollView>
      </SafeAreaView>
    </>
  );
};

const styles = StyleSheet.create({
  body: {
    justifyContent: 'center',
    height: Dimensions.get('screen').height,
    width: Dimensions.get('screen').width,
  },
  btnParentSection: {
    alignItems: 'center',
    marginTop: 10,
  },
  btnSection: {
    width: 225,
    height: 50,
    backgroundColor: '#DCDCDC',
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 3,
    marginBottom: 10,
  },
  btnText: {
    textAlign: 'center',
    color: 'gray',
    fontSize: 14,
    fontWeight: 'bold',
  },
  headText: {textAlign: 'center', fontSize: 20, paddingBottom: 10},
  swiftContainer: {
    marginTop: 20,
  },
});

export default App;
