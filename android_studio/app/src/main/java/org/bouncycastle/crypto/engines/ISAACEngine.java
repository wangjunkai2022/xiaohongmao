package org.bouncycastle.crypto.engines;

import com.google.android.exoplayer2.analytics.j1;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class ISAACEngine implements StreamCipher {
    private final int sizeL = 8;
    private final int stateArraySize = 256;
    private int[] engineState = null;
    private int[] results = null;

    /* renamed from: a  reason: collision with root package name */
    private int f91234a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f91235b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f91236c = 0;
    private int index = 0;
    private byte[] keyStream = new byte[1024];
    private byte[] workingKey = null;
    private boolean initialised = false;

    private void isaac() {
        int i4;
        int i10;
        int i11 = this.f91235b;
        int i12 = this.f91236c + 1;
        this.f91236c = i12;
        this.f91235b = i11 + i12;
        for (int i13 = 0; i13 < 256; i13++) {
            int[] iArr = this.engineState;
            int i14 = iArr[i13];
            int i15 = i13 & 3;
            if (i15 == 0) {
                i4 = this.f91234a;
                i10 = i4 << 13;
            } else if (i15 == 1) {
                i4 = this.f91234a;
                i10 = i4 >>> 6;
            } else if (i15 == 2) {
                i4 = this.f91234a;
                i10 = i4 << 2;
            } else if (i15 != 3) {
                int i16 = this.f91234a + iArr[(i13 + 128) & 255];
                this.f91234a = i16;
                int i17 = iArr[(i14 >>> 2) & 255] + i16 + this.f91235b;
                iArr[i13] = i17;
                int[] iArr2 = this.results;
                int i18 = iArr[(i17 >>> 10) & 255] + i14;
                this.f91235b = i18;
                iArr2[i13] = i18;
            } else {
                i4 = this.f91234a;
                i10 = i4 >>> 16;
            }
            this.f91234a = i4 ^ i10;
            int i162 = this.f91234a + iArr[(i13 + 128) & 255];
            this.f91234a = i162;
            int i172 = iArr[(i14 >>> 2) & 255] + i162 + this.f91235b;
            iArr[i13] = i172;
            int[] iArr22 = this.results;
            int i182 = iArr[(i172 >>> 10) & 255] + i14;
            this.f91235b = i182;
            iArr22[i13] = i182;
        }
    }

    private void mix(int[] iArr) {
        iArr[0] = iArr[0] ^ (iArr[1] << 11);
        iArr[3] = iArr[3] + iArr[0];
        iArr[1] = iArr[1] + iArr[2];
        iArr[1] = iArr[1] ^ (iArr[2] >>> 2);
        iArr[4] = iArr[4] + iArr[1];
        iArr[2] = iArr[2] + iArr[3];
        iArr[2] = iArr[2] ^ (iArr[3] << 8);
        iArr[5] = iArr[5] + iArr[2];
        iArr[3] = iArr[3] + iArr[4];
        iArr[3] = iArr[3] ^ (iArr[4] >>> 16);
        iArr[6] = iArr[6] + iArr[3];
        iArr[4] = iArr[4] + iArr[5];
        iArr[4] = iArr[4] ^ (iArr[5] << 10);
        iArr[7] = iArr[7] + iArr[4];
        iArr[5] = iArr[5] + iArr[6];
        iArr[5] = (iArr[6] >>> 4) ^ iArr[5];
        iArr[0] = iArr[0] + iArr[5];
        iArr[6] = iArr[6] + iArr[7];
        iArr[6] = iArr[6] ^ (iArr[7] << 8);
        iArr[1] = iArr[1] + iArr[6];
        iArr[7] = iArr[7] + iArr[0];
        iArr[7] = iArr[7] ^ (iArr[0] >>> 9);
        iArr[2] = iArr[2] + iArr[7];
        iArr[0] = iArr[0] + iArr[1];
    }

    private void setKey(byte[] bArr) {
        this.workingKey = bArr;
        if (this.engineState == null) {
            this.engineState = new int[256];
        }
        if (this.results == null) {
            this.results = new int[256];
        }
        for (int i4 = 0; i4 < 256; i4++) {
            int[] iArr = this.engineState;
            this.results[i4] = 0;
            iArr[i4] = 0;
        }
        this.f91236c = 0;
        this.f91235b = 0;
        this.f91234a = 0;
        this.index = 0;
        int length = bArr.length + (bArr.length & 3);
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int i10 = 0; i10 < length; i10 += 4) {
            this.results[i10 >>> 2] = Pack.littleEndianToInt(bArr2, i10);
        }
        int[] iArr2 = new int[8];
        for (int i11 = 0; i11 < 8; i11++) {
            iArr2[i11] = -1640531527;
        }
        for (int i12 = 0; i12 < 4; i12++) {
            mix(iArr2);
        }
        int i13 = 0;
        while (i13 < 2) {
            for (int i14 = 0; i14 < 256; i14 += 8) {
                for (int i15 = 0; i15 < 8; i15++) {
                    iArr2[i15] = iArr2[i15] + (i13 < 1 ? this.results[i14 + i15] : this.engineState[i14 + i15]);
                }
                mix(iArr2);
                for (int i16 = 0; i16 < 8; i16++) {
                    this.engineState[i14 + i16] = iArr2[i16];
                }
            }
            i13++;
        }
        isaac();
        this.initialised = true;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ISAAC";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            setKey(((KeyParameter) cipherParameters).getKey());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to ISAAC init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i4 + i10 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                for (int i12 = 0; i12 < i10; i12++) {
                    if (this.index == 0) {
                        isaac();
                        this.keyStream = Pack.intToBigEndian(this.results);
                    }
                    byte[] bArr3 = this.keyStream;
                    int i13 = this.index;
                    bArr2[i12 + i11] = (byte) (bArr3[i13] ^ bArr[i12 + i4]);
                    this.index = (i13 + 1) & j1.M;
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
        setKey(this.workingKey);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        if (this.index == 0) {
            isaac();
            this.keyStream = Pack.intToBigEndian(this.results);
        }
        byte[] bArr = this.keyStream;
        int i4 = this.index;
        byte b11 = (byte) (b10 ^ bArr[i4]);
        this.index = (i4 + 1) & j1.M;
        return b11;
    }
}
