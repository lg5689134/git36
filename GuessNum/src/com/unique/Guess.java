/**
 * @filename Guess.java
 * @author lg
 * @date 2019��3��19�� ����3:04:04
 * @version 1.0
 * Copyright (C) 2019 
 */

package com.unique;

import java.util.Random;
import java.util.Scanner;

public class Guess {
public static void main(String[] args) {
	Random rand=new Random();
	int result=rand.nextInt(100);
	System.out.println(result+"��������Ҫ�µ����֣�0-99����");
	Scanner scan=new Scanner(System.in);
	int input=scan.nextInt();
	int c=1;
	while(input!=result){
		if(input>result){
			c++;
			System.out.println("�´���");
		}else if(input<result){
			c++;
			System.out.println("��С��");
		}
		if(c>=10){
			System.out.println("����������ܳ���10��");
			break;
		}
	
		System.out.println("��������Ҫ�µ����֣�0-99����");
		scan=new Scanner(System.in);
		input=scan.nextInt();
		
	}
	if(input==result){
		System.out.println("��ϲ�㣬�ڵ�"+c+"�β¶��ˣ�");
	}
}
}
