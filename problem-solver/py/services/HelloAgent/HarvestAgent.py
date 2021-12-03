from common import ScModule, ScAgent, ScEventParams
from sc import *



class HarvestAgent(ScAgent):

   def RunImpl(self, evt: ScEventParams) -> ScResult:
       # finding start point
       ctx = ScMemoryContext.Create("context")
       start = ctx.HelperResolveSystemIdtf("HarvestAgent", ScType.Node)

       # finding place's area
       nrel_area = ctx.HelperResolveSystemIdtf("nrel_area", ScType.NodeConstNoRole)
       placeNodeIter = ctx.Iterator3(start, ScType.EdgeAccessConstPosPerm, ScType.Node)
       while placeNodeIter.Next():
           placeNode = placeNodeIter.Get(2)
           areaIter = ctx.Iterator5(placeNode, ScType.EdgeDCommonConst, ScType.Node, ScType.EdgeAccessConstPosPerm,
                                    nrel_area)
           while areaIter.Next():
               placeAreaNode = areaIter.Get(2)

        # find result productivity construction
       nrel_result_productivity = ctx.HelperResolveSystemIdtf("nrel_result_productivity", ScType.NodeConstRole)
       resultProductivityIter = ctx.Iterator5(ScType.NodeConstTuple, ScType.EdgeDCommonConst, ScType.Node,
                                              ScType.EdgeAccessConstPosPerm,
                                              nrel_result_productivity)
       while resultProductivityIter.Next():
           resultProductivityNode = resultProductivityIter.Get(2)

           # calculating harvest value
           areaValue = ctx.HelperGetSystemIdtf(placeAreaNode)
           area = int(areaValue)
           resultProductivityValue = ctx.HelperGetSystemIdtf(resultProductivityNode)
           resultProductivity = int(resultProductivityValue)
           harvest = area * resultProductivity

           # find result collection
           resultCollectNode = resultProductivityIter.Get(0)
           # creating new result construction
           resultHarvestNode = ctx.CreateNode(ScType.Node)
           ctx.HelperSetSystemIdtf(str(harvest), resultHarvestNode)
           nrel_result_harvest = ctx.HelperResolveSystemIdtf("nrel_result_harvest", ScType.NodeConstRole)
           edgeToResult = ctx.CreateEdge(ScType.EdgeDCommonConst, resultCollectNode, resultHarvestNode)
           edgeResultRelation = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nrel_result_harvest, edgeToResult)

       print("Agent successeded")
       return ScResult.Ok
