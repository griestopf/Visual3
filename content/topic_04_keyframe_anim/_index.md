+++
title = 'Bone Animation'
draft = false
weight = 40 
+++

## Bone Animation in Blender

### Setup

- Create a mesh shape
- Create new armature object (single bone)
- Setup the armature in Edit Mode
  - Extrude new bones from the ends of existing bones
  - See how a hierarchy is generated
  - Grab, rotate and scale to make the bones fit the mesh
- To make the bones visible, select the armature, in its object properties, go to "Viewport Display" and enable "In Front"


### Connect skeleton to mesh and add weights

- Connect the mesh shape to the armature
  - select the mesh as the first object
  - select the armature with `Shift` second object
  - In the "Object"-Menu, select "Parent" -> "Armature Deform" "With Automatic Weights"
  - As a result, the mesh becomes a child of the armature
- Select the armature and switch to "Pose" mode
- Rotate/Grab or Scale individual bones
- To edit/see the weights
  - First switch back to Object mode
  - Select the mesh (now a child of the armature)
  - Switch to "Weight Paint" mode
  - At the top bar of the 3D editor, select individual bones
  - Paint weights for the current bone onto the mesh

### Inverse Kinematics

- In Pose mode, either
  - Select the deepest bone in the hierarchy of a chain to be controlled
  - In the "Bone Constraints" settings, add an Inverse Kinematics constraint
  - Set the IK constraint's "Target" setting to an appropriate object
- or
  - Select the deepest bone in the hierarchy of a chain to be controlled
  - Press `Shift`+`I` and select "To new empty object"
- Move the target object and see how the IK chain follows
- Adjust the "Chain Length" to control the start of the IK chain within the hierarchy


