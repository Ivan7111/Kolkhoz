from common import ScModule, ScAgent, ScEventParams, ScTemplate
from sc import *
import subprocess


class InitAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        ctx = ScMemoryContext.Create("context")
        arg1 = 0
        arg2 = 0
        arg3 = 0
        arg4 = 0
        arg5 = 0
#        print("kek")
        subprocess.call(["/home/ilya/Desktop/ass/weatherAgentLinux", str(arg1), str(arg2), str(arg3), str(arg4), str(arg5)])
        f = open('/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/scripts/newHtml.html', 'r')
        page = f.read()
        init = ctx.HelperResolveSystemIdtf("Initer", ScType.NodeConst)
        iterator = ctx.Iterator3(init, ScType.EdgeAccessConstPosPerm, ScType.Link)
        while iterator.Next():
            link = iterator.Get(2)
            ctx.SetLinkContent(link, page)
        return ScResult.Ok
