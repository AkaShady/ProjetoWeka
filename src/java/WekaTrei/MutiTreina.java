package WekaTrei;


import java.text.DecimalFormat;
import weka.classifiers.Evaluation;
import weka.classifiers.functions.MultilayerPerceptron;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;

public class MutiTreina {

    /**
     * @param par
     * @return 
     * @throws java.lang.Exception
     */
    public String []Treinador(double par[]) throws Exception {

        DataSource source = new DataSource("");
        Instances dataset = source.getDataSet();
        dataset.setClassIndex(dataset.numAttributes()-1);
        
        DecimalFormat df = new DecimalFormat("0.00");
        MultilayerPerceptron mr = new MultilayerPerceptron();
        mr.buildClassifier(dataset);
        
        Instance novo = new DenseInstance(dataset.numAttributes()-1);
        novo.setValue(0, par[0]);
        novo.setValue(1, par[1]);
        novo.setValue(2, par[2]);
        novo.setValue(3, par[3]);
        novo.setValue(4, par[4]);
        novo.setValue(5, par[5]);
        novo.setValue(6, par[6]);
        novo.setValue(7, par[7]);
        double resultado[] = mr.distributionForInstance(novo);
        
        Evaluation eval = new Evaluation(dataset);
        eval.evaluateModel(mr, dataset);
        String conteudo = eval.toSummaryString().trim();
        String []frase= conteudo.split("\n");
        String []valores = new String[10];
        int j=0;
        for (String i : frase) {
            try {
                valores[j] = df.format(Double.parseDouble(i.substring(i.length()-8,i.length()).trim()));
            } catch (NumberFormatException e) {
                valores[j] = i.substring(i.length()-8,i.length()).trim();
            }
            j=j+1;        
        }
        valores[1] = valores[1].replace(",",".");
        valores[2] = valores[2].replace(",",".");
        double num1 = Double.parseDouble(valores[1]);
        double num2 = Double.parseDouble(valores[2]);
        valores[j+1] = df.format(resultado[0]-num1);
        valores[j+2] = df.format(resultado[0]+num2);
        valores[j+3] = df.format(resultado[0]);
        return valores; 
    }
}
