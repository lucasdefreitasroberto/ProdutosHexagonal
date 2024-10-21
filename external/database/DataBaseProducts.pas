unit DataBaseProducts;

interface

// Simulando banco de dados com mais produtos...
const
  ListProductsRaw: array[0..39] of record
    ID: Integer;
    Description: string;
    Value: Double;
    QntStock: Double;
  end = (
    (ID: 1;  Description: 'Mouse Logitech Sem Fio';    Value: 120.50;  QntStock: 25.20),
    (ID: 2;  Description: 'Teclado Mecânico Redragon'; Value: 340.90;  QntStock: 15.40),
    (ID: 3;  Description: 'Notebook Lenovo i5';        Value: 3250.00; QntStock: 8),
    (ID: 4;  Description: 'Monitor Samsung 24"';       Value: 850.00;  QntStock: 10),
    (ID: 5;  Description: 'Cadeira Gamer DXRacer';     Value: 1499.99; QntStock: 5),
    (ID: 6;  Description: 'SSD Kingston 240GB';        Value: 220.75;  QntStock: 40),
    (ID: 7;  Description: 'Placa de Vídeo RTX 3060';   Value: 2850.00; QntStock: 12),
    (ID: 8;  Description: 'Headset HyperX Cloud II';   Value: 450.00;  QntStock: 20),
    (ID: 9;  Description: 'Gabinete Cooler Master';    Value: 379.99;  QntStock: 18),
    (ID: 10; Description: 'Fonte Corsair 650W';        Value: 520.00;  QntStock: 22),
    (ID: 11; Description: 'Processador AMD Ryzen 7';   Value: 1600.00; QntStock: 7.1),
    (ID: 12; Description: 'Memória RAM 16GB DDR4';     Value: 350.00;  QntStock: 30),
    (ID: 13; Description: 'Placa Mãe ASUS B450';       Value: 750.00;  QntStock: 10),
    (ID: 14; Description: 'Webcam Logitech Full HD';   Value: 280.50;  QntStock: 50),
    (ID: 15; Description: 'Impressora HP Deskjet';     Value: 670.00;  QntStock: 9),
    (ID: 16; Description: 'Pendrive 64GB Sandisk';     Value: 45.90;   QntStock: 100),
    (ID: 17; Description: 'Cabo HDMI 2.0 3m';          Value: 39.99;   QntStock: 200),
    (ID: 18; Description: 'Tablet Samsung Galaxy';     Value: 1150.00; QntStock: 14),
    (ID: 19; Description: 'Smartphone Xiaomi Redmi';   Value: 1799.99; QntStock: 12),
    (ID: 20; Description: 'Mousepad Gamer Series';     Value: 120.00;  QntStock: 60),
    (ID: 21; Description: 'Teclado Sem Fio Microsoft'; Value: 210.00;  QntStock: 25),
    (ID: 22; Description: 'Monitor LG 27" 4K';         Value: 1550.00; QntStock: 7),
    (ID: 23; Description: 'Placa de Vídeo GTX 1660';   Value: 1850.00; QntStock: 10),
    (ID: 24; Description: 'Mouse Razer DeathAdder';    Value: 250.00;  QntStock: 35),
    (ID: 25; Description: 'Fone Bluetooth JBL';        Value: 300.00;  QntStock: 40),
    (ID: 26; Description: 'Microfone Blue Yeti';       Value: 900.00;  QntStock: 15),
    (ID: 27; Description: 'Cadeira Ergonômica Flex';   Value: 1100.00; QntStock: 10),
    (ID: 28; Description: 'SSD Samsung 1TB';           Value: 750.00;  QntStock: 25),
    (ID: 29; Description: 'Notebook Dell Inspiron';    Value: 4500.00; QntStock: 5),
    (ID: 30; Description: 'Hub USB 3.0 7 portas';      Value: 120.00;  QntStock: 60),
    (ID: 31; Description: 'Webcam Full HD Razer';      Value: 450.00;  QntStock: 20),
    (ID: 32; Description: 'Teclado Mecânico Corsair';  Value: 850.00;  QntStock: 12),
    (ID: 33; Description: 'Smartwatch Xiaomi Mi Band'; Value: 300.00;  QntStock: 50),
    (ID: 34; Description: 'Power Bank 20.000mAh';      Value: 250.00;  QntStock: 100),
    (ID: 35; Description: 'Placa de Som USB 7.1';      Value: 150.00;  QntStock: 35),
    (ID: 36; Description: 'Roteador Wi-Fi Dual Band';  Value: 350.00;  QntStock: 80),
    (ID: 37; Description: 'Controle Xbox Series X';    Value: 450.00;  QntStock: 25),
    (ID: 38; Description: 'Impressora Laser Brother';  Value: 1250.00; QntStock: 12),
    (ID: 39; Description: 'Câmera GoPro Hero 9';       Value: 2900.00; QntStock: 10),
    (ID: 40; Description: 'Fone de Ouvido Bose QC35';  Value: 1400.00; QntStock: 15)
  );

implementation

end.

