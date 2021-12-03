/*
 * This source file is part of an OSTIS project. For the latest info, see http://ostis.net
 * Distributed under the MIT License
 * (See accompanying file COPYING.MIT or copy at http://opensource.org/licenses/MIT)
 */

#pragma once

#include "sc-memory/kpm/sc_agent.hpp"

#include "test_sc_agent_result.generated.hpp"

class ATestResultOk: public ScAgentAction
{
  SC_CLASS(Agent, CmdClass("test_result_ok"))
  SC_GENERATED_BODY()

  // for test purposes
public:
  SC_PROPERTY(Keynode("test_result_ok"), ForceCreate)
  static ScAddr ms_keynodeTestResultOk;
};
