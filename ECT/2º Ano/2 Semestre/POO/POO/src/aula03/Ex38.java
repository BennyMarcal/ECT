package aula03;

import java.util.Scanner;

public class Ex38 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double[][] alunos = new double[16][3];

        for(int i = 0; i < alunos.length; i++){
			alunos[i][0] = Math.random()*20.0;
			alunos[i][1] = Math.random()*20.0;
            alunos[i][2] = (int)Math.round(0.4 * alunos[i][0] + 0.6 * alunos[i][1]);
            if(alunos[i][0] < 7 || alunos[i][1] < 7)
                alunos[i][2] = 66;
        }
        System.out.println("NOTAT   NOTAP   NOTAF");
        for(int i = 0; i < alunos.length; i++){
            System.out.printf("%4.1f    %4.1f    %3.0f\n", alunos[i][0],alunos[i][1],alunos[i][2]);
        }
        sc.close();
    }
    
}
