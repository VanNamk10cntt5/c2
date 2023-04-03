// Định nghĩa interface cho xe hơi
interface Car {
    void accelerate();
    String getColor();
    double getSpeed();
}

// Lớp Car cơ bản
class BasicCar implements Car {
    private String color;
    private double speed;

    public BasicCar(String color, double speed) {
        this.color = color;
        this.speed = speed;
    }

    @Override
    public void accelerate() {
        speed += 10;
    }

    @Override
    public String getColor() {
        return color;
    }

    @Override
    public double getSpeed() {
        return speed;
    }
}

// Lớp Bmw
class Bmw extends BasicCar {
    public Bmw(String color, double speed) {
        super(color, speed);
    }

    @Override
    public void accelerate() {
        super.accelerate();
        System.out.println("Bmw tăng tốc");
    }

    @Override
    public String toString() {
        return "Bmw " + super.toString();
    }
}

// Lớp Civic
class Civic extends BasicCar {
    public Civic(String color, double speed) {
        super(color, speed);
    }

    @Override
    public void accelerate() {
        super.accelerate();
        System.out.println("Civic tăng tốc");
    }

    @Override
    public String toString() {
        return "Civic " + super.toString();
    }
}

// Lớp chạy thử chương trình
public class Main {
    public static void main(String[] args) {
        Car[] cars = new Car[2];
        cars[0] = new Bmw("Đen", 0);
        cars[1] = new Civic("Trắng", 0);

        for (Car car : cars) {
            car.accelerate();
            System.out.println(car.toString());
        }
    }
}
