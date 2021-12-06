from common import ScModule, ScAgent, ScEventParams
from sc import *


class ProfitAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        # finding start point
        print("finding start point")
        ctx = ScMemoryContext.Create("context")
        start = ctx.HelperResolveSystemIdtf("ProfitAgent", ScType.Node)

        # finding place node
        print("finding place node")
        placeNodeIter = ctx.Iterator3(start, ScType.EdgeAccessConstPosPerm, ScType.Node)
        while placeNodeIter.Next():
            placeNode = placeNodeIter.Get(2)
            # finding result collection
            print("find result collection")
            rrel_field = ctx.HelperResolveSystemIdtf("rrel_field", ScType.NodeConstRole)
            resultCollectionIter = ctx.Iterator5(ScType.NodeConstTuple, ScType.EdgeAccessConstPosPerm, placeNode,
                                             ScType.EdgeAccessConstPosPerm,
                                             rrel_field)
            while resultCollectionIter.Next():
                resultCollectNode = resultCollectionIter.Get(0)
                # find result harvest construction
                print("find result harvest construction")
                nrel_result_harvest = ctx.HelperResolveSystemIdtf("nrel_result_harvest", ScType.NodeConstRole)
                resultHarvestIter = ctx.Iterator5(resultCollectNode, ScType.EdgeDCommonConst, ScType.Node,
                                          ScType.EdgeAccessConstPosPerm,
                                          nrel_result_harvest)
                while resultHarvestIter.Next():
                    resultHarvestNode = resultHarvestIter.Get(2)
                    # find culture attached to this construction
                    print("find culture attached to this construction")
                    rrel_culture = ctx.HelperResolveSystemIdtf("rrel_culture", ScType.NodeConstRole)
                    resultCultureIter = ctx.Iterator5(resultCollectNode, ScType.EdgeAccessConstPosPerm, ScType.Node,
                                              ScType.EdgeAccessConstPosPerm,
                                              rrel_culture)
                    while resultCultureIter.Next():
                        cultureNode = resultCultureIter.Get(2)
                        # fing culture's cost per ton
                        print("fing culture's cost per ton")
                        nrel_cost_per_ton = ctx.HelperResolveSystemIdtf("nrel_cost_per_ton", ScType.NodeConstNoRole)
                        costPerTonIter = ctx.Iterator5(cultureNode, ScType.EdgeDCommonConst, ScType.Node,
                                               ScType.EdgeAccessConstPosPerm,
                                               nrel_cost_per_ton)
                        while costPerTonIter.Next():
                            costPerTonNode = costPerTonIter.Get(2)

                            # calculating productivity value
                            print("calculating productivity value")
                            harvestValue = ctx.HelperGetSystemIdtf(resultHarvestNode)
                            harvest = float(harvestValue)
                            costPerTonValue = ctx.HelperGetSystemIdtf(costPerTonNode)
                            costPerTon = int(costPerTonValue)
                            resultProfit = (harvest / 1000) * costPerTon

                            # creating result construction
                            print("creating result construction")
                            resultProfitNode = ctx.CreateNode(ScType.Node)
                            ctx.HelperSetSystemIdtf(str(resultProfit), resultProfitNode)
                            nrel_result_profit = ctx.HelperResolveSystemIdtf("nrel_result_profit",
                                                             ScType.NodeConstRole)
                            edgeToResult = ctx.CreateEdge(ScType.EdgeDCommonConst, resultCollectNode, resultProfitNode)
                            edgeResultRelation = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nrel_result_profit,
                                                edgeToResult)

        print("Agent successeded")
        return ScResult.Ok
