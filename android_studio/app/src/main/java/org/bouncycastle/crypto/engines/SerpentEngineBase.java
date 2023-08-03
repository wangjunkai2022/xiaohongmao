package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes4.dex */
public abstract class SerpentEngineBase implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    static final int PHI = -1640531527;
    static final int ROUNDS = 32;
    protected int X0;
    protected int X1;
    protected int X2;
    protected int X3;
    protected boolean encrypting;
    protected int[] wKey;

    /* JADX INFO: Access modifiers changed from: protected */
    public static int rotateLeft(int i4, int i10) {
        return (i4 >>> (-i10)) | (i4 << i10);
    }

    protected static int rotateRight(int i4, int i10) {
        return (i4 << (-i10)) | (i4 >>> i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void LT() {
        int rotateLeft = rotateLeft(this.X0, 13);
        int rotateLeft2 = rotateLeft(this.X2, 3);
        this.X1 = rotateLeft((this.X1 ^ rotateLeft) ^ rotateLeft2, 1);
        int rotateLeft3 = rotateLeft((this.X3 ^ rotateLeft2) ^ (rotateLeft << 3), 7);
        this.X3 = rotateLeft3;
        this.X0 = rotateLeft((rotateLeft ^ this.X1) ^ rotateLeft3, 5);
        this.X2 = rotateLeft((this.X3 ^ rotateLeft2) ^ (this.X1 << 7), 22);
    }

    protected abstract void decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10);

    protected abstract void encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10);

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Serpent";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib0(int i4, int i10, int i11, int i12) {
        int i13 = ~i4;
        int i14 = i10 ^ i4;
        int i15 = (i13 | i14) ^ i12;
        int i16 = i11 ^ i15;
        int i17 = i14 ^ i16;
        this.X2 = i17;
        int i18 = (i14 & i12) ^ i13;
        int i19 = (i17 & i18) ^ i15;
        this.X1 = i19;
        int i20 = (i4 & i15) ^ (i19 | i16);
        this.X3 = i20;
        this.X0 = i20 ^ (i18 ^ i16);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib1(int i4, int i10, int i11, int i12) {
        int i13 = i12 ^ i10;
        int i14 = i4 ^ (i10 & i13);
        int i15 = i13 ^ i14;
        int i16 = i11 ^ i15;
        this.X3 = i16;
        int i17 = i10 ^ (i13 & i14);
        int i18 = i14 ^ (i16 | i17);
        this.X1 = i18;
        int i19 = ~i18;
        int i20 = i17 ^ i16;
        this.X0 = i19 ^ i20;
        this.X2 = (i19 | i20) ^ i15;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib2(int i4, int i10, int i11, int i12) {
        int i13 = i10 ^ i12;
        int i14 = ~i13;
        int i15 = i4 ^ i11;
        int i16 = i11 ^ i13;
        int i17 = (i10 & i16) ^ i15;
        this.X0 = i17;
        int i18 = (((i4 | i14) ^ i12) | i15) ^ i13;
        this.X3 = i18;
        int i19 = ~i16;
        int i20 = i18 | i17;
        this.X1 = i19 ^ i20;
        this.X2 = (i20 ^ i15) ^ (i12 & i19);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib3(int i4, int i10, int i11, int i12) {
        int i13 = i4 | i10;
        int i14 = i10 ^ i11;
        int i15 = i4 ^ (i10 & i14);
        int i16 = i11 ^ i15;
        int i17 = i12 | i15;
        int i18 = i14 ^ i17;
        this.X0 = i18;
        int i19 = (i17 | i14) ^ i12;
        this.X2 = i16 ^ i19;
        int i20 = i13 ^ i19;
        int i21 = i15 ^ (i18 & i20);
        this.X3 = i21;
        this.X1 = i21 ^ (i20 ^ i18);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib4(int i4, int i10, int i11, int i12) {
        int i13 = i10 ^ ((i11 | i12) & i4);
        int i14 = i11 ^ (i4 & i13);
        int i15 = i12 ^ i14;
        this.X1 = i15;
        int i16 = ~i4;
        int i17 = (i14 & i15) ^ i13;
        this.X3 = i17;
        int i18 = i12 ^ (i15 | i16);
        this.X0 = i17 ^ i18;
        this.X2 = (i16 ^ i15) ^ (i13 & i18);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib5(int i4, int i10, int i11, int i12) {
        int i13 = ~i11;
        int i14 = (i10 & i13) ^ i12;
        int i15 = i4 & i14;
        int i16 = (i10 ^ i13) ^ i15;
        this.X3 = i16;
        int i17 = i16 | i10;
        this.X1 = i14 ^ (i4 & i17);
        int i18 = i12 | i4;
        this.X0 = (i13 ^ i17) ^ i18;
        this.X2 = ((i4 ^ i11) | i15) ^ (i10 & i18);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib6(int i4, int i10, int i11, int i12) {
        int i13 = ~i4;
        int i14 = i4 ^ i10;
        int i15 = i11 ^ i14;
        int i16 = (i11 | i13) ^ i12;
        this.X1 = i15 ^ i16;
        int i17 = i14 ^ (i15 & i16);
        int i18 = i16 ^ (i10 | i17);
        this.X3 = i18;
        int i19 = i10 | i18;
        this.X0 = i17 ^ i19;
        this.X2 = (i12 & i13) ^ (i19 ^ i15);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib7(int i4, int i10, int i11, int i12) {
        int i13 = (i4 & i10) | i11;
        int i14 = (i4 | i10) & i12;
        int i15 = i13 ^ i14;
        this.X3 = i15;
        int i16 = i10 ^ i14;
        int i17 = ((i15 ^ (~i12)) | i16) ^ i4;
        this.X1 = i17;
        int i18 = (i16 ^ i11) ^ (i12 | i17);
        this.X0 = i18;
        this.X2 = ((i4 & i15) ^ i18) ^ (i13 ^ i17);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.encrypting = z9;
            this.wKey = makeWorkingKey(((KeyParameter) cipherParameters).getKey());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to " + getAlgorithmName() + " init - " + cipherParameters.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void inverseLT() {
        int rotateRight = (rotateRight(this.X2, 22) ^ this.X3) ^ (this.X1 << 7);
        int rotateRight2 = rotateRight(this.X0, 5) ^ this.X1;
        int i4 = this.X3;
        int i10 = rotateRight2 ^ i4;
        int rotateRight3 = rotateRight(i4, 7);
        int rotateRight4 = rotateRight(this.X1, 1);
        this.X3 = (rotateRight3 ^ rotateRight) ^ (i10 << 3);
        this.X1 = (rotateRight4 ^ i10) ^ rotateRight;
        this.X2 = rotateRight(rotateRight, 3);
        this.X0 = rotateRight(i10, 13);
    }

    protected abstract int[] makeWorkingKey(byte[] bArr);

    @Override // org.bouncycastle.crypto.BlockCipher
    public final int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (this.wKey == null) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i4 + 16 <= bArr.length) {
            if (i10 + 16 <= bArr2.length) {
                if (this.encrypting) {
                    encryptBlock(bArr, i4, bArr2, i10);
                    return 16;
                }
                decryptBlock(bArr, i4, bArr2, i10);
                return 16;
            }
            throw new OutputLengthException("output buffer too short");
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb0(int i4, int i10, int i11, int i12) {
        int i13 = i4 ^ i12;
        int i14 = i11 ^ i13;
        int i15 = i10 ^ i14;
        int i16 = (i12 & i4) ^ i15;
        this.X3 = i16;
        int i17 = i4 ^ (i10 & i13);
        this.X2 = (i11 | i17) ^ i15;
        int i18 = (i14 ^ i17) & i16;
        this.X1 = (~i14) ^ i18;
        this.X0 = (~i17) ^ i18;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb1(int i4, int i10, int i11, int i12) {
        int i13 = (~i4) ^ i10;
        int i14 = (i4 | i13) ^ i11;
        int i15 = i12 ^ i14;
        this.X2 = i15;
        int i16 = i10 ^ (i12 | i13);
        int i17 = i15 ^ i13;
        int i18 = (i14 & i16) ^ i17;
        this.X3 = i18;
        int i19 = i16 ^ i14;
        this.X1 = i18 ^ i19;
        this.X0 = i14 ^ (i19 & i17);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb2(int i4, int i10, int i11, int i12) {
        int i13 = ~i4;
        int i14 = i10 ^ i12;
        int i15 = (i11 & i13) ^ i14;
        this.X0 = i15;
        int i16 = i11 ^ i13;
        int i17 = i10 & (i11 ^ i15);
        int i18 = i16 ^ i17;
        this.X3 = i18;
        int i19 = i4 ^ ((i17 | i12) & (i15 | i16));
        this.X2 = i19;
        this.X1 = (i19 ^ (i12 | i13)) ^ (i14 ^ i18);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb3(int i4, int i10, int i11, int i12) {
        int i13 = i4 ^ i10;
        int i14 = i4 & i11;
        int i15 = i4 | i12;
        int i16 = i11 ^ i12;
        int i17 = i14 | (i13 & i15);
        int i18 = i16 ^ i17;
        this.X2 = i18;
        int i19 = (i15 ^ i10) ^ i17;
        int i20 = i13 ^ (i16 & i19);
        this.X0 = i20;
        int i21 = i20 & i18;
        this.X1 = i19 ^ i21;
        this.X3 = (i10 | i12) ^ (i16 ^ i21);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb4(int i4, int i10, int i11, int i12) {
        int i13 = i4 ^ i12;
        int i14 = i11 ^ (i12 & i13);
        int i15 = i10 | i14;
        this.X3 = i13 ^ i15;
        int i16 = ~i10;
        int i17 = (i13 | i16) ^ i14;
        this.X0 = i17;
        int i18 = i16 ^ i13;
        int i19 = (i15 & i18) ^ (i17 & i4);
        this.X2 = i19;
        this.X1 = (i4 ^ i14) ^ (i18 & i19);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb5(int i4, int i10, int i11, int i12) {
        int i13 = ~i4;
        int i14 = i4 ^ i10;
        int i15 = i4 ^ i12;
        int i16 = (i11 ^ i13) ^ (i14 | i15);
        this.X0 = i16;
        int i17 = i12 & i16;
        int i18 = (i14 ^ i16) ^ i17;
        this.X1 = i18;
        int i19 = i15 ^ (i16 | i13);
        this.X2 = (i14 | i17) ^ i19;
        this.X3 = (i19 & i18) ^ (i10 ^ i17);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb6(int i4, int i10, int i11, int i12) {
        int i13 = ~i4;
        int i14 = i4 ^ i12;
        int i15 = i10 ^ i14;
        int i16 = i11 ^ (i13 | i14);
        int i17 = i10 ^ i16;
        this.X1 = i17;
        int i18 = (i14 | i17) ^ i12;
        int i19 = (i16 & i18) ^ i15;
        this.X2 = i19;
        int i20 = i18 ^ i16;
        this.X0 = i19 ^ i20;
        this.X3 = (i20 & i15) ^ (~i16);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb7(int i4, int i10, int i11, int i12) {
        int i13 = i10 ^ i11;
        int i14 = (i11 & i13) ^ i12;
        int i15 = i4 ^ i14;
        int i16 = i10 ^ ((i12 | i13) & i15);
        this.X1 = i16;
        int i17 = (i4 & i15) ^ i13;
        this.X3 = i17;
        int i18 = (i16 | i14) ^ i15;
        int i19 = i14 ^ (i17 & i18);
        this.X2 = i19;
        this.X0 = (i17 & i19) ^ (~i18);
    }
}
