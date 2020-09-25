import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'
import { List, ListItem } from 'react95';

const UDList = props => {
    return <List>{props.render(props.children)}</List>
}

const UDListItem = props => {
    return <ListItem>{props.text}</ListItem>
}

export const UD95List = withComponentFeatures(UDList)
export const UD95ListItem = withComponentFeatures(UDListItem)