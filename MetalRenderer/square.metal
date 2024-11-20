//
//  square.metal
//  MetalRenderer
//
//  Created by Suriya Dakshina Murthy on 11/18/24.
//

#include <metal_stdlib>
using namespace metal;

#include "VertexData.hpp"

struct VertexOut {
    // [[position]] attribute indicates this position is in clip-space coordinates
    float4 position [[position]];
    
    // There is no special attribute for texture coordinates, the rasterizer
    // interpolates its values and passes it to fragment shader
    float2 textureCoordinate;
};

vertex VertexOut vertexShader(uint vertexID [[vertex_id]], constant VertexData* vertexData) {
    VertexOut out;
    out.position = vertexData[vertexID].position;
    out.textureCoordinate = vertexData[vertexID].textureCoordinate;
    return out;
}

fragment float4 fragmentShader(VertexOut in [[stage_in]], texture2d<float> colorTexture [[texture(0)]]) {
    constexpr sampler textureSampler(mag_filter::linear, min_filter::linear);
    
    // Sample the texture to obtain the color
    const float4 colorSample = colorTexture.sample(textureSampler, in.textureCoordinate);
    return colorSample;
}
