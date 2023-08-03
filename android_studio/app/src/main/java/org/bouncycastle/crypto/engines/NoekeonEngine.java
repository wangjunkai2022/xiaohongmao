package org.bouncycastle.crypto.engines;

import com.google.common.base.c;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class NoekeonEngine implements BlockCipher {
    private static final int SIZE = 16;
    private static final byte[] roundConstants = {Byte.MIN_VALUE, c.E, 54, 108, -40, -85, 77, -102, 47, 94, PSSSigner.TRAILER_IMPLICIT, 99, -58, -105, 53, 106, -44};
    private boolean _forEncryption;

    /* renamed from: k  reason: collision with root package name */
    private final int[] f91237k = new int[4];
    private boolean _initialised = false;

    private int decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bigEndianToInt = Pack.bigEndianToInt(bArr, i4);
        int bigEndianToInt2 = Pack.bigEndianToInt(bArr, i4 + 4);
        int bigEndianToInt3 = Pack.bigEndianToInt(bArr, i4 + 8);
        int bigEndianToInt4 = Pack.bigEndianToInt(bArr, i4 + 12);
        int[] iArr = this.f91237k;
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = 16;
        while (true) {
            int i16 = bigEndianToInt ^ bigEndianToInt3;
            int rotateLeft = i16 ^ (Integers.rotateLeft(i16, 8) ^ Integers.rotateLeft(i16, 24));
            int i17 = bigEndianToInt2 ^ i12;
            int i18 = bigEndianToInt4 ^ i14;
            int i19 = i17 ^ i18;
            int rotateLeft2 = (Integers.rotateLeft(i19, 24) ^ Integers.rotateLeft(i19, 8)) ^ i19;
            int i20 = i17 ^ rotateLeft;
            int i21 = (bigEndianToInt3 ^ i13) ^ rotateLeft2;
            int i22 = i18 ^ rotateLeft;
            int i23 = ((bigEndianToInt ^ i11) ^ rotateLeft2) ^ (roundConstants[i15] & 255);
            i15--;
            if (i15 < 0) {
                Pack.intToBigEndian(i23, bArr2, i10);
                Pack.intToBigEndian(i20, bArr2, i10 + 4);
                Pack.intToBigEndian(i21, bArr2, i10 + 8);
                Pack.intToBigEndian(i22, bArr2, i10 + 12);
                return 16;
            }
            int rotateLeft3 = Integers.rotateLeft(i20, 1);
            int rotateLeft4 = Integers.rotateLeft(i21, 5);
            int rotateLeft5 = Integers.rotateLeft(i22, 2);
            int i24 = rotateLeft3 ^ (rotateLeft5 | rotateLeft4);
            int i25 = ~i24;
            int i26 = i23 ^ (rotateLeft4 & i25);
            int i27 = (rotateLeft4 ^ (i25 ^ rotateLeft5)) ^ i26;
            int i28 = i24 ^ (i26 | i27);
            bigEndianToInt2 = Integers.rotateLeft(i28, 31);
            bigEndianToInt3 = Integers.rotateLeft(i27, 27);
            int rotateLeft6 = Integers.rotateLeft(i26, 30);
            bigEndianToInt = rotateLeft5 ^ (i27 & i28);
            bigEndianToInt4 = rotateLeft6;
        }
    }

    private int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bigEndianToInt = Pack.bigEndianToInt(bArr, i4);
        int bigEndianToInt2 = Pack.bigEndianToInt(bArr, i4 + 4);
        int bigEndianToInt3 = Pack.bigEndianToInt(bArr, i4 + 8);
        int bigEndianToInt4 = Pack.bigEndianToInt(bArr, i4 + 12);
        int[] iArr = this.f91237k;
        int i11 = 0;
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = iArr[2];
        int i15 = iArr[3];
        while (true) {
            int i16 = bigEndianToInt ^ (roundConstants[i11] & 255);
            int i17 = i16 ^ bigEndianToInt3;
            int rotateLeft = i17 ^ (Integers.rotateLeft(i17, 8) ^ Integers.rotateLeft(i17, 24));
            int i18 = bigEndianToInt2 ^ i13;
            int i19 = bigEndianToInt4 ^ i15;
            int i20 = i18 ^ i19;
            int rotateLeft2 = i20 ^ (Integers.rotateLeft(i20, 24) ^ Integers.rotateLeft(i20, 8));
            int i21 = (i16 ^ i12) ^ rotateLeft2;
            int i22 = i18 ^ rotateLeft;
            int i23 = (bigEndianToInt3 ^ i14) ^ rotateLeft2;
            int i24 = i19 ^ rotateLeft;
            i11++;
            if (i11 > 16) {
                Pack.intToBigEndian(i21, bArr2, i10);
                Pack.intToBigEndian(i22, bArr2, i10 + 4);
                Pack.intToBigEndian(i23, bArr2, i10 + 8);
                Pack.intToBigEndian(i24, bArr2, i10 + 12);
                return 16;
            }
            int rotateLeft3 = Integers.rotateLeft(i22, 1);
            int rotateLeft4 = Integers.rotateLeft(i23, 5);
            int rotateLeft5 = Integers.rotateLeft(i24, 2);
            int i25 = rotateLeft3 ^ (rotateLeft5 | rotateLeft4);
            int i26 = ~i25;
            int i27 = i21 ^ (rotateLeft4 & i26);
            int i28 = (rotateLeft4 ^ (i26 ^ rotateLeft5)) ^ i27;
            int i29 = i25 ^ (i27 | i28);
            bigEndianToInt2 = Integers.rotateLeft(i29, 31);
            bigEndianToInt3 = Integers.rotateLeft(i28, 27);
            int rotateLeft6 = Integers.rotateLeft(i27, 30);
            bigEndianToInt = rotateLeft5 ^ (i28 & i29);
            bigEndianToInt4 = rotateLeft6;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Noekeon";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to Noekeon init - " + cipherParameters.getClass().getName());
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("Key length not 128 bits.");
        }
        Pack.bigEndianToInt(key, 0, this.f91237k, 0, 4);
        if (!z9) {
            int[] iArr = this.f91237k;
            int i4 = iArr[0];
            int i10 = iArr[1];
            int i11 = iArr[2];
            int i12 = iArr[3];
            int i13 = i4 ^ i11;
            int rotateLeft = i13 ^ (Integers.rotateLeft(i13, 8) ^ Integers.rotateLeft(i13, 24));
            int i14 = i10 ^ i12;
            int rotateLeft2 = (Integers.rotateLeft(i14, 8) ^ Integers.rotateLeft(i14, 24)) ^ i14;
            int i15 = i10 ^ rotateLeft;
            int i16 = i12 ^ rotateLeft;
            int[] iArr2 = this.f91237k;
            iArr2[0] = i4 ^ rotateLeft2;
            iArr2[1] = i15;
            iArr2[2] = i11 ^ rotateLeft2;
            iArr2[3] = i16;
        }
        this._forEncryption = z9;
        this._initialised = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (!this._initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i4 <= bArr.length - 16) {
            if (i10 <= bArr2.length - 16) {
                return this._forEncryption ? encryptBlock(bArr, i4, bArr2, i10) : decryptBlock(bArr, i4, bArr2, i10);
            }
            throw new OutputLengthException("output buffer too short");
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
