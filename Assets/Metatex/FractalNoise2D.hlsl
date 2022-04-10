#include "Packages/jp.keijiro.noiseshader/Shader/SimplexNoise2D.hlsl"

void FractalNoise2D_Level2_float(float2 p, out float value)
{
    value = SimplexNoiseGrad(p    ).z +
            SimplexNoiseGrad(p * 2).z / 2;
}

void FractalNoise2D_Level3_float(float2 p, out float value)
{
    value = SimplexNoiseGrad(p    ).z     +
            SimplexNoiseGrad(p * 2).z / 2 +
            SimplexNoiseGrad(p * 4).z / 4;
}

void FractalNoise2D_Level4_float(float2 p, out float value)
{
    value = SimplexNoiseGrad(p    ).z     +
            SimplexNoiseGrad(p * 2).z / 2 +
            SimplexNoiseGrad(p * 4).z / 4 +
            SimplexNoiseGrad(p * 8).z / 8;
}

void FractalNoise2D_Level5_float(float2 p, out float value)
{
    value = SimplexNoiseGrad(p     ).z      +
            SimplexNoiseGrad(p *  2).z /  2 +
            SimplexNoiseGrad(p *  4).z /  4 +
            SimplexNoiseGrad(p *  8).z /  8 +
            SimplexNoiseGrad(p * 16).z / 16;
}

void FractalNoise2D_Level6_float(float2 p, out float value)
{
    value = SimplexNoiseGrad(p     ).z      +
            SimplexNoiseGrad(p *  2).z /  2 +
            SimplexNoiseGrad(p *  4).z /  4 +
            SimplexNoiseGrad(p *  8).z /  8 +
            SimplexNoiseGrad(p * 16).z / 16 +
            SimplexNoiseGrad(p * 32).z / 32;
}
