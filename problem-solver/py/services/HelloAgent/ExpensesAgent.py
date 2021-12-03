from common import ScModule, ScAgent, ScEventParams
from sc import *


class ExpensesAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        # finding start point
        ctx = ScMemoryContext.Create("context")
        start = ctx.HelperResolveSystemIdtf("ExpensesAgent", ScType.Node)

        # finding place's area
        nrel_area = ctx.HelperResolveSystemIdtf("nrel_area", ScType.NodeConstNoRole)
        placeNodeIter = ctx.Iterator3(start, ScType.EdgeAccessConstPosPerm, ScType.Node)
        while placeNodeIter.Next():
            placeNode = placeNodeIter.Get(2)
            areaIter = ctx.Iterator5(placeNode, ScType.EdgeDCommonConst, ScType.Node, ScType.EdgeAccessConstPosPerm,
                                     nrel_area)
            while areaIter.Next():
                placeAreaNode = areaIter.Get(2)

        # find all cultures
        agricultureNode = ctx.HelperResolveSystemIdtf("agriculture", ScType.NodeConst)
        cultureIter = ctx.Iterator3(agricultureNode, ScType.EdgeAccessConstPosPerm, ScType.Node)
        while cultureIter.Next():
            cultureNode = cultureIter.Get(2)
            # finding culture's needed number of seeds for hectare
            nrel_number_of_seeds = ctx.HelperResolveSystemIdtf("nrel_number_of_seeds_per_hectare",
                                                               ScType.NodeConstNoRole)
            numberOfSeedsIter = ctx.Iterator5(cultureNode, ScType.EdgeDCommonConst, ScType.NodeConstTuple,
                                              ScType.EdgeAccessConstPosPerm,
                                              nrel_number_of_seeds)
            while numberOfSeedsIter.Next():
                numberOfSeedsNode = numberOfSeedsIter.Get(2)

            # finding culture's cost of seed
            nrel_cost_of_seed = ctx.HelperResolveSystemIdtf("nrel_cost_of_seed", ScType.NodeConstNoRole)
            costOfSeedIter = ctx.Iterator5(cultureNode, ScType.EdgeDCommonConst,
                                           ScType.Node, ScType.EdgeAccessConstPosPerm,
                                           nrel_cost_of_seed)
            while costOfSeedIter.Next():
                costOfSeedNode = costOfSeedIter.Get(2)

            # calculating expenses value
            areaValue = ctx.HelperGetSystemIdtf(placeAreaNode)
            area = int(areaValue)
            cultureNumberOfSeedsValue = ctx.HelperGetSystemIdtf(numberOfSeedsNode)
            numberOfSeeds = int(cultureNumberOfSeedsValue)
            cultureCostOfSeedValue = ctx.HelperGetSystemIdtf(costOfSeedNode)
            costOfSeed = int(cultureCostOfSeedValue)
            resultExpenses = numberOfSeeds * area * costOfSeed

            # creating result
            resultCollectNode = ctx.CreateNode(ScType.NodeConstTuple)
            # creating culture role in collection construction
            rrel_culture = ctx.HelperResolveSystemIdtf("rrel_culture", ScType.NodeConstRole)
            edgeCultureInCollect = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, resultCollectNode, cultureNode)
            edgeCultureRole = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, rrel_culture, edgeCultureInCollect)
            # creating field role in collection construction
            rrel_field = ctx.HelperResolveSystemIdtf("rrel_field", ScType.NodeConstRole)
            edgeFieldInCollect = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, resultCollectNode, placeNode)
            edgeFieldRole = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, rrel_field, edgeFieldInCollect)
            # creating result construction
            resultExpensesNode = ctx.CreateNode(ScType.Node)
            ctx.HelperSetSystemIdtf(str(resultExpenses), resultExpensesNode)
            nrel_result_expenses = ctx.HelperResolveSystemIdtf("nrel_result_expenses", ScType.NodeConstRole)
            edgeToResult = ctx.CreateEdge(ScType.EdgeDCommonConst, resultCollectNode, resultExpensesNode)
            edgeResultRelation = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nrel_result_expenses, edgeToResult)

        print("Agent successeded")
        return ScResult.Ok
