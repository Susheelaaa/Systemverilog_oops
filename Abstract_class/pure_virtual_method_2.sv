virtual class vechile;
    int no_of_seat, no_of_gears, no_of_wheels;
    string brnd_name, model_name;

    function void printf;
        $display("\nDetails of vechile:");
        $display("Brand name = ", brnd_name);
        $display("Model name = ", model_name);
        $display("No. of Gears = ", no_of_gears);
        $display("No. of Seats = ", no_of_seat);
        $display("No. of Wheels = ", no_of_wheels);
    endfunction

    pure virtual function void change_gear();

endclass //car

class car extends vechile;
    int gear_no;
    function new();
        no_of_gears = 5;
        no_of_seat = 4;
        no_of_wheels = 4;
    endfunction //new()

    virtual function void change_gear();
        if(gear_no<no_of_gears) begin
            gear_no++;
            $display("gear changed");
        end
        else
            $display("Max gear reached");
    endfunction
endclass //car extends vechile

class truck extends vechile;
    int gear_no;
    function new();
        no_of_gears = 12;
        no_of_seat = 2;
        no_of_wheels = 6;
    endfunction //new()

    function void change_gear();
        if(gear_no<no_of_gears) begin
            gear_no++;
            $display("gear changed");
        end
        else
            $display("Max gear reached");
    endfunction
endclass //car extends vechile

class scooter extends vechile;
    function new();
        no_of_gears = 0;
        no_of_seat = 2;
        no_of_wheels = 2;
    endfunction //new()

    function void change_gear();
        $display("Oooooops, no gear found");
    endfunction
endclass //scooter extends vechile

module abstract_class;
    car verna;
    truck v36;
    vechile v;
    scooter activa;
    initial begin
        verna = new();
        verna.brnd_name = "Hundai";
        verna.model_name = "Verna";
        verna.printf;
        //verna.change_gear();

        v36 = new();
        v36.brnd_name = "Sacala";
        v36.model_name = "v36";
        v36.printf;

        activa = new();
        activa.brnd_name = "Honda";
        activa.model_name = "Activa";
        activa.printf;

        $display("\nChanging car gear");
        verna.change_gear();

        $display("Changing truck gear");
        v36.change_gear();

        $display("Changing scooter gear");
        activa.change_gear();
        // v = new();
    end
endmodule
