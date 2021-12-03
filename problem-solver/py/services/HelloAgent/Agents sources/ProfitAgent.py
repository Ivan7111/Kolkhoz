from common import ScModule, ScAgent, ScEventParams
from sc import *


class ProfitAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        # finding start point
        ctx = ScMemoryContext.Create("context")
        start = ctx.HelperResolveSystemIdtf("ProfitAgent", ScType.Node)

        # find result harvest construction
        nrel_result_harvest = ctx.HelperResolveSystemIdtf("nrel_result_harvest", ScType.NodeConstRole)
        resultHarvestIter = ctx.Iterator5(ScType.NodeConstTuple, ScType.EdgeDCommonConst, ScType.Node,
                                          ScType.EdgeAccessConstPosPerm,
                                          nrel_result_harvest)
        while resultHarvestIter.Next():
            resultHarvestNode = resultHarvestIter.Get(2)
            # find culture attached to this construction
            rrel_culture = ctx.HelperResolveSystemIdtf("rrel_culture", ScType.NodeConstRole)
            resultCollectionNode = resultHarvestIter.Get(0)
            resultCultureIter = ctx.Iterator5(resultCollectionNode, ScType.EdgeAccessConstPosPerm, ScType.Node,
                                              ScType.EdgeAccessConstPosPerm,
                                              rrel_culture)
            while resultCultureIter.Next():
                cultureNode = resultCultureIter.Get(2)
                # fing culture's cost per ton
                nrel_cost_per_ton = ctx.HelperResolveSystemIdtf("nrel_cost_per_ton", ScType.NodeConstNoRole)
                costPerTonIter = ctx.Iterator5(cultureNode, ScType.EdgeDCommonConst, ScType.Node,
                                               ScType.EdgeAccessConstPosPerm,
                                               nrel_cost_per_ton)
                while costPerTonIter.Next():
                    costPerTonNode = costPerTonIter.Get(2)

            # calculating productivity value
            harvestValue = ctx.HelperGetSystemIdtf(resultHarvestNode)
            harvest = int(harvestValue)
            costPerTonValue = ctx.HelperGetSystemIdtf(costPerTonNode)
            costPerTon = int(costPerTonValue)
            resultProfit = (harvest / 1000) * costPerTon

            # creating result construction
            resultProfitNode = ctx.CreateNode(ScType.Node)
            ctx.HelperSetSystemIdtf(str(resultProfit), resultProfitNode)
            nrel_result_profit = ctx.HelperResolveSystemIdtf("nrel_result_profit",
                                                             ScType.NodeConstRole)
            edgeToResult = ctx.CreateEdge(ScType.EdgeDCommonConst, resultCollectionNode, resultProfitNode)
            edgeResultRelation = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nrel_result_profit,
                                                edgeToResult)

        print("Agent successeded")
        return ScResult.Ok
