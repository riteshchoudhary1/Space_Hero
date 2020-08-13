# Space_Hero
A [Processing](https://processing.org/) based interactive animation sketch game with galactic space theme, controlable using game pad.

Processing-3 is a flexible software sketchbook for learning how to code within the context of the visual arts.

A simplest Processing sketch would need a minimal of two functions:
- `setup()`: a function run once at the start of a program which can be used to define initial environment settings.
- `loop()` : a function called repeatedly until exit condition is executed.

#### `Major elements of the game :`
1. Rocket
   - sprite_Image.
   - position[x,y]
2. Planet
   - radius
   - texture_Image
   - speed_of_rotation
3. Shield/Defence
   - position[x,y]
   - coverage_angle


<dl>
   <dt>[Stack of transformation matrix:](https://processing.org/reference/pushMatrix_.html)</dt>  
  <dd> The pushMatrix() function saves the current coordinate system to the stack and popMatrix() restores the prior coordinate system. These Stack operations pushMatrix() and popMatrix() are useful in reducing the explicit arithmetic operations.
  </dd> 
  <dt>[Understanding Preload():](https://p5js.org/reference/#/p5/preload)</dt>
  <dd>The preload() function is used to handle asynchronous loading of external files in a blocking way, when defind the setup() function will have to wait till completion of preload() inorder to ensure proper execution. In this project preload() is used to load the images and and ensure proper initialization of instances.
  </dd>
   <dt>[Use of SpriteSheet](https://gamedevelopment.tutsplus.com/tutorials/an-introduction-to-spritesheet-animation--gamedev-13099)</dt>  
  <dd>A sprite is a single graphic image that is incorporated to show a part of the scene. Sprites are a popular way to create large, complex scenes as you can manipulate each sprite separately from the rest of the scene.</dd> 
 
 
</dl>

