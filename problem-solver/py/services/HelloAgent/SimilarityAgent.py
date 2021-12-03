from common import ScModule, ScAgent, ScEventParams
from sc import *


class SimilaritiesAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        ctx = ScMemoryContext.Create("context")
        start = ctx.HelperResolveSystemIdtf("SimilarContextOfUse", ScType.NodeConst)
        nrel_context_of_use = ctx.HelperResolveSystemIdtf("nrel_context_of_use", ScType.NodeConstNoRole)
        nrel_similar_on_context_of_use = ctx.HelperResolveSystemIdtf("nrel_similar_on_context_of_use",
                                                                     ScType.NodeConstNoRole)
        collectResult = ctx.CreateNode(ScType.NodeConstTuple)

        # finding plant node
        iterator3 = ctx.Iterator3(start, ScType.EdgeAccessConstPosPerm, ScType.Node)
        while iterator3.Next():
            nonNode = iterator3.Get(2)
            iter3 = ctx.Iterator3(nonNode, ScType.EdgeAccessConstPosPerm, ScType.NodeConstClass)
            while iter3.Next():
                mainNode = iter3.Get(2)
                edgeT = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, collectResult)
                edgeR = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nrel_similar_on_context_of_use, edgeT)
                nodeNewRel = ctx.CreateNode(ScType.NodeConstRole)
                ctx.HelperSetSystemIdtf("nrel_similar_on_context_of_use_with_" + ctx.HelperGetSystemIdtf(mainNode),
                                        nodeNewRel)
                # finding collect node for context of use
                it5 = ctx.Iterator5(mainNode, ScType.EdgeDCommonConst, ScType.NodeConst, ScType.EdgeAccessConstPosPerm,
                                    nrel_context_of_use)
                while it5.Next():
                    collectNode = it5.Get(2)
                    # finding every node of collect
                    iterColUse3 = ctx.Iterator3(collectNode, ScType.EdgeAccessConstPosPerm, ScType.NodeConst)
                    while iterColUse3.Next():
                        contextOfUse = iterColUse3.Get(2)
                        collectSimUsePlants = ctx.CreateNode(ScType.NodeConstTuple)
                        edgeSimUsePlants = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, contextOfUse,
                                                          collectSimUsePlants)
                        iterUse3 = ctx.Iterator3(ScType.NodeConst, ScType.EdgeAccessConstPosPerm, contextOfUse)
                        numberOfPlants = 0
                        while iterUse3.Next():
                            collectNode2 = iterUse3.Get(0)
                            iterPlant5 = ctx.Iterator5(ScType.NodeConst, ScType.EdgeDCommonConst, collectNode2,
                                                       ScType.EdgeAccessConstPosPerm, nrel_context_of_use)
                            while iterPlant5.Next():
                                anotherPlant = iterPlant5.Get(0)
                                if anotherPlant != mainNode:
                                    numberOfPlants += 1
                                    edge = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, collectSimUsePlants,
                                                          anotherPlant)
                        if numberOfPlants != 0:
                            edgeT = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, collectResult, edgeSimUsePlants)
                            edgeR = ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nodeNewRel, edgeT)
                        else:
                            ctx.DeleteElement(collectSimUsePlants)

            ctx.DeleteElement(nonNode)
            print("Agent succeeded")
        return ScResult.Ok
