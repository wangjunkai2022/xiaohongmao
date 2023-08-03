package org.bouncycastle.crypto.prng;

/* loaded from: classes4.dex */
public class ReversedWindowGenerator implements RandomGenerator {
    private final RandomGenerator generator;
    private byte[] window;
    private int windowCount;

    public ReversedWindowGenerator(RandomGenerator randomGenerator, int i4) {
        if (randomGenerator == null) {
            throw new IllegalArgumentException("generator cannot be null");
        }
        if (i4 < 2) {
            throw new IllegalArgumentException("windowSize must be at least 2");
        }
        this.generator = randomGenerator;
        this.window = new byte[i4];
    }

    private void doNextBytes(byte[] bArr, int i4, int i10) {
        synchronized (this) {
            for (int i11 = 0; i11 < i10; i11++) {
                if (this.windowCount < 1) {
                    RandomGenerator randomGenerator = this.generator;
                    byte[] bArr2 = this.window;
                    randomGenerator.nextBytes(bArr2, 0, bArr2.length);
                    this.windowCount = this.window.length;
                }
                byte[] bArr3 = this.window;
                int i12 = this.windowCount - 1;
                this.windowCount = i12;
                bArr[i11 + i4] = bArr3[i12];
            }
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j4) {
        synchronized (this) {
            this.windowCount = 0;
            this.generator.addSeedMaterial(j4);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        synchronized (this) {
            this.windowCount = 0;
            this.generator.addSeedMaterial(bArr);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        doNextBytes(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i4, int i10) {
        doNextBytes(bArr, i4, i10);
    }
}
