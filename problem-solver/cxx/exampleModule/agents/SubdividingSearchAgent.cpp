/*
* This source file is part of an OSTIS project. For the latest info, see http://ostis.net
* Distributed under the MIT License
* (See accompanying file COPYING.MIT or copy at http://opensource.org/licenses/MIT)
*/

#include "SubdividingSearchAgent.hpp"
#include <sc-agents-common/utils/GenerationUtils.hpp>
#include <sc-agents-common/utils/IteratorUtils.hpp>
#include <sc-agents-common/utils/AgentUtils.hpp>

using namespace std;
using namespace utils;

namespace exampleModule
{

SC_AGENT_IMPLEMENTATION(SubdividingSearchAgent)
{
  if (!edgeAddr.IsValid())
    return SC_RESULT_ERROR;

  ScAddr questionNode = ms_context->GetEdgeTarget(edgeAddr);
  //ScAddr param = IteratorUtils::getFirstFromSet(ms_context.get(), questionNode);
  //if (!param.IsValid())
  //  return SC_RESULT_ERROR_INVALID_PARAMS;

  ScAddr answer = ms_context->CreateNode(ScType::NodeConstStruct);
  //ms_context->CreateEdge(ScType::EdgeAccessConstPosPerm, answer, param);
  //ms_context->CreateEdge(ScType::EdgeAccessConstPosPerm, answer, Keynodes::nrel_subdividing);



ScIterator3Ptr it3 = ms_context.Iterator3(
            questionNode,
            ScType::EdgeAccessConstPosPerm,
            ScType::Unknown);
while (it3->Next())
{
  ScAddr sheaf = it3->Get(2);
  ms_context->CreateEdge(ScType::EdgeAccessConstPosPerm, answer, sheaf);
}


  //ScIterator5Ptr iterator5 = IteratorUtils::getIterator5(ms_context.get(), param, Keynodes::nrel_subdividing, false);
  //while (iterator5->Next())
  //{
  //  ScAddr sheaf = iterator5->Get(0);
  //  ms_context->CreateEdge(ScType::EdgeAccessConstPosPerm, answer, iterator5->Get(1));
  //  ms_context->CreateEdge(ScType::EdgeAccessConstPosPerm, answer, sheaf);
  //  ms_context->CreateEdge(ScType::EdgeAccessConstPosPerm, answer, iterator5->Get(3));
  //  GenerationUtils::addSetToOutline(ms_context.get(), sheaf, answer);
  //}

  AgentUtils::finishAgentWork(ms_context.get(), questionNode, answer);
  return SC_RESULT_OK;
}
}
