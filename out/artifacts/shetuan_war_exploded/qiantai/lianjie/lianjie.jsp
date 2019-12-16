<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.util.*" %>
<%
    String[] weekdays={"","日","一","二","三","四","五","六"};
    String[] days=new String[42];
    for(int i=0;i<42;i++)
    	days[i]="";

    GregorianCalendar currentDay = new GregorianCalendar();
    int year= currentDay.get(Calendar.YEAR);
    int month=currentDay.get(Calendar.MONTH);
    int today=currentDay.get(Calendar.DAY_OF_MONTH);
    int weekday=currentDay.get(Calendar.DAY_OF_WEEK);
    
    String now=year+"年"+(month+1)+"月"+today+"日"+" 星期"+weekdays[weekday];
    
    Calendar thisMonth=Calendar.getInstance();
    thisMonth.set(Calendar.MONTH, month );
    thisMonth.set(Calendar.YEAR, year );
    thisMonth.setFirstDayOfWeek(Calendar.SUNDAY);
    thisMonth.set(Calendar.DAY_OF_MONTH,1);
    
    int firstIndex=thisMonth.get(Calendar.DAY_OF_WEEK)-1;
    int maxIndex=thisMonth.getActualMaximum(Calendar.DAY_OF_MONTH);
    for(int i=0;i<maxIndex;i++){
        days[firstIndex+i]=String.valueOf(i+1);
    }
%>

<html>
    <head>
      <title></title>
      <script type="text/javascript">
        function showTime(showWhere){
            var now=new Date();
	        var hour=now.getHours();
	        var minu=now.getMinutes();
	        var sec=now.getSeconds();
         
            if(hour<10) hour="0"+hour;
         	if(minu<10) minu="0"+minu;
         	if(sec<10) sec="0"+sec;
         	
         	showWhere.value=hour+":"+minu+":"+sec;
            setTimeout("showTime(time)",1000)
        }
      </script>
    </head>
    <body onload="showTime(time)">
        <table width="170" border="0" align="center" cellspacing="1">  
        <td>
             <font size=4> 中国传媒大学南广学院：</font>
             
            <font size=4> <a href='http://www.cucn.edu.cn'>http://www.cucn.edu.cn</a></font>
            <font size=4> 淘宝：</font>
             
            <font size=4> <a href='http://www.taobao.cn'>http://www.cucn.edu.cn</a></font>
            
                      <font size=4>百度 ：</font><br>
                      
             <font size=4><a href='https://www.baidu.com/'>https://www.baidu.com/</a></font> </td>                    
            
        </table>
    </body>
</html>
