package org.bouncycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes5.dex */
public class ElGamalGenParameterSpec implements AlgorithmParameterSpec {
    private int primeSize;

    public ElGamalGenParameterSpec(int i4) {
        this.primeSize = i4;
    }

    public int getPrimeSize() {
        return this.primeSize;
    }
}
