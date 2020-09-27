nohup parlai eval_model --datatype test --model projects.style_gen.style_gen:StyleGenAgent --model-file zoo:style_gen/c75_labeled_dialogue_generator/model --skip-generation True --task style_gen:LabeledBlendedSkillTalk --use-style-frac 1.00 > ./style-gen.txt 2>&1

