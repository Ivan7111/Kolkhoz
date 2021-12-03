import os
import subprocess

from common import ScModule, ScAgent, ScEventParams, ScTemplate
from sc import *
import random


def GenerateSequence():
    chars = ["A", "G", "C", "T"]
    string = ""
    length = random.randint(50, 150)
    for i in range(0, length):
        string += random.choice(chars)
    return string


def GenerateName(string):
    A = string.count("A")
    G = string.count("G")
    C = string.count("C")
    T = string.count("T")
    name = "A" + str(A) + "G" + str(G) + "C" + str(C) + "T" + str(T)
    return name


def getComplementDNA(dna):
    translated = ""
    dna = dna.upper()

    for i in range(0, len(dna)):
        # english
        if dna[i] == "T":
            translated += "A"
        if dna[i] == "G":
            translated += "C"
        if dna[i] == "A":
            translated += "T"
        if dna[i] == "C":
            translated += "G"

        # russian
        if dna[i] == 'Т':
            translated += 'А'
        if dna[i] == "Г":
            translated += "Ц"
        if dna[i] == "А":
            translated += "Т"
        if dna[i] == "Ц":
            translated += "Г"

    return translated


def Converter(sequence):
    rna = sequence.replace("T", "U")
    return rna


def getCount(nucleotide, sequence):
    sequence = sequence.upper()
    count = sequence.count(nucleotide)
    return count


def getPart(nucleotide, sequence):
    return getCount(nucleotide, sequence) / len(sequence)


def getMassOfMolecule(sequence):
    adenineCount = getCount("A", sequence)
    thymineCount = getCount("T", sequence)
    cytosineCount = getCount("C", sequence)
    guanineCount = getCount("G", sequence)
    uracilCount = getCount("U", sequence)

    nucleotideMass = adenineCount * 135.14 + thymineCount * 126.11 + cytosineCount * 111.10 + guanineCount * 151.15 + \
        uracilCount * 112.09

    baseMass = (adenineCount + thymineCount + cytosineCount + guanineCount + uracilCount) * (95 + 134)

    return nucleotideMass + baseMass


def create5construction1(ctx, mainNode, nodeName, count):
    node = ctx.HelperResolveSystemIdtf(nodeName, ScType.NodeConstNoRole)
    numberNode = ctx.CreateLink()
    ctx.SetLinkContent(numberNode, str(count))
    edge = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, numberNode)
    ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, node, edge)


def GenerateNumberNodes(ctx, sequence, mainNode):
    numberOfT = str(sequence.count("T"))
    print("T = " + numberOfT)
    numberOfA = str(sequence.count("A"))
    print("A = " + numberOfA)
    numberOfG = str(sequence.count("G"))
    print("G = " + numberOfG)
    numberOfC = str(sequence.count("C"))
    print("C = " + numberOfC)

    create5construction1(ctx, mainNode, "ThyminePart", getPart("T", sequence))
    create5construction1(ctx, mainNode, "AdeninePart", getPart("A", sequence))
    create5construction1(ctx, mainNode, "GuaninePart", getPart("G", sequence))
    create5construction1(ctx, mainNode, "CytosinePart", getPart("C", sequence))

    nodeT = ctx.HelperResolveSystemIdtf("NumberOfThymine", ScType.NodeConstNoRole)
    nodeA = ctx.HelperResolveSystemIdtf("NumberOfAdenine", ScType.NodeConstNoRole)
    nodeG = ctx.HelperResolveSystemIdtf("NumberOfGuanine", ScType.NodeConstNoRole)
    nodeC = ctx.HelperResolveSystemIdtf("NumberOfCytosine", ScType.NodeConstNoRole)

    numberNodeT = ctx.CreateLink()
    if ctx.SetLinkContent(numberNodeT, numberOfT):
        print("Success at T")
    edgeT = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, numberNodeT)
    ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nodeT, edgeT)

    numberNodeA = ctx.CreateLink()
    if ctx.SetLinkContent(numberNodeA, numberOfA):
        print("Success at A")
    edgeA = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, numberNodeA)
    ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nodeA, edgeA)

    numberNodeG = ctx.CreateLink()
    if ctx.SetLinkContent(numberNodeG, numberOfG):
        print("Success at G")
    edgeG = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, numberNodeG)
    ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nodeG, edgeG)

    numberNodeC = ctx.CreateLink()
    if ctx.SetLinkContent(numberNodeC, numberOfC):
        print("Success at C")
    edgeC = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, numberNodeC)
    ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, nodeC, edgeC)


