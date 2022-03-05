import Array "mo:base/Array";

actor {

    var counter = 0;

    public func add(n1 : Nat, n2 : Nat) : async Nat {
        return (n1 + n2);
    };

    public func square(n : Nat) : async Nat {
        return (n*n);
    };

    public func days_to_second(n : Nat) : async Nat {
        return (n * 24 * 60 * 60);
    };

    public func increment_counter(n : Nat) : async Nat {
        return (counter + n);
    };

    public func clear_counter() : async () {
        counter := 0;
    };

    public func divide(n : Nat, m : Nat) : async Bool {
        if((m % n) == 0){
            return true;
        }
        else{
            return false;
        }
    };

    public func is_even(n : Nat) : async Bool {
        if((n % 2) == 0){
            return true;
        }
        else{
            return false;
        };
    };

    public func sum_of_array(array : [Nat]) : async Nat {
        var sum : Nat = 0;
        for (num in array.vals()){
            sum += num;
        };
        return sum;
    };

    public func maximum(array : [Nat]) : async Nat {
        var max : Nat = 0;
        for(num in array.vals()){
            if(num > max){
                max := num;
            };
        };
        return max;
    };

    // public func remove_from_array(array : [Nat], n : Nat) async [Nat] {
    //     var newArray : [Nat];
    //     for(val in array.vals()){
    //         if(val != n){
    //             newArray.add(val);
    //         };
    //     };
    //     return newArray;
    // };

    // public func selection_sort(array : [Nat]) : async [Nat] {
    //     var arrayLength = array.size();
    // };

};
