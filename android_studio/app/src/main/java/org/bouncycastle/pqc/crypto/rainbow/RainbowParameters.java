package org.bouncycastle.pqc.crypto.rainbow;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes5.dex */
public class RainbowParameters implements CipherParameters {
    private final int[] DEFAULT_VI;
    private int[] vi;

    public RainbowParameters() {
        int[] iArr = {6, 12, 17, 22, 33};
        this.DEFAULT_VI = iArr;
        this.vi = iArr;
    }

    public RainbowParameters(int[] iArr) {
        this.DEFAULT_VI = new int[]{6, 12, 17, 22, 33};
        this.vi = iArr;
        checkParams();
    }

    private void checkParams() {
        int[] iArr;
        int i4;
        int[] iArr2 = this.vi;
        if (iArr2 == null) {
            throw new IllegalArgumentException("no layers defined.");
        }
        if (iArr2.length <= 1) {
            throw new IllegalArgumentException("Rainbow needs at least 1 layer, such that v1 < v2.");
        }
        int i10 = 0;
        do {
            iArr = this.vi;
            if (i10 >= iArr.length - 1) {
                return;
            }
            i4 = iArr[i10];
            i10++;
        } while (i4 < iArr[i10]);
        throw new IllegalArgumentException("v[i] has to be smaller than v[i+1]");
    }

    public int getDocLength() {
        int[] iArr = this.vi;
        return iArr[iArr.length - 1] - iArr[0];
    }

    public int getNumOfLayers() {
        return this.vi.length - 1;
    }

    public int[] getVi() {
        return this.vi;
    }
}
