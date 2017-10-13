//	DX11Renderer - VDemo | DirectX11 Renderer
//	Copyright(C) 2016  - Volkan Ilbeyli
//
//	This program is free software : you can redistribute it and / or modify
//	it under the terms of the GNU General Public License as published by
//	the Free Software Foundation, either version 3 of the License, or
//	(at your option) any later version.
//
//	This program is distributed in the hope that it will be useful,
//	but WITHOUT ANY WARRANTY; without even the implied warranty of
//	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
//	GNU General Public License for more details.
//
//	You should have received a copy of the GNU General Public License
//	along with this program.If not, see <http://www.gnu.org/licenses/>.
//
//	Contact: volkanilbeyli@gmail.com

//todo: worldViewProj
cbuffer perFrame
{
	matrix viewProj;
	matrix view;
	matrix proj;
}

cbuffer perModel
{
    matrix world;
	matrix normalMatrix;
}

struct VSIn
{
	float3 position : POSITION;
	float3 normal	: NORMAL;
	float3 tangent	: TANGENT0;
	float2 texCoord : TEXCOORD0;    
};

struct PSIn
{
	float4 position : SV_POSITION;
};

PSIn VSMain(VSIn In)
{
	matrix wvp = mul(proj, mul(view, world));

	PSIn Out;
	Out.position = mul(wvp  , float4(In.position, 1));
	return Out;
}