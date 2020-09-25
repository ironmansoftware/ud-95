import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'
import { Button } from 'react95';

const UD95Button = props => {
    return <Button onClick={() => props.onClick()}>{props.text}</Button>
}

export default withComponentFeatures(UD95Button)