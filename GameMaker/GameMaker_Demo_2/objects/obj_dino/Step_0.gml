// obj_dino - Step Event
vsp += gravity;  // Áp dụng trọng lực

// Kiểm tra xem nhân vật có đang đứng trên mặt đất không
if (y + sprite_height >= 300) { // Kiểm tra nếu phần dưới của nhân vật chạm mặt đất
    y = 300 - sprite_height;  // Đặt lại y sao cho phần dưới của nhân vật chạm đất
    vsp = 0;                   // Dừng chuyển động rơi
    on_ground = true;          // Đánh dấu là đang đứng trên mặt đất
} else {
    on_ground = false;         // Nếu không chạm đất, nhân vật đang bay
}

// Nhảy lên khi nhấn phím Space
if (on_ground && keyboard_check_pressed(vk_space)) { // Kiểm tra nếu nhấn Space và nhân vật đang đứng trên đất
    vsp = jump_speed;  // Đặt tốc độ nhảy
}

// Cập nhật vị trí theo vận tốc thẳng đứng (vsp)
y += vsp;

// Di chuyển nhân vật từ trái qua phải
x += speed;  // Sử dụng tốc độ cố định để di chuyển

// Khi đi hết màn hình, quay lại từ đầu
if (x > room_width) {
    x = 0;  // Quay lại bên trái khi ra ngoài màn hình
}

// Kiểm tra va chạm với chướng ngại vật (cây xương rồng)
if (place_meeting(x, y + sprite_height, obj_cactus)) {
    // Cộng điểm khi tránh được chướng ngại vật
    global.score += 1;  // Cộng 1 điểm
}
