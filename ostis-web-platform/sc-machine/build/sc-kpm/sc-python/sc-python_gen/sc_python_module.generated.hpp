#include <memory>

#include "sc-memory/sc_memory.hpp"


#include "sc-memory/sc_event.hpp"




#define sc_python_module_hpp_18_init  bool _InitInternal() override \
{ \
    ScMemoryContext ctx(sc_access_lvl_make_min, "PythonModule::_InitInternal"); \
    bool result = true; \
     \
    return result; \
}


#define sc_python_module_hpp_18_initStatic static bool _InitStaticInternal()  \
{ \
    ScMemoryContext ctx(sc_access_lvl_make_min, "PythonModule::_InitStaticInternal"); \
    bool result = true; \
    return result; \
}


#define sc_python_module_hpp_18_decl \
public:\
	sc_result InitializeGenerated()\
	{\
		if (!ScKeynodes::Init())\
			return SC_RESULT_ERROR;\
		if (!ScAgentInit(false))\
			return SC_RESULT_ERROR;\
		return InitializeImpl();\
	}\
	sc_result ShutdownGenerated()\
	{\
		return ShutdownImpl();\
	}\
	sc_uint32 GetLoadPriorityGenerated()\
	{\
		return 10;\
	}

#define sc_python_module_hpp_PythonModule_impl 

#undef ScFileID
#define ScFileID sc_python_module_hpp

