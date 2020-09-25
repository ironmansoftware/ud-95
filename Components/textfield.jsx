import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'
import { TextField } from 'react95';

const UD95Textfield = props => {
  return <TextField value={props.value} placeholder={props.placeholder} fullWidth={props.fullWidth} />
}

export default withComponentFeatures(UD95Textfield)