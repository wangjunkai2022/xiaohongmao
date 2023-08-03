package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class Permutation {
    private int[] perm;

    public Permutation(int i4) {
        if (i4 <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.perm = new int[i4];
        for (int i10 = i4 - 1; i10 >= 0; i10--) {
            this.perm[i10] = i10;
        }
    }

    public Permutation(int i4, SecureRandom secureRandom) {
        if (i4 <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.perm = new int[i4];
        int[] iArr = new int[i4];
        for (int i10 = 0; i10 < i4; i10++) {
            iArr[i10] = i10;
        }
        int i11 = i4;
        for (int i12 = 0; i12 < i4; i12++) {
            int nextInt = RandUtils.nextInt(secureRandom, i11);
            i11--;
            this.perm[i12] = iArr[nextInt];
            iArr[nextInt] = iArr[i11];
        }
    }

    public Permutation(byte[] bArr) {
        if (bArr.length <= 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        int OS2IP = LittleEndianConversions.OS2IP(bArr, 0);
        int ceilLog256 = IntegerFunctions.ceilLog256(OS2IP - 1);
        if (bArr.length != (OS2IP * ceilLog256) + 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        this.perm = new int[OS2IP];
        for (int i4 = 0; i4 < OS2IP; i4++) {
            this.perm[i4] = LittleEndianConversions.OS2IP(bArr, (i4 * ceilLog256) + 4, ceilLog256);
        }
        if (!isPermutation(this.perm)) {
            throw new IllegalArgumentException("invalid encoding");
        }
    }

    public Permutation(int[] iArr) {
        if (!isPermutation(iArr)) {
            throw new IllegalArgumentException("array is not a permutation vector");
        }
        this.perm = IntUtils.clone(iArr);
    }

    private boolean isPermutation(int[] iArr) {
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i4 = 0; i4 < length; i4++) {
            if (iArr[i4] < 0 || iArr[i4] >= length || zArr[iArr[i4]]) {
                return false;
            }
            zArr[iArr[i4]] = true;
        }
        return true;
    }

    public Permutation computeInverse() {
        Permutation permutation = new Permutation(this.perm.length);
        for (int length = this.perm.length - 1; length >= 0; length--) {
            permutation.perm[this.perm[length]] = length;
        }
        return permutation;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Permutation) {
            return IntUtils.equals(this.perm, ((Permutation) obj).perm);
        }
        return false;
    }

    public byte[] getEncoded() {
        int length = this.perm.length;
        int ceilLog256 = IntegerFunctions.ceilLog256(length - 1);
        byte[] bArr = new byte[(length * ceilLog256) + 4];
        LittleEndianConversions.I2OSP(length, bArr, 0);
        for (int i4 = 0; i4 < length; i4++) {
            LittleEndianConversions.I2OSP(this.perm[i4], bArr, (i4 * ceilLog256) + 4, ceilLog256);
        }
        return bArr;
    }

    public int[] getVector() {
        return IntUtils.clone(this.perm);
    }

    public int hashCode() {
        return Arrays.hashCode(this.perm);
    }

    public Permutation rightMultiply(Permutation permutation) {
        int length = permutation.perm.length;
        int[] iArr = this.perm;
        if (length == iArr.length) {
            Permutation permutation2 = new Permutation(iArr.length);
            for (int length2 = this.perm.length - 1; length2 >= 0; length2--) {
                permutation2.perm[length2] = this.perm[permutation.perm[length2]];
            }
            return permutation2;
        }
        throw new IllegalArgumentException("length mismatch");
    }

    public String toString() {
        String str = "[" + this.perm[0];
        for (int i4 = 1; i4 < this.perm.length; i4++) {
            str = str + ", " + this.perm[i4];
        }
        return str + "]";
    }
}
