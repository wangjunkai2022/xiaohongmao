package org.bouncycastle.crypto.engines;

import androidx.core.app.FrameMetricsAggregator;
import com.google.android.exoplayer2.analytics.j1;
import com.im.freechat.utils.h;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes4.dex */
public class HC128Engine implements StreamCipher {
    private boolean initialised;
    private byte[] iv;
    private byte[] key;

    /* renamed from: p  reason: collision with root package name */
    private int[] f91230p = new int[512];

    /* renamed from: q  reason: collision with root package name */
    private int[] f91231q = new int[512];
    private int cnt = 0;
    private byte[] buf = new byte[4];
    private int idx = 0;

    private static int dim(int i4, int i10) {
        return mod512(i4 - i10);
    }

    private static int f1(int i4) {
        return (i4 >>> 3) ^ (rotateRight(i4, 7) ^ rotateRight(i4, 18));
    }

    private static int f2(int i4) {
        return (i4 >>> 10) ^ (rotateRight(i4, 17) ^ rotateRight(i4, 19));
    }

    private int g1(int i4, int i10, int i11) {
        return (rotateRight(i4, 10) ^ rotateRight(i11, 23)) + rotateRight(i10, 8);
    }

    private int g2(int i4, int i10, int i11) {
        return (rotateLeft(i4, 10) ^ rotateLeft(i11, 23)) + rotateLeft(i10, 8);
    }

    private byte getByte() {
        if (this.idx == 0) {
            int step = step();
            byte[] bArr = this.buf;
            bArr[0] = (byte) (step & 255);
            int i4 = step >> 8;
            bArr[1] = (byte) (i4 & 255);
            int i10 = i4 >> 8;
            bArr[2] = (byte) (i10 & 255);
            bArr[3] = (byte) ((i10 >> 8) & 255);
        }
        byte[] bArr2 = this.buf;
        int i11 = this.idx;
        byte b10 = bArr2[i11];
        this.idx = 3 & (i11 + 1);
        return b10;
    }

    private int h1(int i4) {
        int[] iArr = this.f91231q;
        return iArr[i4 & 255] + iArr[((i4 >> 16) & 255) + 256];
    }

    private int h2(int i4) {
        int[] iArr = this.f91230p;
        return iArr[i4 & 255] + iArr[((i4 >> 16) & 255) + 256];
    }

    private void init() {
        if (this.key.length != 16) {
            throw new IllegalArgumentException("The key must be 128 bits long");
        }
        this.idx = 0;
        this.cnt = 0;
        int[] iArr = new int[h.f43782b];
        for (int i4 = 0; i4 < 16; i4++) {
            int i10 = i4 >> 2;
            iArr[i10] = ((this.key[i4] & 255) << ((i4 & 3) * 8)) | iArr[i10];
        }
        System.arraycopy(iArr, 0, iArr, 4, 4);
        int i11 = 0;
        while (true) {
            byte[] bArr = this.iv;
            if (i11 >= bArr.length || i11 >= 16) {
                break;
            }
            int i12 = (i11 >> 2) + 8;
            iArr[i12] = ((bArr[i11] & 255) << ((i11 & 3) * 8)) | iArr[i12];
            i11++;
        }
        System.arraycopy(iArr, 8, iArr, 12, 4);
        for (int i13 = 16; i13 < 1280; i13++) {
            iArr[i13] = f2(iArr[i13 - 2]) + iArr[i13 - 7] + f1(iArr[i13 - 15]) + iArr[i13 - 16] + i13;
        }
        System.arraycopy(iArr, 256, this.f91230p, 0, 512);
        System.arraycopy(iArr, 768, this.f91231q, 0, 512);
        for (int i14 = 0; i14 < 512; i14++) {
            this.f91230p[i14] = step();
        }
        for (int i15 = 0; i15 < 512; i15++) {
            this.f91231q[i15] = step();
        }
        this.cnt = 0;
    }

    private static int mod1024(int i4) {
        return i4 & j1.M;
    }

    private static int mod512(int i4) {
        return i4 & FrameMetricsAggregator.EVERY_DURATION;
    }

    private static int rotateLeft(int i4, int i10) {
        return (i4 >>> (-i10)) | (i4 << i10);
    }

    private static int rotateRight(int i4, int i10) {
        return (i4 << (-i10)) | (i4 >>> i10);
    }

    private int step() {
        int h22;
        int i4;
        int mod512 = mod512(this.cnt);
        if (this.cnt < 512) {
            int[] iArr = this.f91230p;
            iArr[mod512] = iArr[mod512] + g1(iArr[dim(mod512, 3)], this.f91230p[dim(mod512, 10)], this.f91230p[dim(mod512, FrameMetricsAggregator.EVERY_DURATION)]);
            h22 = h1(this.f91230p[dim(mod512, 12)]);
            i4 = this.f91230p[mod512];
        } else {
            int[] iArr2 = this.f91231q;
            iArr2[mod512] = iArr2[mod512] + g2(iArr2[dim(mod512, 3)], this.f91231q[dim(mod512, 10)], this.f91231q[dim(mod512, FrameMetricsAggregator.EVERY_DURATION)]);
            h22 = h2(this.f91231q[dim(mod512, 12)]);
            i4 = this.f91231q[mod512];
        }
        int i10 = i4 ^ h22;
        this.cnt = mod1024(this.cnt + 1);
        return i10;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters cipherParameters2;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.iv = parametersWithIV.getIV();
            cipherParameters2 = parametersWithIV.getParameters();
        } else {
            this.iv = new byte[0];
            cipherParameters2 = cipherParameters;
        }
        if (cipherParameters2 instanceof KeyParameter) {
            this.key = ((KeyParameter) cipherParameters2).getKey();
            init();
            this.initialised = true;
            return;
        }
        throw new IllegalArgumentException("Invalid parameter passed to HC128 init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i4 + i10 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                for (int i12 = 0; i12 < i10; i12++) {
                    bArr2[i11 + i12] = (byte) (bArr[i4 + i12] ^ getByte());
                }
                return i10;
            }
            throw new OutputLengthException("output buffer too short");
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        init();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        return (byte) (b10 ^ getByte());
    }
}
