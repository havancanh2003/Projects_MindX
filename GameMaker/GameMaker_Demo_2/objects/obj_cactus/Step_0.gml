// obj_cactus - Step Event
x += speed; // Di chuyển chướng ngại vật sang trái

if (x < -50) { // Nếu đi ra khỏi màn hình
    x = room_width + irandom(200); // Xuất hiện lại ở bên phải
    global.score += 1; // Cộng điểm khi né được
    
    // Tăng tốc độ chướng ngại vật theo số điểm (mỗi 5 điểm tăng 0.5)
    if (global.score % 5 == 0) {
        speed -= 0.5;
        speed = max(speed, -10); // Giới hạn tốc độ không vượt quá -10
    }
}
