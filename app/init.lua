require('pca9685')

pca1 = pca9685.create(0, 0x41)
pca2 = pca9685.create(0, 0x40)
pca1:init(5, 4)
pca1:setFq(1000)
pca2:init(5, 4)
pca1:setMode1(0x01)
pca1:setMode2(0x04)

pca1:setOnOf(7, 200, 600)
pca1:setOnOf(6, 200, 600)
pca2:setOnOf(0, 200, 600)