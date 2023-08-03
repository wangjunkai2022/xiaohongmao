package org.bouncycastle.crypto.params;

import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class DSAValidationParameters {
    private int counter;
    private byte[] seed;
    private int usageIndex;

    public DSAValidationParameters(byte[] bArr, int i4) {
        this(bArr, i4, -1);
    }

    public DSAValidationParameters(byte[] bArr, int i4, int i10) {
        this.seed = Arrays.clone(bArr);
        this.counter = i4;
        this.usageIndex = i10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAValidationParameters) {
            DSAValidationParameters dSAValidationParameters = (DSAValidationParameters) obj;
            if (dSAValidationParameters.counter != this.counter) {
                return false;
            }
            return Arrays.areEqual(this.seed, dSAValidationParameters.seed);
        }
        return false;
    }

    public int getCounter() {
        return this.counter;
    }

    public byte[] getSeed() {
        return Arrays.clone(this.seed);
    }

    public int getUsageIndex() {
        return this.usageIndex;
    }

    public int hashCode() {
        return this.counter ^ Arrays.hashCode(this.seed);
    }
}
