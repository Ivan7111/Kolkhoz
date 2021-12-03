from common import ScModule, ScAgent, ScEventParams
from sc import *
# import random


class FieldAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        ctx = ScMemoryContext.Create("context")
        place = ctx.HelperResolveSystemIdtf("Place", ScType.NodeConstClass)
        placeIterator = ctx.Iterator3(place, ScType.EdgeAccessConstPosPerm, ScType.NodeConst)
        while placeIterator.Next():
            placeName = placeIterator.Get(2)
            kort1 = ctx.CreateNode(ScType.NodeConstTuple)
            kort2 = ctx.CreateNode(ScType.NodeConstTuple)
            kort3 = ctx.CreateNode(ScType.NodeConstTuple)
            good = ctx.CreateNode(ScType.NodeConstNoRole)
            ctx.HelperSetSystemIdtf("Good", good)
            normal = ctx.CreateNode(ScType.NodeConstNoRole)
            ctx.HelperSetSystemIdtf("Normal", normal)
            bad = ctx.CreateNode(ScType.NodeConstNoRole)
            ctx.HelperSetSystemIdtf("Bad", bad)
            ed1 = ctx.CreateEdge(ScType.EdgeDCommonConst, placeName, kort1)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, good, ed1)
            ed2 = ctx.CreateEdge(ScType.EdgeDCommonConst, placeName, kort2)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, normal, ed2)
            ed3 = ctx.CreateEdge(ScType.EdgeDCommonConst, placeName, kort3)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, bad, ed3)
            culture = ctx.HelperResolveSystemIdtf("Culture", ScType.NodeConstClass)
            cultureIterator = ctx.Iterator3(culture, ScType.EdgeAccessConstPosPerm, ScType.NodeConst)
            while cultureIterator.Next():
                stepen = int(0)
                cultureName = cultureIterator.Get(2)
                cultureSoilTypeIterator = ctx.Iterator5(cultureName, ScType.EdgeDCommonConst, ScType.NodeConst,
                                                        ScType.EdgeAccessConstPosPerm,
                                                        ctx.HelperResolveSystemIdtf("SoilType", ScType.NodeConstNoRole))
                while cultureSoilTypeIterator.Next():
                    cultureSoilType = cultureSoilTypeIterator.Get(2)
                    placeSoilTypeIterator = ctx.Iterator5(placeName, ScType.EdgeDCommonConst, ScType.NodeConst,
                                                          ScType.EdgeAccessConstPosPerm,
                                                          ctx.HelperResolveSystemIdtf("SoilType",
                                                                                      ScType.NodeConstNoRole))
                    while placeSoilTypeIterator.Next():
                        placeSoilType = placeSoilTypeIterator.Get(2)
                        if placeSoilType == cultureSoilType:
                            stepen = stepen + 1
                minimalPlaceHumidityIterator = ctx.Iterator5(placeName, ScType.EdgeDCommonConst, ScType.NodeConst,
                                                             ScType.EdgeAccessConstPosPerm,
                                                             ctx.HelperResolveSystemIdtf("MinimalHumidity",
                                                                                         ScType.NodeConstNoRole))
                while minimalPlaceHumidityIterator.Next():
                    minimalPlaceHumidity = minimalPlaceHumidityIterator.Get(2)
                    minimalCultureHumidityIterator = ctx.Iterator5(cultureName, ScType.EdgeDCommonConst,
                                                                   ScType.NodeConst, ScType.EdgeAccessConstPosPerm,
                                                                   ctx.HelperResolveSystemIdtf("MinimalHumidity",
                                                                                               ScType.NodeConstNoRole))
                    while minimalCultureHumidityIterator.Next():
                        minimalCultureHumidity = minimalCultureHumidityIterator.Get(2)
                        if int(ctx.HelperGetSystemIdtf(minimalCultureHumidity)) < int(
                                ctx.HelperGetSystemIdtf(minimalPlaceHumidity)):
                            stepen = stepen + 1
                maximalPlaceHumidityIterator = ctx.Iterator5(placeName, ScType.EdgeDCommonConst, ScType.NodeConst,
                                                             ScType.EdgeAccessConstPosPerm,
                                                             ctx.HelperResolveSystemIdtf("MaximalHumidity",
                                                                                         ScType.NodeConstNoRole))
                while maximalPlaceHumidityIterator.Next():
                    maximalPlaceHumidity = maximalPlaceHumidityIterator.Get(2)
                    maximalCultureHumidityIterator = ctx.Iterator5(cultureName, ScType.EdgeDCommonConst,
                                                                   ScType.NodeConst, ScType.EdgeAccessConstPosPerm,
                                                                   ctx.HelperResolveSystemIdtf("MaximalHumidity",
                                                                                               ScType.NodeConstNoRole))
                    while maximalCultureHumidityIterator.Next():
                        maximalCultureHumidity = maximalCultureHumidityIterator.Get(2)
                        if int(ctx.HelperGetSystemIdtf(maximalCultureHumidity)) > int(
                                ctx.HelperGetSystemIdtf(maximalPlaceHumidity)):
                            stepen = stepen + 1
                if stepen == 1:
                    ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, kort3, cultureName)
                if stepen == 2:
                    ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, kort2, cultureName)
                if stepen == 3:
                    ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, kort1, cultureName)
        return ScResult.Ok
