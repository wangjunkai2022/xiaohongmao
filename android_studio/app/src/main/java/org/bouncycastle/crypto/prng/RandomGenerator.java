package org.bouncycastle.crypto.prng;

/* loaded from: classes4.dex */
public interface RandomGenerator {
    void addSeedMaterial(long j4);

    void addSeedMaterial(byte[] bArr);

    void nextBytes(byte[] bArr);

    void nextBytes(byte[] bArr, int i4, int i10);
}
