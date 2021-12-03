from common import ScModule, ScAgent, ScEventParams
from sc import *

animal_number_dict = {}
animal_income = {}
animal_costs = {}
'''
animal_income = {
    "Корова": "100 л молока",
    "Курица": "30 шт яиц"
}
animal_costs = {
    "Корова": "10 кг овса",
    "Курица": "4 кг зерна"
}
'''
_income = []
_costs = []


def parseStr(text=''):
    block_text = text.split(', ')

    for i in block_text:
        animal_ = i.split(': ')
        animal_number_dict[animal_[0]] = int(animal_[1])

    for key, value in animal_number_dict.items():
        print("{0}: {1}".format(key, value))


def create_income_and_costs():
    for key in animal_number_dict:
        str1 = animal_income[key]
        str1_array = str1.split(' ')

        int_number = int(str1_array[0])
        int_number *= int(animal_number_dict[key])

        str1_array[0] = str(int_number)

        str1 = ' '.join(str1_array)

        _income.append(str1)

        # //////////////

        str2 = animal_costs[key]
        str2_array = str2.split(' ')

        int_number2 = int(str2_array[0])
        int_number2 *= int(animal_number_dict[key])

        str2_array[0] = str(int_number2)

        str2 = ' '.join(str2_array)

        _costs.append(str2)


class FarmAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:

        ctx = ScMemoryContext.Create("context")

        start = ctx.HelperResolveSystemIdtf("CreateFerm", ScType.NodeConst)
        it = ctx.Iterator3(start, ScType.EdgeAccessConstPosPerm, ScType.Link)
        targetSet = None
        if it.Next():
            targetSet = it.Get(2)
            if targetSet.IsValid():
                print("Set founded")
                str1 = ctx.GetLinkContent(targetSet)
                parseStr(str1.AsString())
                # parseStr(str1)

        # new function
        costs_node = ctx.HelperResolveSystemIdtf("CostsPerMonth", ScType.NodeConstNoRole)
        income_node = ctx.HelperResolveSystemIdtf("ProfitPerMonth", ScType.NodeConstNoRole)
        node_t = None
        global animal_costs
        global animal_income

        for key in animal_number_dict:
            start1 = ctx.HelperResolveSystemIdtf(key, ScType.NodeConstClass)
            iterator5 = ctx.Iterator5(start1, ScType.EdgeDCommonConst, ScType.NodeConstTuple,
                                      ScType.EdgeAccessConstPosPerm,
                                      costs_node)

            if iterator5.Next():
                node_t = iterator5.Get(2)
                if node_t.IsValid():
                    print("Set founded")
                    iterator3 = ctx.Iterator3(node_t, ScType.EdgeAccessConstPosPerm, ScType.Link)
                    if iterator3.Next():
                        link = iterator3.Get(2)
                        content_s1 = ctx.GetLinkContent(link)
                        if content_s1:
                            animal_costs[key] = content_s1.AsString()

            iterator5 = ctx.Iterator5(start1, ScType.EdgeDCommonConst, ScType.NodeConstTuple,
                                      ScType.EdgeAccessConstPosPerm,
                                      income_node)
            if iterator5.Next():
                node_t = iterator5.Get(2)
                if node_t.IsValid():
                    print("Set founded22")
                    iterator3 = ctx.Iterator3(node_t, ScType.EdgeAccessConstPosPerm, ScType.Link)
                    if iterator3.Next():
                        link = iterator3.Get(2)
                        content_s2 = ctx.GetLinkContent(link)
                        if content_s2:
                            animal_income[key] = content_s2.AsString()

        create_income_and_costs()
        # new function
        link_addr1 = []
        link_addr2 = []

        fermaIn_node = ctx.HelperResolveSystemIdtf("FermaIn", ScType.NodeConstTuple)
        fermaOut_node = ctx.HelperResolveSystemIdtf("FermaOut", ScType.NodeConstTuple)

        for i in _income:
            _incomeArray = i.split(" ")
            node_substance = ctx.HelperResolveSystemIdtf(_incomeArray[2],ScType.NodeConst)
            class_substance = ctx.HelperResolveSystemIdtf("substance",ScType.NodeConstClass)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, class_substance, node_substance)
            node_number = ctx.HelperResolveSystemIdtf(_incomeArray[0],ScType.NodeConst)
            bin_edge = ctx.CreateEdge(ScType.EdgeDCommonConst, node_substance, node_number)
            amount_of_substance = ctx.HelperResolveSystemIdtf("amount_of_substance", ScType.NodeConstNoRole)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, amount_of_substance, bin_edge)
            class_measure = ctx.HelperResolveSystemIdtf(_incomeArray[1], ScType.NodeConstClass)
            class_number = ctx.HelperResolveSystemIdtf("number", ScType.NodeConstClass)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, class_number, node_number)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, class_measure, node_number)

            # link_addr1.append(ctx.CreateLink())
            # ctx.SetLinkContent(link_addr1[-1], str(i))
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, fermaIn_node, node_substance)

        for i in _costs:
            _incomeArray = i.split(" ")
            node_substance = ctx.HelperResolveSystemIdtf(_incomeArray[2], ScType.NodeConst)
            class_substance = ctx.HelperResolveSystemIdtf("substance", ScType.NodeConstClass)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, class_substance, node_substance)
            node_number = ctx.HelperResolveSystemIdtf(_incomeArray[0], ScType.NodeConst)
            bin_edge = ctx.CreateEdge(ScType.EdgeDCommonConst, node_substance, node_number)
            amount_of_substance = ctx.HelperResolveSystemIdtf("amount_of_substance", ScType.NodeConstNoRole)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, amount_of_substance, bin_edge)
            class_measure = ctx.HelperResolveSystemIdtf(_incomeArray[1], ScType.NodeConstClass)
            class_number = ctx.HelperResolveSystemIdtf("number", ScType.NodeConstClass)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, class_number, node_number)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, class_measure, node_number)

            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, fermaOut_node, node_substance)

        basic_node3 = ctx.HelperResolveSystemIdtf("Union", ScType.NodeConst)
        edgeAddr1 = ctx.CreateEdge(ScType.EdgeDCommonConst, basic_node3, fermaOut_node)
        edgeAddr2 = ctx.CreateEdge(ScType.EdgeDCommonConst, basic_node3, fermaIn_node)

        node_In = ctx.HelperResolveSystemIdtf("income", ScType.NodeConstNoRole)
        node_Out = ctx.HelperResolveSystemIdtf("costs", ScType.NodeConstNoRole)

        ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, node_Out, edgeAddr1)
        ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, node_In, edgeAddr2)
        # return ScResult.Ok
        # parseStr("cow: 4")
        '''
        costs_node = ctx.HelperResolveSystemIdtf("CostsPerMonth", ScType.NodeConstNoRole)
        income_node = ctx.HelperResolveSystemIdtf("ProfitPerMonth", ScType.NodeConstNoRole)
        
        for key in animal_number_dict:

            start1 = ctx.HelperResolveSystemIdtf(key, ScType.NodeConstClass)
            iterator5 = ctx.Iterator5(start1, ScType.EdgeDCommonConst, ScType.NodeConstTuple, ScType.EdgeAccessConstPosPerm,
                                      costs_node)

            node_t = None
            global animal_costs
            global animal_income

            if iterator5.Next():
                node_t = iterator5.Get(2)
                if node_t.IsValid():
                    print("Set founded")
                    iterator3 = ctx.Iterator3(node_t, ScType.EdgeAccessConstPosPerm, ScType.Link)
                    if iterator3.Next():
                        link = iterator3.Get(2)
                        content_s1 = ctx.GetLinkContent(link)
                        if content_s1:
                            animal_costs = {key: content_s1.AsString()}

            iterator5 = ctx.Iterator5(start1, ScType.EdgeDCommonConst, ScType.NodeConstTuple, ScType.EdgeAccessConstPosPerm,
                                      income_node)
            if iterator5.Next():
                node_t = iterator5.Get(2)
                if node_t.IsValid():
                    print("Set founded22")
                    iterator3 = ctx.Iterator3(node_t, ScType.EdgeAccessConstPosPerm, ScType.Link)
                    if iterator3.Next():
                        link = iterator3.Get(2)
                        content_s2 = ctx.GetLinkContent(link)
                        if content_s2:
                            animal_income = {key: content_s1.AsString()}'''
