package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class KCTRBlockCipher extends StreamBlockCipher {
    private int byteCount;
    private BlockCipher engine;
    private boolean initialised;
    private byte[] iv;
    private byte[] ofbOutV;
    private byte[] ofbV;

    public KCTRBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.engine = blockCipher;
        this.iv = new byte[blockCipher.getBlockSize()];
        this.ofbV = new byte[blockCipher.getBlockSize()];
        this.ofbOutV = new byte[blockCipher.getBlockSize()];
    }

    private void checkCounter() {
    }

    private void incrementCounterAt(int i4) {
        while (true) {
            byte[] bArr = this.ofbV;
            if (i4 >= bArr.length) {
                return;
            }
            int i10 = i4 + 1;
            byte b10 = (byte) (bArr[i4] + 1);
            bArr[i4] = b10;
            if (b10 != 0) {
                return;
            }
            i4 = i10;
        }
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    protected byte calculateByte(byte b10) {
        int i4 = this.byteCount;
        if (i4 == 0) {
            incrementCounterAt(0);
            checkCounter();
            this.engine.processBlock(this.ofbV, 0, this.ofbOutV, 0);
            byte[] bArr = this.ofbOutV;
            int i10 = this.byteCount;
            this.byteCount = i10 + 1;
            return (byte) (b10 ^ bArr[i10]);
        }
        byte[] bArr2 = this.ofbOutV;
        int i11 = i4 + 1;
        this.byteCount = i11;
        byte b11 = (byte) (b10 ^ bArr2[i4]);
        if (i11 == this.ofbV.length) {
            this.byteCount = 0;
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName() + "/KCTR";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.engine.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.initialised = true;
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameter passed");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        byte[] bArr = this.iv;
        Arrays.fill(bArr, (byte) 0);
        System.arraycopy(iv, 0, this.iv, bArr.length - iv.length, iv.length);
        CipherParameters parameters = parametersWithIV.getParameters();
        if (parameters != null) {
            this.engine.init(true, parameters);
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        if (bArr.length - i4 >= getBlockSize()) {
            if (bArr2.length - i10 >= getBlockSize()) {
                processBytes(bArr, i4, getBlockSize(), bArr2, i10);
                return getBlockSize();
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new DataLengthException("input buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        if (this.initialised) {
            this.engine.processBlock(this.iv, 0, this.ofbV, 0);
        }
        this.engine.reset();
        this.byteCount = 0;
    }
}
