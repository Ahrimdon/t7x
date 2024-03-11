#include <std_include.hpp>
#include "loader/component_loader.hpp"
#include "game/game.hpp"
#include <utils/hook.hpp>

namespace branding
{
	namespace
	{
		const char* get_ingame_console_prefix_stub()
		{
			return "T7x >";
		}
	}

	struct component final : client_component
	{
		void post_unpack() override
		{
			// Change window title prefix
			utils::hook::copy_string(0x14303F3D8_g, "T7x");

			// Change ingame console prefix
			utils::hook::call(0x141339970_g, get_ingame_console_prefix_stub);
		}
	};
}

REGISTER_COMPONENT(branding::component)
