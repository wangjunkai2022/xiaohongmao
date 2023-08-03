package org.bouncycastle.pqc.crypto.gmss;

import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class GMSSParameters {
    private int[] K;
    private int[] heightOfTrees;
    private int numOfLayers;
    private int[] winternitzParameter;

    public GMSSParameters(int i4) throws IllegalArgumentException {
        if (i4 <= 10) {
            init(1, new int[]{10}, new int[]{3}, new int[]{2});
        } else if (i4 <= 20) {
            init(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2});
        } else {
            init(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2});
        }
    }

    public GMSSParameters(int i4, int[] iArr, int[] iArr2, int[] iArr3) throws IllegalArgumentException {
        init(i4, iArr, iArr2, iArr3);
    }

    private void init(int i4, int[] iArr, int[] iArr2, int[] iArr3) throws IllegalArgumentException {
        String str;
        boolean z9;
        this.numOfLayers = i4;
        if (i4 == iArr2.length && i4 == iArr.length && i4 == iArr3.length) {
            z9 = true;
            str = "";
        } else {
            str = "Unexpected parameterset format";
            z9 = false;
        }
        for (int i10 = 0; i10 < this.numOfLayers; i10++) {
            if (iArr3[i10] < 2 || (iArr[i10] - iArr3[i10]) % 2 != 0) {
                str = "Wrong parameter K (K >= 2 and H-K even required)!";
                z9 = false;
            }
            if (iArr[i10] < 4 || iArr2[i10] < 2) {
                str = "Wrong parameter H or w (H > 3 and w > 1 required)!";
                z9 = false;
            }
        }
        if (!z9) {
            throw new IllegalArgumentException(str);
        }
        this.heightOfTrees = Arrays.clone(iArr);
        this.winternitzParameter = Arrays.clone(iArr2);
        this.K = Arrays.clone(iArr3);
    }

    public int[] getHeightOfTrees() {
        return Arrays.clone(this.heightOfTrees);
    }

    public int[] getK() {
        return Arrays.clone(this.K);
    }

    public int getNumOfLayers() {
        return this.numOfLayers;
    }

    public int[] getWinternitzParameter() {
        return Arrays.clone(this.winternitzParameter);
    }
}
