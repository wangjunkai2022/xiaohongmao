package org.bouncycastle.crypto.prng;

/* loaded from: classes4.dex */
public class ThreadedSeedGenerator {

    /* loaded from: classes4.dex */
    private class SeedGenerator implements Runnable {
        private volatile int counter;
        private volatile boolean stop;

        private SeedGenerator() {
            this.counter = 0;
            this.stop = false;
        }

        public byte[] generateSeed(int i4, boolean z9) {
            Thread thread = new Thread(this);
            byte[] bArr = new byte[i4];
            this.counter = 0;
            this.stop = false;
            thread.start();
            if (!z9) {
                i4 *= 8;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < i4; i11++) {
                while (this.counter == i10) {
                    try {
                        Thread.sleep(1L);
                    } catch (InterruptedException unused) {
                    }
                }
                i10 = this.counter;
                if (z9) {
                    bArr[i11] = (byte) (i10 & 255);
                } else {
                    int i12 = i11 / 8;
                    bArr[i12] = (byte) ((bArr[i12] << 1) | (i10 & 1));
                }
            }
            this.stop = true;
            return bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.stop) {
                this.counter++;
            }
        }
    }

    public byte[] generateSeed(int i4, boolean z9) {
        return new SeedGenerator().generateSeed(i4, z9);
    }
}
