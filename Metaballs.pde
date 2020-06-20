int blobAmount = 10;
Blob[] blobs = new Blob[blobAmount];


void setup(){
  size(1280, 720);
  colorMode(HSB);
  for(int i = 0; i < blobAmount; i++){
    blobs[i] = new Blob(new PVector(random(width), random(height)), random(100)); 
  }


}

void draw(){
  background(0);
  for(int i = 0; i < blobAmount; i++){
    blobs[i].Update();
    //print("POSITION : " + blobs[i].m_position, "VELOCITY: " + blobs[i].m_velocity);
    blobs[i].Show();
  }
  loadPixels();
  
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      int index = x + y * width;
      
      float sum = 0.0;
      for(int i = 0; i < blobAmount; i++){
        float d = dist(x, y, blobs[i].m_position.x, blobs[i].m_position.y);
        
        sum += (100 * blobs[i].m_radius / d);
      }
      
      pixels[index] = color(sum, 255, 255);
    }
  }
  updatePixels();  
}
