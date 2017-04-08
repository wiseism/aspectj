/**
 * Created by Spring on 2017/4/7.
 */
public aspect App {
      /* pointcut HelloWorldPointCut() : call(* main(int));*/
    pointcut HelloWorldPointCut() : execution(* doSomething(int));

    before() : HelloWorldPointCut(){
            System.out.println("执行前 : " + thisJoinPoint.getSourceLocation());
     }
    after() returning (Object o): HelloWorldPointCut() {
        System.out.println("Returned normally with " + o);
    }
    after() throwing (Exception e): HelloWorldPointCut() {
        System.out.println("Threw an exception: " + e);
    }
    after(): HelloWorldPointCut(){
        System.out.println("Returned or threw an Exception");
    }
}
