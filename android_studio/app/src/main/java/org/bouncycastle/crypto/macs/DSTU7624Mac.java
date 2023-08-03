package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.engines.DSTU7624Engine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class DSTU7624Mac implements Mac {
    private static final int BITS_IN_BYTE = 8;
    private int blockSize;
    private byte[] buf;
    private int bufOff;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f91255c;
    private byte[] cTemp;
    private DSTU7624Engine engine;
    private boolean initCalled = false;
    private byte[] kDelta;
    private int macSize;

    public DSTU7624Mac(int i4, int i10) {
        this.engine = new DSTU7624Engine(i4);
        int i11 = i4 / 8;
        this.blockSize = i11;
        this.macSize = i10 / 8;
        this.f91255c = new byte[i11];
        this.kDelta = new byte[i11];
        this.cTemp = new byte[i11];
        this.buf = new byte[i11];
    }

    private void processBlock(byte[] bArr, int i4) {
        xor(this.f91255c, 0, bArr, i4, this.cTemp);
        this.engine.processBlock(this.cTemp, 0, this.f91255c, 0);
    }

    private void xor(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3) {
        int length = bArr.length - i4;
        int i11 = this.blockSize;
        if (length < i11 || bArr2.length - i10 < i11 || bArr3.length < i11) {
            throw new IllegalArgumentException("some of input buffers too short");
        }
        for (int i12 = 0; i12 < this.blockSize; i12++) {
            bArr3[i12] = (byte) (bArr[i12 + i4] ^ bArr2[i12 + i10]);
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        int i10 = this.bufOff;
        byte[] bArr2 = this.buf;
        if (i10 % bArr2.length == 0) {
            xor(this.f91255c, 0, bArr2, 0, this.cTemp);
            xor(this.cTemp, 0, this.kDelta, 0, this.f91255c);
            DSTU7624Engine dSTU7624Engine = this.engine;
            byte[] bArr3 = this.f91255c;
            dSTU7624Engine.processBlock(bArr3, 0, bArr3, 0);
            int i11 = this.macSize;
            if (i11 + i4 <= bArr.length) {
                System.arraycopy(this.f91255c, 0, bArr, i4, i11);
                reset();
                return this.macSize;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new DataLengthException("input must be a multiple of blocksize");
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "DSTU7624Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("Invalid parameter passed to DSTU7624Mac");
        }
        this.engine.init(true, cipherParameters);
        this.initCalled = true;
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        Arrays.fill(this.f91255c, (byte) 0);
        Arrays.fill(this.cTemp, (byte) 0);
        Arrays.fill(this.kDelta, (byte) 0);
        Arrays.fill(this.buf, (byte) 0);
        this.engine.reset();
        if (this.initCalled) {
            DSTU7624Engine dSTU7624Engine = this.engine;
            byte[] bArr = this.kDelta;
            dSTU7624Engine.processBlock(bArr, 0, bArr, 0);
        }
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) {
        int i4 = this.bufOff;
        byte[] bArr = this.buf;
        if (i4 == bArr.length) {
            processBlock(bArr, 0);
            this.bufOff = 0;
        }
        byte[] bArr2 = this.buf;
        int i10 = this.bufOff;
        this.bufOff = i10 + 1;
        bArr2[i10] = b10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i4, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("can't have a negative input length!");
        }
        int blockSize = this.engine.getBlockSize();
        int i11 = this.bufOff;
        int i12 = blockSize - i11;
        if (i10 > i12) {
            System.arraycopy(bArr, i4, this.buf, i11, i12);
            processBlock(this.buf, 0);
            this.bufOff = 0;
            i10 -= i12;
            i4 += i12;
            while (i10 > blockSize) {
                processBlock(bArr, i4);
                i10 -= blockSize;
                i4 += blockSize;
            }
        }
        System.arraycopy(bArr, i4, this.buf, this.bufOff, i10);
        this.bufOff += i10;
    }
}
