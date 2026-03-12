package com.example.test;

import javax.servlet.http.HttpServletRequest;

public class Model {
    public static void makeInfo(HttpServletRequest request) {
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String [] habit = request.getParameterValues("habit");

        if(gender.equals("male")){
            gender = "남성";
        } else {
            gender = "여성";
        }



        System.out.println(name);
        System.out.println(age);
        System.out.println(gender);

        String habit2 = "";
        for (String h : habit) {
            switch (h) {
                case "exercise":
                    h = "운동";
                    break;
                case "cook":
                    h = "요리";
                    break;
                case "dev":
                    h = "개발";
                    break;
            }
            System.out.println(h);

            habit2 += h + " / ";
        }

        // 결과에서 필요한거
        // 한번에 뭉쳐서 보내자. (객체)

        Information info = new Information(name, age, gender, habit2);

        request.setAttribute("information", info);

    }
}
