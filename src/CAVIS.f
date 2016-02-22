      subroutine CAVIS(iwa)
      common /sixs_ffu/ s(1501),wlinf,wlsup
      real sr(11,1501),wli(11),wls(11)
      real wlinf,wlsup,s
      integer iwa,l,i

c band 1 of CAVIS - 411 (cw=411nm)
      data (sr(1,l),l=1,1501,1) / 60*0.,
     A .0010, .0114, .2511, .8372, .9964, .9758, .9121, .9627,
     A .6977, .0436, .0010,
     A1430*0./

c band 2 of CAVIS - 492 (cw=492nm)
      data (sr(2,l),l=1,1501,1) / 81*0.,
     A .0009, .0058, .0691, .5020, .9597, .9655, .9880, .9927,
     A .9740, .9680, .9918, .9843, .9868, .9752, .9843, .9767,
     A .9907, .9517, .9889, .9785, .9921, .9819, .8671, .3483,
     A .0516, .0071, .0017,
     A1393*0./

c band 3 of CAVIS - 661 (cw=661nm)
      data (sr(3,l),l=1,1501,1) / 151*0.,
     A .0023, .0132, .1567, .7720, .9694, .9956, .9972, .9942,
     A .9942, .9759, .9827, .9917, .9845, .9978, .9944, .9919,
     A .9808, .9623, .9847, .9935, .9884, .9886, .8216, .2743,
     A .0602, .0148, .0042, .0012,
     A1322*0./

c band 4 of CAVIS - 864 (cw=864nm)
      data (sr(4,l),l=1,1501,1) / 230*0.,
     A .0011, .0023, .0049, .0115, .0271, .0652, .1513, .3377,
     A .6238, .8782, .9830, .9966, .9979, .9974, .9966, .9984,
     A .9989, .9979, .9958, .9952, .9974, .9980, .9918, .9155,
     A .6906, .3826, .1699, .0726, .0306, .0138, .0064, .0032,
     A .0017, .0008,
     A1237*0./

c band 5 of CAVIS - 908 (cw=908nm)
      data (sr(5,l),l=1,1501,1) / 253*0.,
     A .0003, .0019, .0050, .0126, .0325, .0851, .2395, .5346,
     A .8500, .9770, .9991, .9939, .9904, .9917, .9912, .9909,
     A .9799, .8881, .5993, .2709, .1025, .0386, .0166, .0075,
     A .0036, .0018, .0008,
     A1221*0./

c band 6 of CAVIS - 940 (cw=940nm)
      data (sr(6,l),l=1,1501,1) / 265*0.,
     A .0008, .0020, .0040, .0082, .0182, .0441, .1254, .3326,
     A .6447, .8628, .9688, .9976, .9769, .9575, .9521, .9489,
     A .9472, .9586, .9782, .9629, .8109, .5071, .2398, .1012,
     A .0455, .0210, .0103, .0051, .0027, .0014, .0003,
     A1205*0./

c band 7 of CAVIS - 1225 (cw=1225nm)
      data (sr(7,l),l=1,1501,1) / 379*0.,
     A .0012, .0024, .0049, .0101, .0223, .0451, .0874, .1778,
     A .3793, .7024, .9409, .9990, .9966, .9979, .9949, .9886,
     A .9816, .9766, .9710, .9632, .8896, .6735, .3883, .1910,
     A .0941, .0479, .0216, .0095, .0045, .0022, .0012,
     A1091*0./

c band 8 of CAVIS - 1373 (cw=1373nm)
      data (sr(8,l),l=1,1501,1) / 435*0.,
     A .0003, .0013, .0022, .0041, .0076, .0144, .0287, .0534,
     A .1045, .2019, .3848, .6245, .8395, .9596, .9976, .9954,
     A .9791, .9657, .9599, .9594, .9590, .9605, .9714, .9769,
     A .9530, .8768, .7021, .4720, .2739, .1477, .0827, .0470,
     A .0262, .0146, .0085, .0050, .0030, .0018, .0011,
     A1027*0./

c band 9 of CAVIS - 1645 (cw=1645nm)
      data (sr(9,l),l=1,1501,1) / 532*0.,
     A .0005, .0013, .0018, .0026, .0039, .0058, .0088, .0134,
     A .0198, .0287, .0411, .0582, .0862, .1361, .2249, .3800,
     A .5676, .7178, .8096, .8750, .9316, .9641, .9736, .9741,
     A .9828, .9918, .9999, .9947, .9865, .9852, .9830, .9790,
     A .9758, .9758, .9879, .9982, .9708, .8802, .7561, .6342,
     A .5175, .3852, .2552, .1580, .0982, .0645, .0442, .0301,
     A .0207, .0143, .0097, .0064, .0042, .0029, .0021, .0016,
     A .0012, .0008,
     A911*0./

c band 10 of CAVIS - 2145 (cw=2145nm)
      data (sr(10,l),l=1,1501,1) / 724*0.,
     A .0005, .0013, .0019, .0027, .0040, .0059, .0088, .0132,
     A .0197, .0294, .0421, .0534, .0693, .0924, .1251, .1731,
     A .2425, .3395, .4673, .6215, .7730, .8929, .9617, .9855,
     A .9882, .9834, .9791, .9790, .9823, .9878, .9910, .9953,
     A .9972, .9992, .9998, .9996, .9991, .9989, .9991, .9970,
     A .9968, .9958, .9938, .9947, .9944, .9957, .9958, .9951,
     A .9945, .9936, .9903, .9868, .9836, .9811, .9804, .9812,
     A .9847, .9878, .9913, .9957, .9969, .9968, .9957, .9922,
     A .9903, .9886, .9915, .9923, .9900, .9755, .9366, .8664,
     A .7671, .6426, .5176, .4057, .3122, .2408, .1863, .1474,
     A .1174, .0938, .0739, .0524, .0361, .0250, .0171, .0120,
     A .0085, .0061, .0045, .0033, .0025, .0019, .0015, .0012,
     A .0005,
     A680*0./

c band 11 of CAVIS - 556 (cw=556nm)
      data (sr(11,l),l=1,1501,1) / 108*0.,
     A .0008, .0118, .1968, .6787, .9708, .9798, .9849, .9730,
     A .9648, .9362, .9634, .9778, .9833, .9841, .9975, .9904,
     A .9820, .9833, .9739, .9757, .9673, .9763, .9697, .9715,
     A .9719, .7535, .2679, .0529, .0109, .0028, .0006,
     A1362*0./



c
c lower and upper wavelength
      wli(1)=0.4000
      wls(1)=0.4250
      wli(2)=0.4525
      wls(2)=0.5175
      wli(3)=0.6275
      wls(3)=0.6950
      wli(4)=0.8250
      wls(4)=0.9075
      wli(5)=0.8825
      wls(5)=0.9475
      wli(6)=0.9125
      wls(6)=0.9875
      wli(7)=1.1975
      wls(7)=1.2725
      wli(8)=1.3375
      wls(8)=1.4325
      wli(9)=1.5800
      wls(9)=1.7225
      wli(10)=2.0600
      wls(10)=2.3000
      wli(11)=0.5200
      wls(11)=0.5950


      do 1 i=1,1501
      s(i)=sr(iwa,i)
    1 continue
      wlinf=wli(iwa)
      wlsup=wls(iwa)
      return
      end
