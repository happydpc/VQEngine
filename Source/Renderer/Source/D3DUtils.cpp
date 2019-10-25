//	VQEngine | DirectX11 Renderer
//	Copyright(C) 2018  - Volkan Ilbeyli
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

#include "D3DUtils.h"

#include "Utilities/Log.h"

#include <cassert>



//---------------------------------------------------------------------------------------------------------------------
// D3D12 UTILIY FUNCTIONS
//---------------------------------------------------------------------------------------------------------------------
namespace VQ_D3D12_UTILS
{
	void ThrowIfFailed(HRESULT hr)
	{
		if (FAILED(hr))
		{
			Log::Error("Win Call failed, HR=0x%08X", static_cast<UINT>(hr));
			assert(false);
		}
	}



}

