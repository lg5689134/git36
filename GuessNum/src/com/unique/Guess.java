/**
 * @filename Guess.java
 * @author lg
 * @date 2019年3月19日 下午3:04:04
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
	System.out.println(result+"请输入你要猜的数字（0-99）：");
	Scanner scan=new Scanner(System.in);
	int input=scan.nextInt();
	int c=1;
	while(input!=result){
		if(input>result){
			c++;
			System.out.println("猜大了");
		}else if(input<result){
			c++;
			System.out.println("猜小了");
		}
		if(c>=10){
			System.out.println("错误次数不能超过10次");
			break;
		}
	
		System.out.println("请输入你要猜的数字（0-99）：");
		scan=new Scanner(System.in);
		input=scan.nextInt();
		
	}
	if(input==result){
		System.out.println("恭喜你，在第"+c+"次猜对了！");
	}
}
}
