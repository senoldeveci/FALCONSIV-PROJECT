public class LoopDemo {
    public void print_Int_While() {
        integer counter = 1;
        while (counter<26){
            system.debug(counter);
            counter++;
        }
    }

    public void print_N_numbers(integer n){
        for(integer i=0;i<n;i++){
            system.debug(i);
        }
    }

    public integer print_sum_N_numbers(integer n){
        integer sum = 0;
        for (integer i=0; i<=n; i++){
            sum = sum+i;
        }
        return sum;
    }
}