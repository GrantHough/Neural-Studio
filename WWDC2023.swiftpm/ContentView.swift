import SwiftUI

struct ContentView: View {
    
    func loopByActivationFunc(accuracies: Array<Array<Array<Double>>>) {
        for activationFuncGroup in accuracies {
            for learningRateGroup in activationFuncGroup {
                print(learningRateGroup)
                break
            }
            break
        }
    }

    
    // all values generated from a Deep FFNN trained with MNIST and created with PyTorch
    var accuracies1 = [[[0.8224, 0.8692, 0.8834, 0.8923, 0.8978, 0.9024, 0.9059, 0.9092, 0.912, 0.9144, 0.9168, 0.9186, 0.9203, 0.9219, 0.9236, 0.9256, 0.9269, 0.9276, 0.9289, 0.931], [0.9393, 0.9446, 0.95, 0.9548, 0.9579, 0.9622, 0.9621, 0.9659, 0.9688, 0.9688, 0.972, 0.9737, 0.9743, 0.9754, 0.9759, 0.9779, 0.9777, 0.9789, 0.9797, 0.98], [0.9625, 0.9666, 0.9726, 0.976, 0.978, 0.9763, 0.979, 0.9797, 0.9717, 0.9846, 0.9812, 0.9802, 0.9726, 0.9834, 0.9826, 0.9817, 0.9874, 0.9866, 0.9852, 0.986], [0.9636, 0.9667, 0.967, 0.9752, 0.972, 0.9686, 0.9777, 0.9729, 0.9784, 0.9752, 0.9723, 0.9586, 0.9772, 0.981, 0.9811, 0.9818, 0.9746, 0.9783, 0.9754, 0.9816]], [[0.8227, 0.8692, 0.8847, 0.8924, 0.8984, 0.9024, 0.906, 0.9092, 0.9116, 0.9132, 0.9152, 0.9164, 0.9196, 0.9207, 0.9224, 0.9243, 0.9254, 0.927, 0.9282, 0.9298], [0.9379, 0.947, 0.9509, 0.9568, 0.96, 0.9625, 0.965, 0.9669, 0.9685, 0.9688, 0.972, 0.9725, 0.9732, 0.974, 0.976, 0.9768, 0.9784, 0.9739, 0.9785, 0.9797], [0.9622, 0.9714, 0.967, 0.971, 0.9785, 0.9766, 0.9772, 0.9784, 0.9751, 0.9833, 0.9814, 0.9824, 0.9812, 0.9817, 0.9838, 0.986, 0.9854, 0.9865, 0.9898, 0.9888], [0.9584, 0.9634, 0.9678, 0.9674, 0.9688, 0.9744, 0.9732, 0.9704, 0.9734, 0.9758, 0.9821, 0.9748, 0.9626, 0.9797, 0.9813, 0.9808, 0.9823, 0.982, 0.9816, 0.982]], [[0.8111, 0.8602, 0.8791, 0.8897, 0.8958, 0.9006, 0.905, 0.908, 0.911, 0.9129, 0.9158, 0.9174, 0.9193, 0.921, 0.9227, 0.9241, 0.9248, 0.9269, 0.9276, 0.929], [0.9371, 0.9433, 0.9497, 0.953, 0.957, 0.9594, 0.962, 0.9643, 0.9653, 0.9684, 0.9698, 0.971, 0.9717, 0.973, 0.9744, 0.9749, 0.9757, 0.9757, 0.977, 0.9778], [0.9728, 0.9724, 0.9771, 0.9788, 0.9804, 0.9818, 0.9827, 0.9822, 0.9862, 0.9862, 0.9861, 0.989, 0.9899, 0.9874, 0.9883, 0.9886, 0.9902, 0.9907, 0.99, 0.9926], [0.9805, 0.9718, 0.9838, 0.9828, 0.9855, 0.9857, 0.9811, 0.9862, 0.9865, 0.9845, 0.9908, 0.9912, 0.991, 0.99, 0.9898, 0.9928, 0.9938, 0.9929, 0.9936, 0.995]], [[0.4967, 0.6424, 0.6962, 0.7292, 0.7689, 0.7962, 0.8179, 0.83, 0.8417, 0.8496, 0.8568, 0.8617, 0.867, 0.8712, 0.8752, 0.8786, 0.8815, 0.8845, 0.8868, 0.8886], [0.9036, 0.9118, 0.9177, 0.9219, 0.9259, 0.9304, 0.9329, 0.9352, 0.9375, 0.9402, 0.9412, 0.9432, 0.9452, 0.9467, 0.9478, 0.9488, 0.9502, 0.9522, 0.9526, 0.9538], [0.957, 0.9602, 0.9612, 0.9654, 0.9675, 0.9692, 0.971, 0.9723, 0.9724, 0.9749, 0.9753, 0.9765, 0.9775, 0.9777, 0.9782, 0.9799, 0.98, 0.9808, 0.9816, 0.9811], [0.981, 0.9812, 0.982, 0.9812, 0.9838, 0.9835, 0.9859, 0.9866, 0.9869, 0.986, 0.9868, 0.9894, 0.9888, 0.989, 0.9906, 0.9899, 0.9901, 0.9906, 0.9912, 0.9914]]]

