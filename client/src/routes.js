import React from 'react';
import { Image } from 'react-native'
import { createAppContainer, createStackNavigator, HeaderBackButton } from 'react-navigation';

import logo from './assets/instagram.png';

import Feed from './screens/feed';
import New from './screens/new';

const Routes = createAppContainer(
    createStackNavigator({
        Feed,
        New
    }, {
        headerLayoutPreset: 'center',
        defaultNavigationOptions: {
            headerTitle: 'tadsgram',
            headerStyle: { backgroundColor: '#f5f5f5' },
            headerBackTitle: null,
            headerTintColor: '#000'
        },
        mode: 'modal'
    })
)

export default Routes;