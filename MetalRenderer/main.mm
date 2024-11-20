//
//  main.mm
//  MetalRenderer
//
//  Created by Suriya Dakshina Murthy on 11/17/24.
//

#include "mtl_engine.hpp"

int main() {
    MTLEngine engine;
    engine.init();
    engine.run();
    engine.cleanup();
    
    return 0;
}
