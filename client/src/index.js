import React from 'react';
import { StatusBar, YellowBox } from 'react-native';
import Routes from './routes';

YellowBox.ignoreWarnings([
    'Unrecognized WebSocket',
    'virtualizedCell.cellKey'
])

export default function src() {
    return (
        <>
        <StatusBar barStyle="dark-content" backgroundColor="#f5f5f5"/>
        <Routes />
        </>
    );
}