{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_FTF_edgeDetect",
  "spriteId": {
    "name": "spr_FTF_blank_panel",
    "path": "sprites/spr_FTF_blank_panel/spr_FTF_blank_panel.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "parent_FTF",
    "path": "objects/parent_FTF/parent_FTF.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"desired_threshold","varType":0,"value":"0","rangeEnabled":true,"rangeMin":0.0,"rangeMax":1.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":null,"objectId":{"name":"parent_FTF","path":"objects/parent_FTF/parent_FTF.yy",},"value":"_filter_edgedetect_shader",},
  ],
  "parent": {
    "name": "Stackable",
    "path": "folders/FTF_Free_The_Filters/Objects/Children/Stackable.yy",
  },
}