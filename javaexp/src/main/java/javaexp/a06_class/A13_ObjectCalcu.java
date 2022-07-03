package javaexp.a06_class;

public class A13_ObjectCalcu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 메서드를 통해서 기능 처리하는 반복문 예제
		1. 기능 메서드를 통해 반복 처리하는 로직처리
		
		 * 
		 * */
		Counter c1 = new Counter();
		c1.setData(1, 10);
		int sum = c1.showCount();
		System.out.println("총합: "+sum);
		c1.setData(1, 100);
		System.out.println("총합: "+c1.showCount());
		
		//ex) CalcuPay 필드: 확인할 구매갯수 최대값, 단가
//					메서드: inputData(), searchLoop()
		CalcuPay cp = new CalcuPay();
		cp.inputData(100, 1500);
		cp.searchLoop();

	}

}
class CalcuPay{
	int large, cost;
	void inputData(int large, int cost) {
		this.large = large;
		this.cost = cost;
	}
	void searchLoop() {
		String data = "";
		for(int cnt = 1; cnt<=large;cnt++) {
			data = "단가: "+cost+"\t"+cnt+"개"+"\t"+"총 금액: "+cost*cnt;
			System.out.println(data);
		}
	}
}

class Counter{
	int from;
	int to;
	void setData(int from, int to) {
		this.from = from;
		this.to = to;
	}
	int showCount() {
		System.out.println(" #"+from+"에서"+to+"까지"+"# ");
		int tot=0;
		for(int cnt = from; cnt <= to; cnt++) {
			System.out.print(cnt+", ");
			tot += cnt;
		}
		System.out.println();
		return tot;
	}
	
	
}

