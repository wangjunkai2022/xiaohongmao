package org.bouncycastle.crypto.prng;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class DigestRandomGenerator implements RandomGenerator {
    private static long CYCLE_COUNT = 10;
    private Digest digest;
    private byte[] seed;
    private byte[] state;
    private long seedCounter = 1;
    private long stateCounter = 1;

    public DigestRandomGenerator(Digest digest) {
        this.digest = digest;
        this.seed = new byte[digest.getDigestSize()];
        this.state = new byte[digest.getDigestSize()];
    }

    private void cycleSeed() {
        digestUpdate(this.seed);
        long j4 = this.seedCounter;
        this.seedCounter = 1 + j4;
        digestAddCounter(j4);
        digestDoFinal(this.seed);
    }

    private void digestAddCounter(long j4) {
        for (int i4 = 0; i4 != 8; i4++) {
            this.digest.update((byte) j4);
            j4 >>>= 8;
        }
    }

    private void digestDoFinal(byte[] bArr) {
        this.digest.doFinal(bArr, 0);
    }

    private void digestUpdate(byte[] bArr) {
        this.digest.update(bArr, 0, bArr.length);
    }

    private void generateState() {
        long j4 = this.stateCounter;
        this.stateCounter = 1 + j4;
        digestAddCounter(j4);
        digestUpdate(this.state);
        digestUpdate(this.seed);
        digestDoFinal(this.state);
        if (this.stateCounter % CYCLE_COUNT == 0) {
            cycleSeed();
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j4) {
        synchronized (this) {
            digestAddCounter(j4);
            digestUpdate(this.seed);
            digestDoFinal(this.seed);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        synchronized (this) {
            if (!Arrays.isNullOrEmpty(bArr)) {
                digestUpdate(bArr);
            }
            digestUpdate(this.seed);
            digestDoFinal(this.seed);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        nextBytes(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i4, int i10) {
        synchronized (this) {
            generateState();
            int i11 = i10 + i4;
            int i12 = 0;
            while (i4 != i11) {
                if (i12 == this.state.length) {
                    generateState();
                    i12 = 0;
                }
                bArr[i4] = this.state[i12];
                i4++;
                i12++;
            }
        }
    }
}
