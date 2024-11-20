//
//  VertexData.hpp
//  MetalRenderer
//
//  Created by Suriya Dakshina Murthy on 11/18/24.
//

#pragma once
#include <simd/simd.h>

using namespace simd;

struct VertexData {
    float4 position;
    float2 textureCoordinate;
};
