echo "https://parl.ai/projects/wizard_of_wikipedia/"
echo "eval_model"
echo "====================="

nohup parlai eval_model \
    -bs 64 -t wizard_of_wikipedia:generator:random_split \
    -mf models:wizard_of_wikipedia/end2end_generator/model > evalouptut1.txt 2>&1

nohup parlai eval_model \
    -bs 64 -t wizard_of_wikipedia:generator:topic_split \
    -mf models:wizard_of_wikipedia/end2end_generator/model > evaloutput2.txt 2>&1

