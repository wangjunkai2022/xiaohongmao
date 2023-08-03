package org.bouncycastle.crypto.util;

import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;

/* loaded from: classes4.dex */
public class ScryptConfig extends PBKDFConfig {
    private final int blockSize;
    private final int costParameter;
    private final int parallelizationParameter;
    private final int saltLength;

    /* loaded from: classes4.dex */
    public static class Builder {
        private final int blockSize;
        private final int costParameter;
        private final int parallelizationParameter;
        private int saltLength = 16;

        public Builder(int i4, int i10, int i11) {
            if (i4 <= 1 || !isPowerOf2(i4)) {
                throw new IllegalArgumentException("Cost parameter N must be > 1 and a power of 2");
            }
            this.costParameter = i4;
            this.blockSize = i10;
            this.parallelizationParameter = i11;
        }

        private static boolean isPowerOf2(int i4) {
            return (i4 & (i4 + (-1))) == 0;
        }

        public ScryptConfig build() {
            return new ScryptConfig(this);
        }

        public Builder withSaltLength(int i4) {
            this.saltLength = i4;
            return this;
        }
    }

    private ScryptConfig(Builder builder) {
        super(MiscObjectIdentifiers.id_scrypt);
        this.costParameter = builder.costParameter;
        this.blockSize = builder.blockSize;
        this.parallelizationParameter = builder.parallelizationParameter;
        this.saltLength = builder.saltLength;
    }

    public int getBlockSize() {
        return this.blockSize;
    }

    public int getCostParameter() {
        return this.costParameter;
    }

    public int getParallelizationParameter() {
        return this.parallelizationParameter;
    }

    public int getSaltLength() {
        return this.saltLength;
    }
}