class HelloAgent(ScAgent):

    def RunImpl(self, evt: ScEventParams) -> ScResult:
        print('DNA Agent launched')
        ctx = ScMemoryContext.Create("context")
        start = ctx.HelperResolveSystemIdtf("ReadDNAHere", ScType.NodeConst)
        DNASample = ctx.HelperResolveSystemIdtf("DNASample", ScType.NodeConst)
        DNASequence = ctx.HelperResolveSystemIdtf("DNASequence", ScType.NodeConst)
        RNASequence = ctx.HelperResolveSystemIdtf("RNASequence", ScType.NodeConst)
        iterator3 = ctx.Iterator3(start, ScType.EdgeAccessConstPosPerm, ScType.NodeConst)
        while iterator3.Next():
            print('Target node found')
            mainNode = iterator3.Get(2)

#            print(ctx.HelperGetSystemIdtf(mainNode))

#            action = evt.other_addr

            # template = ScTemplate()
            # template.Triple(
            #     action,
            #     ScType.EdgeDCommonVar,
            #     ScType.LinkVar >> "_link"
            # )
            # search_result = ctx.HelperSearchTemplate(template)
            # print(search_result.Size())
            # if search_result.Size() == 1:
            #     link = search_result[0]["_link"]

#            iteratorLength = ctx.Iterator3(mainNode, ScType.EdgeDCommonConst, ScType.LinkConst)
#            iteratorLength.Next()
#            link = iteratorLength.Get(2)
#            print(ctx.HelperGetSystemIdtf(link))
#            if link.IsValid():
#                print('+')
#            length = ctx.GetLinkContent(link)
#            print('link' + length.AsString())

            sequence = GenerateSequence()
#            ctx.DeleteElement(link)
#            mainNode = ctx.CreateNode(ScType.NodeConst)

            ctx.HelperSetSystemIdtf(GenerateName(sequence), mainNode)

            GenerateNumberNodes(ctx, sequence, mainNode)
            lengthNode = ctx.CreateNode(ScType.NodeConst)

            ctx.HelperSetSystemIdtf(str(len(sequence)), lengthNode)

            edge = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, lengthNode)
            lengthRel = ctx.HelperResolveSystemIdtf("NumberOfNucleotides", ScType.NodeConstNoRole)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, lengthRel, edge)

            rnaContent = Converter(sequence)

            DNALink = ctx.CreateLink()
            RNALink = ctx.CreateLink()

            ctx.SetLinkContent(DNALink, sequence)

            ctx.SetLinkContent(RNALink, rnaContent)

            massOfMolecule = ctx.CreateLink()
            ctx.SetLinkContent(massOfMolecule, str(getMassOfMolecule(sequence)))
            massOfMoleculeRole = ctx.HelperResolveSystemIdtf("massOfMolecule", ScType.NodeConstNoRole)
            massEdge1 = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, massOfMolecule)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, massOfMoleculeRole, massEdge1)

            T_DNALink = ctx.CreateLink()
            ctx.SetLinkContent(T_DNALink, getComplementDNA(sequence))
            T_DNA_Edge = ctx.CreateEdge(ScType.EdgeDCommonConst, mainNode, T_DNALink)
            complementNode = ctx.HelperResolveSystemIdtf("ComplementDNA", ScType.NodeConstNoRole)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, complementNode, T_DNA_Edge)

            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, mainNode, DNALink)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, mainNode, RNALink)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, RNASequence, RNALink)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, DNASample, mainNode)
            ctx.CreateEdge(ScType.EdgeAccessConstPosPerm, DNASequence, DNALink)

            edge = iterator3.Get(1)
            ctx.DeleteElement(edge)
            print("DNA sequence generated")
        return ScResult.Ok