    var accuracies2 = [[[0.548, 0.8192, 0.8614, 0.8819, 0.8914, 0.8986, 0.9022, 0.9077, 0.9116, 0.9146, 0.9173, 0.9207, 0.9232, 0.9267, 0.9284, 0.9313, 0.9339, 0.9362, 0.9386, 0.9405], [0.9407, 0.9606, 0.9685, 0.9663, 0.9751, 0.9801, 0.9804, 0.9835, 0.983, 0.9863, 0.9878, 0.9893, 0.9903, 0.9893, 0.9915, 0.9934, 0.9938, 0.9922, 0.9928, 0.9952], [0.9309, 0.9499, 0.9539, 0.96, 0.952, 0.9596, 0.9678, 0.9696, 0.972, 0.9689, 0.9768, 0.9725, 0.9696, 0.9748, 0.9761, 0.9781, 0.977, 0.974, 0.9768, 0.9773], [0.1124, 0.1044, 0.1124, 0.1044, 0.1124, 0.1124, 0.1044, 0.1124, 0.1124, 0.0992, 0.1124, 0.1044, 0.1124, 0.1044, 0.0975, 0.1124, 0.1124, 0.0993, 0.1022, 0.1022]], [[0.5404, 0.7967, 0.8606, 0.8836, 0.8954, 0.9018, 0.9061, 0.91, 0.915, 0.9194, 0.9211, 0.9261, 0.9287, 0.9302, 0.9337, 0.9356, 0.9384, 0.9389, 0.9412, 0.9434], [0.9504, 0.9592, 0.968, 0.97, 0.9744, 0.9783, 0.9815, 0.9807, 0.9765, 0.9866, 0.9876, 0.9895, 0.9884, 0.9893, 0.9848, 0.9909, 0.9932, 0.9931, 0.9933, 0.9938], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987]], [[0.6804, 0.8389, 0.8701, 0.8857, 0.8941, 0.9003, 0.9061, 0.9103, 0.9136, 0.9164, 0.9194, 0.9216, 0.9243, 0.9268, 0.9293, 0.9312, 0.9337, 0.9357, 0.9378, 0.9392], [0.9516, 0.9609, 0.966, 0.9716, 0.9754, 0.9779, 0.9791, 0.9821, 0.9821, 0.9846, 0.987, 0.9878, 0.9887, 0.9901, 0.9906, 0.9919, 0.9911, 0.9916, 0.9932, 0.9946], [0.9723, 0.9818, 0.9809, 0.9887, 0.9887, 0.9894, 0.9932, 0.9946, 0.9928, 0.9948, 0.9952, 0.9955, 0.9962, 0.997, 0.996, 0.9982, 0.9994, 0.9986, 0.9998, 0.9999], [0.9717, 0.9825, 0.9807, 0.9836, 0.9868, 0.9751, 0.9862, 0.9868, 0.9904, 0.9902, 0.9911, 0.9928, 0.9916, 0.9917, 0.9938, 0.9952, 0.9946, 0.9921, 0.9927, 0.9915]], [[0.1124, 0.1124, 0.1124, 0.1124, 0.1159, 0.1317, 0.173, 0.335, 0.3101, 0.3636, 0.3892, 0.4013, 0.4372, 0.481, 0.513, 0.5493, 0.583, 0.6101, 0.6288, 0.6512], [0.7935, 0.8571, 0.8842, 0.8981, 0.9058, 0.9133, 0.919, 0.9247, 0.9294, 0.9331, 0.9374, 0.9402, 0.944, 0.9462, 0.9496, 0.952, 0.9533, 0.9558, 0.9579, 0.9592], [0.9604, 0.968, 0.9715, 0.9743, 0.9765, 0.9791, 0.9796, 0.9806, 0.9832, 0.9829, 0.9869, 0.9848, 0.9888, 0.9889, 0.991, 0.9912, 0.9905, 0.9921, 0.9925, 0.9919], [0.987, 0.9884, 0.9934, 0.9928, 0.9952, 0.9956, 0.9916, 0.9969, 0.9942, 0.9971, 0.9965, 0.9986, 0.9992, 0.9976, 0.999, 0.9995, 0.999, 0.9998, 0.9997, 0.9998]]]

    var accuracies3 = [[[0.3936, 0.6995, 0.8048, 0.8521, 0.8782, 0.8914, 0.9004, 0.9062, 0.9122, 0.9158, 0.9218, 0.9264, 0.9295, 0.9338, 0.9366, 0.941, 0.9416, 0.9461, 0.9482, 0.9502], [0.9591, 0.9652, 0.9685, 0.963, 0.98, 0.9813, 0.9857, 0.9875, 0.9872, 0.9901, 0.9915, 0.9909, 0.9934, 0.9929, 0.9918, 0.9922, 0.9942, 0.9957, 0.9933, 0.9953], [0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.0987, 0.1044, 0.1044, 0.1124, 0.1044, 0.1124, 0.1124, 0.1124, 0.1124, 0.0986], [0.1044, 0.1044, 0.0975, 0.0993, 0.1124, 0.0987, 0.1124, 0.0986, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1044, 0.0986, 0.0987, 0.1124, 0.1022, 0.1022, 0.0975]], [[0.1355, 0.4966, 0.767, 0.8399, 0.8723, 0.8862, 0.8984, 0.904, 0.911, 0.9159, 0.922, 0.9248, 0.9298, 0.9333, 0.9363, 0.9392, 0.9423, 0.9453, 0.9473, 0.95], [0.9558, 0.9644, 0.9723, 0.9753, 0.9802, 0.9806, 0.9822, 0.9854, 0.988, 0.9885, 0.9892, 0.9924, 0.9922, 0.9937, 0.9934, 0.9956, 0.9942, 0.9949, 0.9962, 0.9905], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987]], [[0.6103, 0.7829, 0.8448, 0.8742, 0.89, 0.8986, 0.9057, 0.911, 0.9146, 0.9187, 0.9215, 0.9263, 0.9282, 0.9318, 0.9363, 0.9383, 0.9414, 0.9441, 0.9466, 0.9485], [0.951, 0.9653, 0.972, 0.9758, 0.978, 0.9788, 0.9816, 0.9808, 0.9866, 0.9863, 0.9886, 0.9905, 0.9904, 0.9915, 0.991, 0.992, 0.9922, 0.9943, 0.9951, 0.9956], [0.974, 0.9813, 0.9834, 0.9864, 0.9836, 0.9879, 0.9925, 0.9909, 0.9946, 0.9951, 0.9948, 0.9956, 0.9963, 0.997, 0.9969, 0.9968, 0.9944, 0.9981, 0.9947, 0.997], [0.9814, 0.9801, 0.9884, 0.9878, 0.9866, 0.9926, 0.9947, 0.9907, 0.9865, 0.994, 0.9947, 0.994, 0.9942, 0.9957, 0.9927, 0.9953, 0.998, 0.997, 0.9979, 0.9966]], [[0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1044, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124], [0.1124, 0.107, 0.29, 0.4274, 0.5625, 0.6666, 0.7202, 0.7527, 0.8082, 0.8646, 0.8832, 0.8927, 0.9098, 0.9171, 0.9235, 0.9291, 0.9356, 0.9373, 0.9439, 0.9451], [0.9434, 0.9609, 0.9626, 0.9676, 0.9503, 0.9759, 0.9784, 0.9788, 0.983, 0.9844, 0.9859, 0.9866, 0.9887, 0.989, 0.9889, 0.9888, 0.9902, 0.9898, 0.9909, 0.9925], [0.9864, 0.9861, 0.9858, 0.9908, 0.9895, 0.9934, 0.9863, 0.9947, 0.9939, 0.9951, 0.9959, 0.9862, 0.9956, 0.997, 0.9968, 0.9854, 0.9979, 0.9974, 0.9993, 0.9994]]]
    var accuracies4 = [[[0.1124, 0.1124, 0.3804, 0.6513, 0.755, 0.8112, 0.8545, 0.8856, 0.9045, 0.916, 0.9228, 0.9307, 0.9363, 0.9405, 0.9441, 0.9458, 0.9509, 0.9532, 0.9569, 0.959], [0.9356, 0.9571, 0.96, 0.9707, 0.9706, 0.9756, 0.9766, 0.9822, 0.9819, 0.979, 0.987, 0.9839, 0.9887, 0.9872, 0.9866, 0.986, 0.9894, 0.9926, 0.9907, 0.9916], [0.1044, 0.1124, 0.1124, 0.0975, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124], [0.1124, 0.1124, 0.0986, 0.1044, 0.1124, 0.1044, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1044, 0.1124, 0.1124, 0.1124, 0.1022, 0.1124, 0.1124, 0.1044]], [[0.0987, 0.2396, 0.2244, 0.5922, 0.7533, 0.8251, 0.8646, 0.8823, 0.8976, 0.9091, 0.9168, 0.9256, 0.931, 0.936, 0.9403, 0.9452, 0.948, 0.9514, 0.9556, 0.9585], [0.9408, 0.9618, 0.9719, 0.9708, 0.9762, 0.9796, 0.9772, 0.9844, 0.9873, 0.9861, 0.9884, 0.9881, 0.9912, 0.9895, 0.9899, 0.991, 0.9929, 0.9949, 0.9927, 0.9919], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987]], [[0.517, 0.6722, 0.7926, 0.8424, 0.8626, 0.8761, 0.8866, 0.8975, 0.9067, 0.9135, 0.92, 0.9259, 0.9304, 0.9363, 0.9393, 0.9439, 0.9472, 0.9493, 0.953, 0.9538], [0.9597, 0.9631, 0.9707, 0.9694, 0.9776, 0.9798, 0.9802, 0.9845, 0.9854, 0.9879, 0.9865, 0.9899, 0.991, 0.9915, 0.9884, 0.9922, 0.9919, 0.9938, 0.9926, 0.9948], [0.9677, 0.9659, 0.9784, 0.9774, 0.9862, 0.9688, 0.9875, 0.9892, 0.9879, 0.9891, 0.9914, 0.9912, 0.9906, 0.9826, 0.9941, 0.9854, 0.9928, 0.9913, 0.9925, 0.995], [0.9672, 0.9818, 0.9831, 0.9824, 0.987, 0.9849, 0.9835, 0.9806, 0.9904, 0.9857, 0.9857, 0.9853, 0.982, 0.9897, 0.9889, 0.9896, 0.9822, 0.9912, 0.9862, 0.992]], [[0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124], [0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.0992, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.114, 0.1914, 0.2556, 0.2964], [0.4133, 0.5988, 0.7286, 0.8629, 0.8655, 0.9166, 0.9316, 0.9398, 0.9459, 0.9538, 0.959, 0.9621, 0.9546, 0.9668, 0.9713, 0.9746, 0.9731, 0.9753, 0.9784, 0.978], [0.9767, 0.9738, 0.9801, 0.9822, 0.9819, 0.9791, 0.9792, 0.9831, 0.9874, 0.9844, 0.9876, 0.9878, 0.991, 0.9799, 0.9848, 0.9902, 0.9931, 0.9936, 0.9928, 0.9942]]]

    
    var totalAccuracies = [[[[0.8224, 0.8692, 0.8834, 0.8923, 0.8978, 0.9024, 0.9059, 0.9092, 0.912, 0.9144, 0.9168, 0.9186, 0.9203, 0.9219, 0.9236, 0.9256, 0.9269, 0.9276, 0.9289, 0.931], [0.9393, 0.9446, 0.95, 0.9548, 0.9579, 0.9622, 0.9621, 0.9659, 0.9688, 0.9688, 0.972, 0.9737, 0.9743, 0.9754, 0.9759, 0.9779, 0.9777, 0.9789, 0.9797, 0.98], [0.9625, 0.9666, 0.9726, 0.976, 0.978, 0.9763, 0.979, 0.9797, 0.9717, 0.9846, 0.9812, 0.9802, 0.9726, 0.9834, 0.9826, 0.9817, 0.9874, 0.9866, 0.9852, 0.986], [0.9636, 0.9667, 0.967, 0.9752, 0.972, 0.9686, 0.9777, 0.9729, 0.9784, 0.9752, 0.9723, 0.9586, 0.9772, 0.981, 0.9811, 0.9818, 0.9746, 0.9783, 0.9754, 0.9816]], [[0.8227, 0.8692, 0.8847, 0.8924, 0.8984, 0.9024, 0.906, 0.9092, 0.9116, 0.9132, 0.9152, 0.9164, 0.9196, 0.9207, 0.9224, 0.9243, 0.9254, 0.927, 0.9282, 0.9298], [0.9379, 0.947, 0.9509, 0.9568, 0.96, 0.9625, 0.965, 0.9669, 0.9685, 0.9688, 0.972, 0.9725, 0.9732, 0.974, 0.976, 0.9768, 0.9784, 0.9739, 0.9785, 0.9797], [0.9622, 0.9714, 0.967, 0.971, 0.9785, 0.9766, 0.9772, 0.9784, 0.9751, 0.9833, 0.9814, 0.9824, 0.9812, 0.9817, 0.9838, 0.986, 0.9854, 0.9865, 0.9898, 0.9888], [0.9584, 0.9634, 0.9678, 0.9674, 0.9688, 0.9744, 0.9732, 0.9704, 0.9734, 0.9758, 0.9821, 0.9748, 0.9626, 0.9797, 0.9813, 0.9808, 0.9823, 0.982, 0.9816, 0.982]], [[0.8111, 0.8602, 0.8791, 0.8897, 0.8958, 0.9006, 0.905, 0.908, 0.911, 0.9129, 0.9158, 0.9174, 0.9193, 0.921, 0.9227, 0.9241, 0.9248, 0.9269, 0.9276, 0.929], [0.9371, 0.9433, 0.9497, 0.953, 0.957, 0.9594, 0.962, 0.9643, 0.9653, 0.9684, 0.9698, 0.971, 0.9717, 0.973, 0.9744, 0.9749, 0.9757, 0.9757, 0.977, 0.9778], [0.9728, 0.9724, 0.9771, 0.9788, 0.9804, 0.9818, 0.9827, 0.9822, 0.9862, 0.9862, 0.9861, 0.989, 0.9899, 0.9874, 0.9883, 0.9886, 0.9902, 0.9907, 0.99, 0.9926], [0.9805, 0.9718, 0.9838, 0.9828, 0.9855, 0.9857, 0.9811, 0.9862, 0.9865, 0.9845, 0.9908, 0.9912, 0.991, 0.99, 0.9898, 0.9928, 0.9938, 0.9929, 0.9936, 0.995]], [[0.4967, 0.6424, 0.6962, 0.7292, 0.7689, 0.7962, 0.8179, 0.83, 0.8417, 0.8496, 0.8568, 0.8617, 0.867, 0.8712, 0.8752, 0.8786, 0.8815, 0.8845, 0.8868, 0.8886], [0.9036, 0.9118, 0.9177, 0.9219, 0.9259, 0.9304, 0.9329, 0.9352, 0.9375, 0.9402, 0.9412, 0.9432, 0.9452, 0.9467, 0.9478, 0.9488, 0.9502, 0.9522, 0.9526, 0.9538], [0.957, 0.9602, 0.9612, 0.9654, 0.9675, 0.9692, 0.971, 0.9723, 0.9724, 0.9749, 0.9753, 0.9765, 0.9775, 0.9777, 0.9782, 0.9799, 0.98, 0.9808, 0.9816, 0.9811], [0.981, 0.9812, 0.982, 0.9812, 0.9838, 0.9835, 0.9859, 0.9866, 0.9869, 0.986, 0.9868, 0.9894, 0.9888, 0.989, 0.9906, 0.9899, 0.9901, 0.9906, 0.9912, 0.9914]]], [[[0.548, 0.8192, 0.8614, 0.8819, 0.8914, 0.8986, 0.9022, 0.9077, 0.9116, 0.9146, 0.9173, 0.9207, 0.9232, 0.9267, 0.9284, 0.9313, 0.9339, 0.9362, 0.9386, 0.9405], [0.9407, 0.9606, 0.9685, 0.9663, 0.9751, 0.9801, 0.9804, 0.9835, 0.983, 0.9863, 0.9878, 0.9893, 0.9903, 0.9893, 0.9915, 0.9934, 0.9938, 0.9922, 0.9928, 0.9952], [0.9309, 0.9499, 0.9539, 0.96, 0.952, 0.9596, 0.9678, 0.9696, 0.972, 0.9689, 0.9768, 0.9725, 0.9696, 0.9748, 0.9761, 0.9781, 0.977, 0.974, 0.9768, 0.9773], [0.1124, 0.1044, 0.1124, 0.1044, 0.1124, 0.1124, 0.1044, 0.1124, 0.1124, 0.0992, 0.1124, 0.1044, 0.1124, 0.1044, 0.0975, 0.1124, 0.1124, 0.0993, 0.1022, 0.1022]], [[0.5404, 0.7967, 0.8606, 0.8836, 0.8954, 0.9018, 0.9061, 0.91, 0.915, 0.9194, 0.9211, 0.9261, 0.9287, 0.9302, 0.9337, 0.9356, 0.9384, 0.9389, 0.9412, 0.9434], [0.9504, 0.9592, 0.968, 0.97, 0.9744, 0.9783, 0.9815, 0.9807, 0.9765, 0.9866, 0.9876, 0.9895, 0.9884, 0.9893, 0.9848, 0.9909, 0.9932, 0.9931, 0.9933, 0.9938], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987]], [[0.6804, 0.8389, 0.8701, 0.8857, 0.8941, 0.9003, 0.9061, 0.9103, 0.9136, 0.9164, 0.9194, 0.9216, 0.9243, 0.9268, 0.9293, 0.9312, 0.9337, 0.9357, 0.9378, 0.9392], [0.9516, 0.9609, 0.966, 0.9716, 0.9754, 0.9779, 0.9791, 0.9821, 0.9821, 0.9846, 0.987, 0.9878, 0.9887, 0.9901, 0.9906, 0.9919, 0.9911, 0.9916, 0.9932, 0.9946], [0.9723, 0.9818, 0.9809, 0.9887, 0.9887, 0.9894, 0.9932, 0.9946, 0.9928, 0.9948, 0.9952, 0.9955, 0.9962, 0.997, 0.996, 0.9982, 0.9994, 0.9986, 0.9998, 0.9999], [0.9717, 0.9825, 0.9807, 0.9836, 0.9868, 0.9751, 0.9862, 0.9868, 0.9904, 0.9902, 0.9911, 0.9928, 0.9916, 0.9917, 0.9938, 0.9952, 0.9946, 0.9921, 0.9927, 0.9915]], [[0.1124, 0.1124, 0.1124, 0.1124, 0.1159, 0.1317, 0.173, 0.335, 0.3101, 0.3636, 0.3892, 0.4013, 0.4372, 0.481, 0.513, 0.5493, 0.583, 0.6101, 0.6288, 0.6512], [0.7935, 0.8571, 0.8842, 0.8981, 0.9058, 0.9133, 0.919, 0.9247, 0.9294, 0.9331, 0.9374, 0.9402, 0.944, 0.9462, 0.9496, 0.952, 0.9533, 0.9558, 0.9579, 0.9592], [0.9604, 0.968, 0.9715, 0.9743, 0.9765, 0.9791, 0.9796, 0.9806, 0.9832, 0.9829, 0.9869, 0.9848, 0.9888, 0.9889, 0.991, 0.9912, 0.9905, 0.9921, 0.9925, 0.9919], [0.987, 0.9884, 0.9934, 0.9928, 0.9952, 0.9956, 0.9916, 0.9969, 0.9942, 0.9971, 0.9965, 0.9986, 0.9992, 0.9976, 0.999, 0.9995, 0.999, 0.9998, 0.9997, 0.9998]]], [[[0.3936, 0.6995, 0.8048, 0.8521, 0.8782, 0.8914, 0.9004, 0.9062, 0.9122, 0.9158, 0.9218, 0.9264, 0.9295, 0.9338, 0.9366, 0.941, 0.9416, 0.9461, 0.9482, 0.9502], [0.9591, 0.9652, 0.9685, 0.963, 0.98, 0.9813, 0.9857, 0.9875, 0.9872, 0.9901, 0.9915, 0.9909, 0.9934, 0.9929, 0.9918, 0.9922, 0.9942, 0.9957, 0.9933, 0.9953], [0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.0987, 0.1044, 0.1044, 0.1124, 0.1044, 0.1124, 0.1124, 0.1124, 0.1124, 0.0986], [0.1044, 0.1044, 0.0975, 0.0993, 0.1124, 0.0987, 0.1124, 0.0986, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1044, 0.0986, 0.0987, 0.1124, 0.1022, 0.1022, 0.0975]], [[0.1355, 0.4966, 0.767, 0.8399, 0.8723, 0.8862, 0.8984, 0.904, 0.911, 0.9159, 0.922, 0.9248, 0.9298, 0.9333, 0.9363, 0.9392, 0.9423, 0.9453, 0.9473, 0.95], [0.9558, 0.9644, 0.9723, 0.9753, 0.9802, 0.9806, 0.9822, 0.9854, 0.988, 0.9885, 0.9892, 0.9924, 0.9922, 0.9937, 0.9934, 0.9956, 0.9942, 0.9949, 0.9962, 0.9905], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987]], [[0.6103, 0.7829, 0.8448, 0.8742, 0.89, 0.8986, 0.9057, 0.911, 0.9146, 0.9187, 0.9215, 0.9263, 0.9282, 0.9318, 0.9363, 0.9383, 0.9414, 0.9441, 0.9466, 0.9485], [0.951, 0.9653, 0.972, 0.9758, 0.978, 0.9788, 0.9816, 0.9808, 0.9866, 0.9863, 0.9886, 0.9905, 0.9904, 0.9915, 0.991, 0.992, 0.9922, 0.9943, 0.9951, 0.9956], [0.974, 0.9813, 0.9834, 0.9864, 0.9836, 0.9879, 0.9925, 0.9909, 0.9946, 0.9951, 0.9948, 0.9956, 0.9963, 0.997, 0.9969, 0.9968, 0.9944, 0.9981, 0.9947, 0.997], [0.9814, 0.9801, 0.9884, 0.9878, 0.9866, 0.9926, 0.9947, 0.9907, 0.9865, 0.994, 0.9947, 0.994, 0.9942, 0.9957, 0.9927, 0.9953, 0.998, 0.997, 0.9979, 0.9966]], [[0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1044, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124], [0.1124, 0.107, 0.29, 0.4274, 0.5625, 0.6666, 0.7202, 0.7527, 0.8082, 0.8646, 0.8832, 0.8927, 0.9098, 0.9171, 0.9235, 0.9291, 0.9356, 0.9373, 0.9439, 0.9451], [0.9434, 0.9609, 0.9626, 0.9676, 0.9503, 0.9759, 0.9784, 0.9788, 0.983, 0.9844, 0.9859, 0.9866, 0.9887, 0.989, 0.9889, 0.9888, 0.9902, 0.9898, 0.9909, 0.9925], [0.9864, 0.9861, 0.9858, 0.9908, 0.9895, 0.9934, 0.9863, 0.9947, 0.9939, 0.9951, 0.9959, 0.9862, 0.9956, 0.997, 0.9968, 0.9854, 0.9979, 0.9974, 0.9993, 0.9994]]], [[[0.1124, 0.1124, 0.3804, 0.6513, 0.755, 0.8112, 0.8545, 0.8856, 0.9045, 0.916, 0.9228, 0.9307, 0.9363, 0.9405, 0.9441, 0.9458, 0.9509, 0.9532, 0.9569, 0.959], [0.9356, 0.9571, 0.96, 0.9707, 0.9706, 0.9756, 0.9766, 0.9822, 0.9819, 0.979, 0.987, 0.9839, 0.9887, 0.9872, 0.9866, 0.986, 0.9894, 0.9926, 0.9907, 0.9916], [0.1044, 0.1124, 0.1124, 0.0975, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124], [0.1124, 0.1124, 0.0986, 0.1044, 0.1124, 0.1044, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1044, 0.1124, 0.1124, 0.1124, 0.1022, 0.1124, 0.1124, 0.1044]], [[0.0987, 0.2396, 0.2244, 0.5922, 0.7533, 0.8251, 0.8646, 0.8823, 0.8976, 0.9091, 0.9168, 0.9256, 0.931, 0.936, 0.9403, 0.9452, 0.948, 0.9514, 0.9556, 0.9585], [0.9408, 0.9618, 0.9719, 0.9708, 0.9762, 0.9796, 0.9772, 0.9844, 0.9873, 0.9861, 0.9884, 0.9881, 0.9912, 0.9895, 0.9899, 0.991, 0.9929, 0.9949, 0.9927, 0.9919], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987], [0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987, 0.0987]], [[0.517, 0.6722, 0.7926, 0.8424, 0.8626, 0.8761, 0.8866, 0.8975, 0.9067, 0.9135, 0.92, 0.9259, 0.9304, 0.9363, 0.9393, 0.9439, 0.9472, 0.9493, 0.953, 0.9538], [0.9597, 0.9631, 0.9707, 0.9694, 0.9776, 0.9798, 0.9802, 0.9845, 0.9854, 0.9879, 0.9865, 0.9899, 0.991, 0.9915, 0.9884, 0.9922, 0.9919, 0.9938, 0.9926, 0.9948], [0.9677, 0.9659, 0.9784, 0.9774, 0.9862, 0.9688, 0.9875, 0.9892, 0.9879, 0.9891, 0.9914, 0.9912, 0.9906, 0.9826, 0.9941, 0.9854, 0.9928, 0.9913, 0.9925, 0.995], [0.9672, 0.9818, 0.9831, 0.9824, 0.987, 0.9849, 0.9835, 0.9806, 0.9904, 0.9857, 0.9857, 0.9853, 0.982, 0.9897, 0.9889, 0.9896, 0.9822, 0.9912, 0.9862, 0.992]], [[0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124], [0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.0992, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.1124, 0.114, 0.1914, 0.2556, 0.2964], [0.4133, 0.5988, 0.7286, 0.8629, 0.8655, 0.9166, 0.9316, 0.9398, 0.9459, 0.9538, 0.959, 0.9621, 0.9546, 0.9668, 0.9713, 0.9746, 0.9731, 0.9753, 0.9784, 0.978], [0.9767, 0.9738, 0.9801, 0.9822, 0.9819, 0.9791, 0.9792, 0.9831, 0.9874, 0.9844, 0.9876, 0.9878, 0.991, 0.9799, 0.9848, 0.9902, 0.9931, 0.9936, 0.9928, 0.9942]]]]
    
    
    var epochs = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    var learningRates = [0.01,0.1,0.5,1]
    var activationFunctions = ["ReLU", "Leaky ReLU", "Tanh", "Sigmoid"]
    var hiddenLayers = ["1","2","3","4"]
    
    
    @State var epochsSelection = 10
    @State var learningRateSelection = 0.1
    @State var activationFunctionSelection = "ReLU"
    @State var hiddenLayerSelection = "2"
    
   

    var body: some View {
        
        VStack {
            //Title
            Text("Your Neural Network")
                .font(.system(size: 84, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(10)
            
            Button {
//
//                loopByActivationFunc(accuracies: accuracies1)
                let hiddenLayerIndex = hiddenLayers.firstIndex(of: $hiddenLayerSelection.wrappedValue)
//                print(totalAccuracies[Int(hiddenLayerIndex!)])
                let activationFuncIndex = activationFunctions.firstIndex(of: $activationFunctionSelection.wrappedValue)
//                print(totalAccuracies[Int(hiddenLayerIndex!)][Int(activationFuncIndex!)])
                let learningRateIndex = learningRates.firstIndex(of: $learningRateSelection.wrappedValue)
//                print(totalAccuracies[Int(hiddenLayerIndex!)][Int(activationFuncIndex!)][Int(learningRateIndex!)])
                let epochIndex = epochs.firstIndex(of: $epochsSelection.wrappedValue)
                
                var newVals = [Double]()
                
                totalAccuracies[Int(hiddenLayerIndex!)][Int(activationFuncIndex!)][Int(learningRateIndex!)].indices.forEach({ index in
                    if (index <= Int(epochIndex!)) {
                        newVals.append(totalAccuracies[Int(hiddenLayerIndex!)][Int(activationFuncIndex!)][Int(learningRateIndex!)][index])
                    }
                })
                
                print(newVals)

                                                               
            } label: {
                Text("get the goods")
            }

            
            //Neural Network
            Rectangle()
                .padding([.leading, .trailing], 50)
                .padding([.top, .bottom], 20)
//                .frame(minHeight: UIScreen.main.bounds.height*0.45, maxHeight: UIScreen.main.bounds.height * 0.6)
            
            //Container for variables
            HStack {
                
                VStack {
                    HStack {
                        Text("Number of Epochs: ")
                        Picker("Epochs", selection: $epochsSelection) {
                             
                            ForEach(epochs, id: \.self) {
                                Text(String($0))
                            }
                        }
                        .pickerStyle(.menu)
                        
                    }
                    
                    HStack {
                        Text("Learning Rate: ")
                        Picker("Learning Rate", selection: $learningRateSelection) {
                             
                            ForEach(learningRates, id: \.self) {
                                Text(String($0))
                            }
                        }
                        .pickerStyle(.menu)
                        
                    }
                
                    HStack {
                        Text("Activation Function: ")
                        Picker("Activation Function", selection: $activationFunctionSelection) {
                             
                            ForEach(activationFunctions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                        
                    }
                    
                    HStack {
                        Text("Hidden Layers: ")
                        Picker("Hidden Layers", selection: $hiddenLayerSelection) {
                             
                            ForEach(hiddenLayers, id: \.self) {
                                Text(String($0))
                            }
                        }
                        .pickerStyle(.menu)
                        	
                    }
                    

                }
                
                VStack {
                    
                    Text("Training Time: 24.5 seconds")
                    Text("Prediction Time: 0.2 seconds")
                    Text("Accuracy: 95.4%")
                    Text("Model Size: 2.6 MB")

                }
   
   
            }
        }
    }
}

