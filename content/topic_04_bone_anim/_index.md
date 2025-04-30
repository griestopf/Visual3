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

## Import and combine several bone animations from Mixamo

## Animation Combining

In Mixamo you copy various animations with the same 3D character. In Blender you want to have all animations either so called "Actions" or as individual NLA tracks on the same Character (Armature):

### Combine Animations as Actions tracks

- Import the first mixamo file
- In the Dope Sheet Editor, select "Action Editor"
- Rename Action and Slot at the Action Editor's headline to meaningful names. Remember the Slot name
- For each remaining mixamo file
  - Import the next mixamo file - the same model is now twice in the scene. Each model with its own animation
  - Select the Armature that was just imported
  - Rename the just imported Animation clip (can be done in the Action Editor's headline or in the Outliner)
  - Rename the just imported Slot name to the exact Slot name given for the first imported mixamo file
  - Select the Armature collecting all animations
  - In the Action Editor's headline, from the Clip Dropdown, select the to-be-imported clip that was just renamed
  - Delete the imported Armature and Character Geometry


### Combine Animations as NLA tracks

- Import the first mixamo file
- In NLA-Editor, push down the current animation as an action. Rename the action (sometimes called "track"), the strip and the clip (Action (track) and clip can be renamed in the Outliner)
- Foreach remaining mixamo file
  - Import the next mixamo file - the same model is now twice in the scene. Each model with its own animation
  - Select the Armature that was just imported
  - In the Dope Sheet Editor, select "Action Editor"
  - Rename the just imported Animation clip (can be done in the Action Editor's headline or in the Outliner)
  - Select the Armature collecting all animations
  - In the Action Editor's headline, from the Clip Dropdown, select the to-be-impoted clip that was just renamed
  - In the NLA Editor, push down the newly created Action strip on the resulting Armature
  - Rename everything properly (Action, Strip and Clip)
  - Delete the imported Armature and Character Geometry

## Assignment

1. Prepare a biped character (e. g. the one you created in Visual II, if not, block-out a simple one using Clay Modeling), upload it to mixamo and assign a couple of mimxamo movement animations to it, such as
  - Idle
  - Walk
  - Run
  - Jump (while running)
  - Right Strafe
  - Left Strafe

  In upcoming lessons we will see how to create a character controller in a game engine mixing these animations

2. Prepare a simple head using clay modeling with the following features
  - Create Eyeballs as light/white spheres with smaller dark/black clay blobs as the pupils. Make the pupil blocks children of the respective sphere, so you can turn the eyes by rotating the spheres
  - Create Eyelids as half spheres covering the eyeballs so you can close the eyes by turning the eyelid half spheres.
  - Create eye brows using individual clay blobs. Make sure that positioning and rotating these blobs is possible to simulate eye brow movement
  - Select a short audio clip (10-20 seconds) with understandable spoken or sung text.

  In upcoming lessons we will learn a minimum set of animated facial features to create the illusion of emotional expressions and a lip synching to speech.
