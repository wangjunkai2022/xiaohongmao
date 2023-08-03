package org.bouncycastle.crypto.generators;

import com.google.android.exoplayer2.analytics.j1;
import com.ksyun.media.player.KSYMediaMeta;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.crypto.params.GOST3410ValidationParameters;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes4.dex */
public class GOST3410ParametersGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private SecureRandom init_random;
    private int size;
    private int typeproc;

    private int procedure_A(int i4, int i10, BigInteger[] bigIntegerArr, int i11) {
        BigInteger bigInteger;
        BigInteger[] bigIntegerArr2;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        int i12;
        int i13;
        int i14 = i4;
        while (true) {
            if (i14 >= 0 && i14 <= 65536) {
                break;
            }
            i14 = this.init_random.nextInt() / 32768;
        }
        int i15 = i10;
        while (true) {
            if (i15 >= 0 && i15 <= 65536 && i15 / 2 != 0) {
                break;
            }
            i15 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger bigInteger4 = new BigInteger(Integer.toString(i15));
        BigInteger bigInteger5 = new BigInteger("19381");
        BigInteger bigInteger6 = new BigInteger(Integer.toString(i14));
        int i16 = 0;
        BigInteger[] bigIntegerArr3 = {bigInteger6};
        int[] iArr = {i11};
        int i17 = 0;
        int i18 = 0;
        while (iArr[i17] >= 17) {
            int length = iArr.length + 1;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[length];
            System.arraycopy(iArr2, 0, iArr, 0, length);
            i18 = i17 + 1;
            iArr[i18] = iArr[i17] / 2;
            i17 = i18;
        }
        BigInteger[] bigIntegerArr4 = new BigInteger[i18 + 1];
        int i19 = 16;
        bigIntegerArr4[i18] = new BigInteger("8003", 16);
        int i20 = i18 - 1;
        int i21 = 0;
        while (true) {
            if (i21 >= i18) {
                bigInteger = bigIntegerArr3[0];
                break;
            }
            int i22 = iArr[i20] / i19;
            while (true) {
                int length2 = bigIntegerArr3.length;
                BigInteger[] bigIntegerArr5 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr3, i16, bigIntegerArr5, i16, bigIntegerArr3.length);
                bigIntegerArr2 = new BigInteger[i22 + 1];
                System.arraycopy(bigIntegerArr5, i16, bigIntegerArr2, i16, length2);
                int i23 = 0;
                while (i23 < i22) {
                    int i24 = i23 + 1;
                    bigIntegerArr2[i24] = bigIntegerArr2[i23].multiply(bigInteger5).add(bigInteger4).mod(TWO.pow(i19));
                    i23 = i24;
                }
                BigInteger bigInteger7 = new BigInteger("0");
                for (int i25 = 0; i25 < i22; i25++) {
                    bigInteger7 = bigInteger7.add(bigIntegerArr2[i25].multiply(TWO.pow(i25 * 16)));
                }
                bigIntegerArr2[i16] = bigIntegerArr2[i22];
                BigInteger bigInteger8 = TWO;
                int i26 = i20 + 1;
                BigInteger add = bigInteger8.pow(iArr[i20] - 1).divide(bigIntegerArr4[i26]).add(bigInteger8.pow(iArr[i20] - 1).multiply(bigInteger7).divide(bigIntegerArr4[i26].multiply(bigInteger8.pow(i22 * 16))));
                BigInteger mod = add.mod(bigInteger8);
                BigInteger bigInteger9 = ONE;
                if (mod.compareTo(bigInteger9) == 0) {
                    add = add.add(bigInteger9);
                }
                int i27 = 0;
                while (true) {
                    bigInteger2 = bigInteger4;
                    bigInteger3 = bigInteger5;
                    long j4 = i27;
                    i12 = i18;
                    BigInteger multiply = bigIntegerArr4[i26].multiply(add.add(BigInteger.valueOf(j4)));
                    BigInteger bigInteger10 = ONE;
                    bigIntegerArr4[i20] = multiply.add(bigInteger10);
                    BigInteger bigInteger11 = bigIntegerArr4[i20];
                    BigInteger bigInteger12 = TWO;
                    i13 = i22;
                    if (bigInteger11.compareTo(bigInteger12.pow(iArr[i20])) == 1) {
                        break;
                    }
                    if (bigInteger12.modPow(bigIntegerArr4[i26].multiply(add.add(BigInteger.valueOf(j4))), bigIntegerArr4[i20]).compareTo(bigInteger10) == 0 && bigInteger12.modPow(add.add(BigInteger.valueOf(j4)), bigIntegerArr4[i20]).compareTo(bigInteger10) != 0) {
                        break;
                    }
                    i27 += 2;
                    i18 = i12;
                    bigInteger5 = bigInteger3;
                    bigInteger4 = bigInteger2;
                    i22 = i13;
                }
                i18 = i12;
                bigInteger5 = bigInteger3;
                bigIntegerArr3 = bigIntegerArr2;
                bigInteger4 = bigInteger2;
                i22 = i13;
                i16 = 0;
                i19 = 16;
            }
            i20--;
            if (i20 < 0) {
                bigIntegerArr[0] = bigIntegerArr4[0];
                bigIntegerArr[1] = bigIntegerArr4[1];
                bigInteger = bigIntegerArr2[0];
                break;
            }
            i21++;
            i18 = i12;
            bigInteger5 = bigInteger3;
            bigIntegerArr3 = bigIntegerArr2;
            bigInteger4 = bigInteger2;
            i16 = 0;
            i19 = 16;
        }
        return bigInteger.intValue();
    }

    private long procedure_Aa(long j4, long j10, BigInteger[] bigIntegerArr, int i4) {
        BigInteger bigInteger;
        BigInteger[] bigIntegerArr2;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        int i10;
        long j11 = j4;
        while (true) {
            if (j11 >= 0 && j11 <= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
                break;
            }
            j11 = this.init_random.nextInt() * 2;
        }
        long j12 = j10;
        while (true) {
            if (j12 >= 0 && j12 <= KSYMediaMeta.AV_CH_WIDE_RIGHT && j12 / 2 != 0) {
                break;
            }
            j12 = (this.init_random.nextInt() * 2) + 1;
        }
        BigInteger bigInteger4 = new BigInteger(Long.toString(j12));
        BigInteger bigInteger5 = new BigInteger("97781173");
        BigInteger bigInteger6 = new BigInteger(Long.toString(j11));
        int i11 = 0;
        BigInteger[] bigIntegerArr3 = {bigInteger6};
        int[] iArr = {i4};
        int i12 = 0;
        int i13 = 0;
        while (iArr[i12] >= 33) {
            int length = iArr.length + 1;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[length];
            System.arraycopy(iArr2, 0, iArr, 0, length);
            i13 = i12 + 1;
            iArr[i13] = iArr[i12] / 2;
            i12 = i13;
        }
        BigInteger[] bigIntegerArr4 = new BigInteger[i13 + 1];
        bigIntegerArr4[i13] = new BigInteger("8000000B", 16);
        int i14 = i13 - 1;
        int i15 = 0;
        while (true) {
            if (i15 >= i13) {
                bigInteger = bigIntegerArr3[0];
                break;
            }
            int i16 = 32;
            int i17 = iArr[i14] / 32;
            while (true) {
                int length2 = bigIntegerArr3.length;
                BigInteger[] bigIntegerArr5 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr3, i11, bigIntegerArr5, i11, bigIntegerArr3.length);
                bigIntegerArr2 = new BigInteger[i17 + 1];
                System.arraycopy(bigIntegerArr5, i11, bigIntegerArr2, i11, length2);
                int i18 = 0;
                while (i18 < i17) {
                    int i19 = i18 + 1;
                    bigIntegerArr2[i19] = bigIntegerArr2[i18].multiply(bigInteger5).add(bigInteger4).mod(TWO.pow(i16));
                    i18 = i19;
                }
                BigInteger bigInteger7 = new BigInteger("0");
                for (int i20 = 0; i20 < i17; i20++) {
                    bigInteger7 = bigInteger7.add(bigIntegerArr2[i20].multiply(TWO.pow(i20 * 32)));
                }
                bigIntegerArr2[i11] = bigIntegerArr2[i17];
                BigInteger bigInteger8 = TWO;
                int i21 = i14 + 1;
                BigInteger add = bigInteger8.pow(iArr[i14] - 1).divide(bigIntegerArr4[i21]).add(bigInteger8.pow(iArr[i14] - 1).multiply(bigInteger7).divide(bigIntegerArr4[i21].multiply(bigInteger8.pow(i17 * 32))));
                BigInteger mod = add.mod(bigInteger8);
                BigInteger bigInteger9 = ONE;
                if (mod.compareTo(bigInteger9) == 0) {
                    add = add.add(bigInteger9);
                }
                int i22 = 0;
                while (true) {
                    long j13 = i22;
                    bigInteger2 = bigInteger4;
                    BigInteger multiply = bigIntegerArr4[i21].multiply(add.add(BigInteger.valueOf(j13)));
                    BigInteger bigInteger10 = ONE;
                    bigIntegerArr4[i14] = multiply.add(bigInteger10);
                    BigInteger bigInteger11 = bigIntegerArr4[i14];
                    bigInteger3 = bigInteger5;
                    BigInteger bigInteger12 = TWO;
                    i10 = i13;
                    if (bigInteger11.compareTo(bigInteger12.pow(iArr[i14])) == 1) {
                        break;
                    }
                    if (bigInteger12.modPow(bigIntegerArr4[i21].multiply(add.add(BigInteger.valueOf(j13))), bigIntegerArr4[i14]).compareTo(bigInteger10) == 0 && bigInteger12.modPow(add.add(BigInteger.valueOf(j13)), bigIntegerArr4[i14]).compareTo(bigInteger10) != 0) {
                        break;
                    }
                    i22 += 2;
                    bigInteger4 = bigInteger2;
                    i13 = i10;
                    bigInteger5 = bigInteger3;
                }
                bigInteger4 = bigInteger2;
                i13 = i10;
                bigIntegerArr3 = bigIntegerArr2;
                bigInteger5 = bigInteger3;
                i11 = 0;
                i16 = 32;
            }
            i14--;
            if (i14 < 0) {
                bigIntegerArr[0] = bigIntegerArr4[0];
                bigIntegerArr[1] = bigIntegerArr4[1];
                bigInteger = bigIntegerArr2[0];
                break;
            }
            i15++;
            bigInteger4 = bigInteger2;
            i13 = i10;
            bigIntegerArr3 = bigIntegerArr2;
            bigInteger5 = bigInteger3;
            i11 = 0;
        }
        return bigInteger.longValue();
    }

    private void procedure_B(int i4, int i10, BigInteger[] bigIntegerArr) {
        int i11 = i4;
        while (true) {
            if (i11 >= 0 && i11 <= 65536) {
                break;
            }
            i11 = this.init_random.nextInt() / 32768;
        }
        int i12 = i10;
        while (true) {
            if (i12 >= 0 && i12 <= 65536 && i12 / 2 != 0) {
                break;
            }
            i12 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Integer.toString(i12));
        BigInteger bigInteger2 = new BigInteger("19381");
        int procedure_A = procedure_A(i11, i12, bigIntegerArr2, 256);
        char c10 = 0;
        BigInteger bigInteger3 = bigIntegerArr2[0];
        int procedure_A2 = procedure_A(procedure_A, i12, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[65];
        bigIntegerArr3[0] = new BigInteger(Integer.toString(procedure_A2));
        while (true) {
            int i13 = 0;
            while (i13 < 64) {
                int i14 = i13 + 1;
                bigIntegerArr3[i14] = bigIntegerArr3[i13].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(16));
                i13 = i14;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i15 = 0; i15 < 64; i15++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i15].multiply(TWO.pow(i15 * 16)));
            }
            bigIntegerArr3[c10] = bigIntegerArr3[64];
            BigInteger bigInteger6 = TWO;
            int i16 = 1024;
            BigInteger add = bigInteger6.pow(j1.M).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(j1.M).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger mod = add.mod(bigInteger6);
            BigInteger bigInteger7 = ONE;
            if (mod.compareTo(bigInteger7) == 0) {
                add = add.add(bigInteger7);
            }
            BigInteger bigInteger8 = add;
            int i17 = 0;
            while (true) {
                long j4 = i17;
                BigInteger multiply = bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j4)));
                BigInteger bigInteger9 = ONE;
                BigInteger add2 = multiply.add(bigInteger9);
                BigInteger bigInteger10 = TWO;
                if (add2.compareTo(bigInteger10.pow(i16)) == 1) {
                    break;
                } else if (bigInteger10.modPow(bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j4))), add2).compareTo(bigInteger9) == 0 && bigInteger10.modPow(bigInteger3.multiply(bigInteger8.add(BigInteger.valueOf(j4))), add2).compareTo(bigInteger9) != 0) {
                    bigIntegerArr[0] = add2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                } else {
                    i17 += 2;
                    i16 = 1024;
                }
            }
            c10 = 0;
        }
    }

    private void procedure_Bb(long j4, long j10, BigInteger[] bigIntegerArr) {
        long j11 = j4;
        while (true) {
            if (j11 >= 0 && j11 <= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
                break;
            }
            j11 = this.init_random.nextInt() * 2;
        }
        long j12 = j10;
        while (true) {
            if (j12 >= 0 && j12 <= KSYMediaMeta.AV_CH_WIDE_RIGHT && j12 / 2 != 0) {
                break;
            }
            j12 = (this.init_random.nextInt() * 2) + 1;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Long.toString(j12));
        BigInteger bigInteger2 = new BigInteger("97781173");
        long j13 = j12;
        long procedure_Aa = procedure_Aa(j11, j13, bigIntegerArr2, 256);
        char c10 = 0;
        BigInteger bigInteger3 = bigIntegerArr2[0];
        long procedure_Aa2 = procedure_Aa(procedure_Aa, j13, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[33];
        bigIntegerArr3[0] = new BigInteger(Long.toString(procedure_Aa2));
        while (true) {
            int i4 = 0;
            while (i4 < 32) {
                int i10 = i4 + 1;
                bigIntegerArr3[i10] = bigIntegerArr3[i4].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(32));
                i4 = i10;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i11 = 0; i11 < 32; i11++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i11].multiply(TWO.pow(i11 * 32)));
            }
            bigIntegerArr3[c10] = bigIntegerArr3[32];
            BigInteger bigInteger6 = TWO;
            int i12 = 1024;
            BigInteger add = bigInteger6.pow(j1.M).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(j1.M).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger mod = add.mod(bigInteger6);
            BigInteger bigInteger7 = ONE;
            if (mod.compareTo(bigInteger7) == 0) {
                add = add.add(bigInteger7);
            }
            int i13 = 0;
            while (true) {
                long j14 = i13;
                BigInteger multiply = bigInteger3.multiply(bigInteger4).multiply(add.add(BigInteger.valueOf(j14)));
                BigInteger bigInteger8 = ONE;
                BigInteger add2 = multiply.add(bigInteger8);
                BigInteger bigInteger9 = TWO;
                if (add2.compareTo(bigInteger9.pow(i12)) == 1) {
                    break;
                } else if (bigInteger9.modPow(bigInteger3.multiply(bigInteger4).multiply(add.add(BigInteger.valueOf(j14))), add2).compareTo(bigInteger8) == 0 && bigInteger9.modPow(bigInteger3.multiply(add.add(BigInteger.valueOf(j14))), add2).compareTo(bigInteger8) != 0) {
                    bigIntegerArr[0] = add2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                } else {
                    i13 += 2;
                    i12 = 1024;
                }
            }
            c10 = 0;
        }
    }

    private BigInteger procedure_C(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger subtract = bigInteger.subtract(ONE);
        BigInteger divide = subtract.divide(bigInteger2);
        int bitLength = bigInteger.bitLength();
        while (true) {
            BigInteger createRandomBigInteger = BigIntegers.createRandomBigInteger(bitLength, this.init_random);
            BigInteger bigInteger3 = ONE;
            if (createRandomBigInteger.compareTo(bigInteger3) > 0 && createRandomBigInteger.compareTo(subtract) < 0) {
                BigInteger modPow = createRandomBigInteger.modPow(divide, bigInteger);
                if (modPow.compareTo(bigInteger3) != 0) {
                    return modPow;
                }
            }
        }
    }

    public GOST3410Parameters generateParameters() {
        BigInteger[] bigIntegerArr = new BigInteger[2];
        if (this.typeproc == 1) {
            int nextInt = this.init_random.nextInt();
            int nextInt2 = this.init_random.nextInt();
            int i4 = this.size;
            if (i4 == 512) {
                procedure_A(nextInt, nextInt2, bigIntegerArr, 512);
            } else if (i4 != 1024) {
                throw new IllegalArgumentException("Ooops! key size 512 or 1024 bit.");
            } else {
                procedure_B(nextInt, nextInt2, bigIntegerArr);
            }
            BigInteger bigInteger = bigIntegerArr[0];
            BigInteger bigInteger2 = bigIntegerArr[1];
            return new GOST3410Parameters(bigInteger, bigInteger2, procedure_C(bigInteger, bigInteger2), new GOST3410ValidationParameters(nextInt, nextInt2));
        }
        long nextLong = this.init_random.nextLong();
        long nextLong2 = this.init_random.nextLong();
        int i10 = this.size;
        if (i10 == 512) {
            procedure_Aa(nextLong, nextLong2, bigIntegerArr, 512);
        } else if (i10 != 1024) {
            throw new IllegalStateException("Ooops! key size 512 or 1024 bit.");
        } else {
            procedure_Bb(nextLong, nextLong2, bigIntegerArr);
        }
        BigInteger bigInteger3 = bigIntegerArr[0];
        BigInteger bigInteger4 = bigIntegerArr[1];
        return new GOST3410Parameters(bigInteger3, bigInteger4, procedure_C(bigInteger3, bigInteger4), new GOST3410ValidationParameters(nextLong, nextLong2));
    }

    public void init(int i4, int i10, SecureRandom secureRandom) {
        this.size = i4;
        this.typeproc = i10;
        this.init_random = secureRandom;
    }
}
