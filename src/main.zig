const LED_PIN = 25;
var is_on: bool = true;

const pi = @cImport({
    @cInclude("pico/stdlib.h");
});

export fn main() void {
    pi.gpio_init(LED_PIN);
    pi.gpio_set_dir(LED_PIN, true);

    while (true) {
        pi.gpio_put(LED_PIN, is_on);
        is_on = !is_on;

        pi.sleep_ms(1000);
    }
}
