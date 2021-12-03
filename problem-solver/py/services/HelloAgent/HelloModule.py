from ExpensesAgent import ExpensesAgent
from GarbageCollector import GarbageCollector
from HarvestAgent import HarvestAgent
from InitAgent import InitAgent
from ProductivityAgent import ProductivityAgent
from ProfitAgent import ProfitAgent
from common import ScModule, ScKeynodes, ScPythonEventType
from keynodes import Keynodes
from HelloAgent import HelloAgent
from FieldAgent import FieldAgent
from SimilarityAgent import SimilaritiesAgent
from FarmAgent import FarmAgent

from sc import *


class HelloModule(ScModule):

    def __init__(self):
        ScModule.__init__(
            self,
            ctx=__ctx__,
            cpp_bridge=__cpp_bridge__,
            keynodes=[
            ],
        )

    def OnInitialize(self, params):
        print('Initialize kolkhoz module')
        init = self.ctx.HelperResolveSystemIdtf("Initer", ScType.NodeConst)
        rem = self.ctx.HelperResolveSystemIdtf("Garbage", ScType.NodeConst)
        kHello = self.ctx.HelperResolveSystemIdtf("ReadDNAHere", ScType.NodeConst)
        kHello1 = self.ctx.HelperResolveSystemIdtf("FindCulture", ScType.NodeConst)
        kHello2 = self.ctx.HelperResolveSystemIdtf("SimilarContextOfUse", ScType.NodeConst)
        kHello3 = self.ctx.HelperResolveSystemIdtf("CreateFerm", ScType.NodeConst)
        productivityAgentNode = self.ctx.HelperResolveSystemIdtf("ProductivityAgent", ScType.NodeConst)
        expensesAgentNode = self.ctx.HelperResolveSystemIdtf("ExpensesAgent", ScType.NodeConst)
        harvestAgentNode = self.ctx.HelperResolveSystemIdtf("HarvestAgent", ScType.NodeConst)
        profitAgentNode = self.ctx.HelperResolveSystemIdtf("ProfitAgent", ScType.NodeConst)
        agentI = InitAgent(self)
        agentG = GarbageCollector(self)
        agent = HelloAgent(self)
        agent1 = FieldAgent(self)
        agent2 = SimilaritiesAgent(self)
        agent3 = FarmAgent(self)
        productivityAgent = ProductivityAgent(self)
        expensesAgent = ExpensesAgent(self)
        harvestAgent = HarvestAgent(self)
        profitAgent = ProfitAgent(self)
        agentI.Register(init, ScPythonEventType.AddOutputEdge)
        agentG.Register(rem, ScPythonEventType.AddOutputEdge)
        agent.Register(kHello, ScPythonEventType.AddOutputEdge)
        agent1.Register(kHello1, ScPythonEventType.AddOutputEdge)
        agent2.Register(kHello2, ScPythonEventType.AddOutputEdge)
        agent3.Register(kHello3, ScPythonEventType.AddOutputEdge)
        productivityAgent.Register(productivityAgentNode, ScPythonEventType.AddOutputEdge)
        expensesAgent.Register(expensesAgentNode, ScPythonEventType.AddOutputEdge)
        harvestAgent.Register(harvestAgentNode, ScPythonEventType.AddOutputEdge)
        profitAgent.Register(profitAgentNode, ScPythonEventType.AddOutputEdge)

    def OnShutdown(self):
        print('Shutting down kolkhoz agents')


service = HelloModule()
service.Run()
