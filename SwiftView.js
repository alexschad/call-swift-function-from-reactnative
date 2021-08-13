import {requireNativeComponent} from 'react-native';

// requireNativeComponent automatically resolves 'SampleView' to 'SampleViewManager'
const SwiftView = requireNativeComponent('SampleView', null);

export default SwiftView;
