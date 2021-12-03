from common import ScModule, ScAgent, ScEventParams, ScTemplate
from sc import *
import subprocess


class GarbageCollector(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        ctx = ScMemoryContext.Create("context")
        rem = ctx.HelperResolveSystemIdtf("Garbage", ScType.NodeConst)
        iterator = ctx.Iterator3(rem, ScType.EdgeAccessConstPosPerm, ScType.Link)
        while iterator.Next():
            link = iterator.Get(2)
            ctx.DeleteElement(link)
        return ScResult.Ok
