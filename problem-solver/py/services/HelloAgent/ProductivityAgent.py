from common import ScModule, ScAgent, ScEventParams
from sc import *


class ProductivityAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        # weather coefficient
        weatherCoefficient = 0.3

        # finding start point
        ctx = ScMemoryContext.Create("context")
        start = ctx.HelperResolveSystemIdtf("ProductivityAgent", ScType.Node)

        # finding place's soil type
        nrel_soil_type = ctx.HelperResolveSystemIdtf("nrel_soil_type", ScType.NodeConstNoRole)
        placeNodeIter = ctx.Iterator3(start, ScType.EdgeAccessConstPosPerm, ScType.Node)
        while placeNodeIter.Next():
            placeNode = placeNodeIter.Get(2)
            soilTypeIter = ctx.Iterator5(placeNode, ScType.EdgeDCommonConst, ScType.Node, ScType.EdgeAccessConstPosPerm,
                                         nrel_soil_type)
            while soilTypeIter.Next():
                placeSoilType = soilTypeIter.Get(2)

        # find all cultures
        agricultureNode = ctx.HelperResolveSystemIdtf("agriculture", ScType.NodeConst)
        cultureIter = ctx.Iterator3(agricultureNode, ScType.EdgeAccessConstPosPerm, ScType.Node)
        while cultureIter.Next():
            cultureNode = cultureIter.Get(2)
            # finding culture's soil coefficient for place's soil type
            nrel_productivity_for_soil = ctx.HelperResolveSystemIdtf("nrel_productivity_for_soil",
                                                                     ScType.NodeConstNoRole)
            soilTypeCollectionIter = ctx.Iterator5(cultureNode, ScType.EdgeDCommonConst, ScType.NodeConstTuple,
                                                   ScType.EdgeAccessConstPosPerm,
                                                   nrel_productivity_for_soil)
            while soilTypeCollectionIter.Next():
                soilTypesCollectionNode = soilTypeCollectionIter.Get(2)
                soilCoefficientIter = ctx.Iterator5(placeSoilType, ScType.EdgeAccessConstPosPerm,
                                                    ScType.Node, ScType.EdgeAccessConstPosPerm,
                                                    soilTypesCollectionNode)
                while soilCoefficientIter.Next():
                    soilCoefficientNode = soilCoefficientIter.Get(2)

            # finding culture's productivity
            nrel_productivity = ctx.HelperResolveSystemIdtf("nrel_productivity", ScType.NodeConstNoRole)
            productivityIter = ctx.Iterator5(cultureNode, ScType.EdgeDCommonConst,
                                             ScType.Node, ScType.EdgeAccessConstPosPerm,
                                             nrel_productivity)
            while productivityIter.Next():
                productivityNode = productivityIter.Get(2)

            # calculating productivity value
            soilCoefValue = ctx.HelperGetSystemIdtf(soilCoefficientNode)
            soilCoef = int(soilCoefValue)
            cultureProductivityValue = ctx.HelperGetSystemIdtf(productivityNode)
            cultureProductivity = int(cultureProductivityValue)
            resultProductivity = weatherCoefficient * (soilCoef / 10) * cultureProductivity

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
            resultProductivityNode = ctx.CreateNode(ScType.Node)
            ctx.HelperSetSystemIdtf(str(resultProductivity), resultProductivityNode)
            nrel_result_productivity = ctx.HelperResolveSystemIdtf("nrel_result_productivity", ScType.NodeConstRole)
            edgeToResult = ctx.CreateEdge(ScType.EdgeDCommonConst, resultCollectNode, resultProductivityNode)
            edgeResultRelation = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nrel_result_productivity, edgeToResult)

        print("Agent successeded")
        return ScResult.Ok
