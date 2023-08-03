package org.bouncycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.pqc.crypto.rainbow.util.GF2Field;
import org.bouncycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class Layer {
    private short[][][] coeff_alpha;
    private short[][][] coeff_beta;
    private short[] coeff_eta;
    private short[][] coeff_gamma;
    private int oi;
    private int vi;
    private int viNext;

    public Layer(byte b10, byte b11, short[][][] sArr, short[][][] sArr2, short[][] sArr3, short[] sArr4) {
        int i4 = b10 & 255;
        this.vi = i4;
        int i10 = b11 & 255;
        this.viNext = i10;
        this.oi = i10 - i4;
        this.coeff_alpha = sArr;
        this.coeff_beta = sArr2;
        this.coeff_gamma = sArr3;
        this.coeff_eta = sArr4;
    }

    public Layer(int i4, int i10, SecureRandom secureRandom) {
        this.vi = i4;
        this.viNext = i10;
        int i11 = i10 - i4;
        this.oi = i11;
        this.coeff_alpha = (short[][][]) Array.newInstance(short.class, i11, i11, i4);
        int i12 = this.oi;
        int i13 = this.vi;
        this.coeff_beta = (short[][][]) Array.newInstance(short.class, i12, i13, i13);
        this.coeff_gamma = (short[][]) Array.newInstance(short.class, this.oi, this.viNext);
        int i14 = this.oi;
        this.coeff_eta = new short[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            for (int i16 = 0; i16 < this.oi; i16++) {
                for (int i17 = 0; i17 < this.vi; i17++) {
                    this.coeff_alpha[i15][i16][i17] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i18 = 0; i18 < i14; i18++) {
            for (int i19 = 0; i19 < this.vi; i19++) {
                for (int i20 = 0; i20 < this.vi; i20++) {
                    this.coeff_beta[i18][i19][i20] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i21 = 0; i21 < i14; i21++) {
            for (int i22 = 0; i22 < this.viNext; i22++) {
                this.coeff_gamma[i21][i22] = (short) (secureRandom.nextInt() & 255);
            }
        }
        for (int i23 = 0; i23 < i14; i23++) {
            this.coeff_eta[i23] = (short) (secureRandom.nextInt() & 255);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Layer)) {
            return false;
        }
        Layer layer = (Layer) obj;
        return this.vi == layer.getVi() && this.viNext == layer.getViNext() && this.oi == layer.getOi() && RainbowUtil.equals(this.coeff_alpha, layer.getCoeffAlpha()) && RainbowUtil.equals(this.coeff_beta, layer.getCoeffBeta()) && RainbowUtil.equals(this.coeff_gamma, layer.getCoeffGamma()) && RainbowUtil.equals(this.coeff_eta, layer.getCoeffEta());
    }

    public short[][][] getCoeffAlpha() {
        return this.coeff_alpha;
    }

    public short[][][] getCoeffBeta() {
        return this.coeff_beta;
    }

    public short[] getCoeffEta() {
        return this.coeff_eta;
    }

    public short[][] getCoeffGamma() {
        return this.coeff_gamma;
    }

    public int getOi() {
        return this.oi;
    }

    public int getVi() {
        return this.vi;
    }

    public int getViNext() {
        return this.viNext;
    }

    public int hashCode() {
        return (((((((((((this.vi * 37) + this.viNext) * 37) + this.oi) * 37) + Arrays.hashCode(this.coeff_alpha)) * 37) + Arrays.hashCode(this.coeff_beta)) * 37) + Arrays.hashCode(this.coeff_gamma)) * 37) + Arrays.hashCode(this.coeff_eta);
    }

    public short[][] plugInVinegars(short[] sArr) {
        int i4 = this.oi;
        int i10 = 0;
        short[][] sArr2 = (short[][]) Array.newInstance(short.class, i4, i4 + 1);
        short[] sArr3 = new short[this.oi];
        for (int i11 = 0; i11 < this.oi; i11++) {
            for (int i12 = 0; i12 < this.vi; i12++) {
                for (int i13 = 0; i13 < this.vi; i13++) {
                    sArr3[i11] = GF2Field.addElem(sArr3[i11], GF2Field.multElem(GF2Field.multElem(this.coeff_beta[i11][i12][i13], sArr[i12]), sArr[i13]));
                }
            }
        }
        for (int i14 = 0; i14 < this.oi; i14++) {
            for (int i15 = 0; i15 < this.oi; i15++) {
                for (int i16 = 0; i16 < this.vi; i16++) {
                    sArr2[i14][i15] = GF2Field.addElem(sArr2[i14][i15], GF2Field.multElem(this.coeff_alpha[i14][i15][i16], sArr[i16]));
                }
            }
        }
        for (int i17 = 0; i17 < this.oi; i17++) {
            for (int i18 = 0; i18 < this.vi; i18++) {
                sArr3[i17] = GF2Field.addElem(sArr3[i17], GF2Field.multElem(this.coeff_gamma[i17][i18], sArr[i18]));
            }
        }
        for (int i19 = 0; i19 < this.oi; i19++) {
            for (int i20 = this.vi; i20 < this.viNext; i20++) {
                short[] sArr4 = sArr2[i19];
                int i21 = this.vi;
                sArr4[i20 - i21] = GF2Field.addElem(this.coeff_gamma[i19][i20], sArr2[i19][i20 - i21]);
            }
        }
        for (int i22 = 0; i22 < this.oi; i22++) {
            sArr3[i22] = GF2Field.addElem(sArr3[i22], this.coeff_eta[i22]);
        }
        while (true) {
            int i23 = this.oi;
            if (i10 >= i23) {
                return sArr2;
            }
            sArr2[i10][i23] = sArr3[i10];
            i10++;
        }
    }
}
