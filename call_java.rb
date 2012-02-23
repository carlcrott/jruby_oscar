require "java"


def setClassPath()
  lib_dir = "/home/thrive/java_projects/JARs/"
  class_paths = [
    "commons-lang-2.1.jar",
    "modified.jar",
    "oscar4-all-4.1-with-dependencies.jar"
  ]

  for class_path in class_paths
    temp = (lib_dir + class_path)
    $CLASSPATH << temp
  end
end

setClassPath()

#include_class "java.util.TreeSet"
#include_class "com.example.CallMe"
#include_class "com.example.ISpeaker"

include_class "java.util.List"
include_class "java.util.ArrayList"
include_class "uk.ac.cam.ch.wwmm.oscar.chemnamedict.entities.ChemicalStructure"
include_class "uk.ac.cam.ch.wwmm.oscar.chemnamedict.entities.FormatType"
#include_class "uk.ac.cam.ch.wwmm.oscar.chemnamedict.entities.ResolvedNamedEntity"
include_class "uk.ac.cam.ch.wwmm.oscar.Oscar"


puts "Hello from ruby"

name = "To a solution of 3-bromobenzophenone (1.00 g, 4 mmol) in MeOH (15 mL) was added sodium borohydride (0.3 mL, 8 mmol) portionwise at rt and the suspension was stirred at rt for 1-24 h. The reaction was diluted slowly with water and extracted with CH2Cl2. The organic layer was washed successively with water, brine, dried over Na2SO4, and concentrated to give the title compound as oil (0.8 g, 79%), which was used in the next reaction without further purification. MS (ESI, pos. ion) m/z: 247.1 (M-OH)."

name_01 = "The solid-phase synthesis of the alkyl oligoesters was previously reported [14]. The phthalate compounds were prepared by a modular methodology (Scheme 2), beginning by reacting terephthaloyl chloride or compound 9 (prepared by a method adapted from [15]) with α,ω-bromoalcohols prepared by mono-brominating the corresponding diols as described [16]. This gave the bis-bromides, which were subsequently displaced by the protected carboxylate anion of BOC-protected aniline 14 to give precursors 15, 16 and 17."

name_02 = "Deprotection of the carbamate protecting groups under various acidic conditions also resulted in cleavage of internal esters in 15. Selective cleavage was ultimately achieved by use of a TMSCl–phenol reagent [17] in dichloromethane to give the desired targets in three linear steps with modest overall yields. All three products were white solids that are freely soluble in chloroform; compounds 2 and 3 are soluble in methanol whereas 1 is only sparingly soluble."



oscar = Oscar.new

entities = []
entities = oscar.findAndResolveNamedEntities(name)

for ne in entities

  puts ne.getSurface()
  inchi = ne.getFirstChemicalStructure(FormatType::INCHI)
  inchi != nil ? (puts inchi) : ""

end


#Oscar oscar = new Oscar();
#List<ResolvedNamedEntity> entities = oscar.findAndResolveNamedEntities(s);
#for (ResolvedNamedEntity ne : entities) {
#    System.out.println(ne.getSurface());
#    ChemicalStructure inchi = ne.getFirstChemicalStructure(FormatType.INCHI);
#    if (inchi != null) {
#        System.out.println(inchi);
#    }
#    System.out.println();
#}


