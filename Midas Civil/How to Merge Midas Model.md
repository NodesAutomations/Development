# How to Merge Midas Model

### Terminology

- Main Model : Base Model we are adding New Model to This Base Model
- Sub Model : Model to Merge with Main Model

### Prepare Sub Model for Merge

- Adjust Nodes Coordinate as positioning with respect to Main Model, This include Moving and Rotation of Nodes
- Nodes and Beam Renumbering such a way that Node and Element ID Don't Conflict with main Model
- Material ID Change , Keep It As if you want to use same material for both Model, You can Keep Separate ID if You Might need to Change Material Property in Future
- Section ID Renumbering So that ID Don't Conflict with Main Model
- For Loads Use Separate Names or Use Prefix with Load Name Like Span1_DeadLoad, If You Keep Same Load Case Name as Main Model Midas will Merge Both Load which is Not advisable, If You Need Combine Loads For Results Use Load Combination but Keep Loads for each Span Separate so You can Modify That Load later on if necessary
- Change Name of Floor Load if Already Exist
- For Load Combination Same As Loads Use Prefix
- Export Midas Model to MCT Command File

### Merge Using MCT Commands

- Open Main Model
- Open MCT Command Shell `Ctrl +F12`
- Run Commands For Nodes and Beams from Sub Model MCT Command File and Check Alignment
- Add Material and Section Property
- Add Supports
- Add Groups
- Add Load Cases, Remove if Load Case Name Already Exist
- Add Loading
- Add Load Combination
