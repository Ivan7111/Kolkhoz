#include <memory>

#include "sc-memory/sc_memory.hpp"


#include "sc-memory/sc_event.hpp"




#define hwModule_hpp_18_init  bool _InitInternal() override \
{ \
    ScMemoryContext ctx(sc_access_lvl_make_min, "HelloWorldModule::_InitInternal"); \
    bool result = true; \
     \
    return result; \
}


#define hwModule_hpp_18_initStatic static bool _InitStaticInternal()  \
{ \
    ScMemoryContext ctx(sc_access_lvl_make_min, "HelloWorldModule::_InitStaticInternal"); \
    bool result = true; \
    return result; \
}


#define hwModule_hpp_18_decl \
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
		return 100;\
	}

#define hwModule_hpp_HelloWorldModule_impl 

#undef ScFileID
#define ScFileID hwModule_hpp

