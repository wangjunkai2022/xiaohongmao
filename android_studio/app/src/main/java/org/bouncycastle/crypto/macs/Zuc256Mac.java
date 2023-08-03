package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.Zuc128CoreEngine;
import org.bouncycastle.crypto.engines.Zuc256CoreEngine;

/* loaded from: classes4.dex */
public final class Zuc256Mac implements Mac {
    private static final int TOPBIT = 128;
    private int theByteIndex;
    private final InternalZuc256Engine theEngine;
    private final int[] theKeyStream;
    private final int[] theMac;
    private final int theMacLength;
    private Zuc256CoreEngine theState;
    private int theWordIndex;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class InternalZuc256Engine extends Zuc256CoreEngine {
        public InternalZuc256Engine(int i4) {
            super(i4);
        }

        int createKeyStreamWord() {
            return super.makeKeyStreamWord();
        }
    }

    public Zuc256Mac(int i4) {
        this.theEngine = new InternalZuc256Engine(i4);
        this.theMacLength = i4;
        int i10 = i4 / 32;
        this.theMac = new int[i10];
        this.theKeyStream = new int[i10 + 1];
    }

    private int getKeyStreamWord(int i4, int i10) {
        int[] iArr = this.theKeyStream;
        int i11 = this.theWordIndex;
        int i12 = iArr[(i11 + i4) % iArr.length];
        if (i10 == 0) {
            return i12;
        }
        int i13 = iArr[((i11 + i4) + 1) % iArr.length];
        return (i13 >>> (32 - i10)) | (i12 << i10);
    }

    private void initKeyStream() {
        int i4 = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.theMac;
            if (i10 >= iArr.length) {
                break;
            }
            iArr[i10] = this.theEngine.createKeyStreamWord();
            i10++;
        }
        while (true) {
            int[] iArr2 = this.theKeyStream;
            if (i4 >= iArr2.length - 1) {
                this.theWordIndex = iArr2.length - 1;
                this.theByteIndex = 3;
                return;
            }
            iArr2[i4] = this.theEngine.createKeyStreamWord();
            i4++;
        }
    }

    private void shift4Final() {
        int i4 = (this.theByteIndex + 1) % 4;
        this.theByteIndex = i4;
        if (i4 == 0) {
            this.theWordIndex = (this.theWordIndex + 1) % this.theKeyStream.length;
        }
    }

    private void shift4NextByte() {
        int i4 = (this.theByteIndex + 1) % 4;
        this.theByteIndex = i4;
        if (i4 == 0) {
            this.theKeyStream[this.theWordIndex] = this.theEngine.createKeyStreamWord();
            this.theWordIndex = (this.theWordIndex + 1) % this.theKeyStream.length;
        }
    }

    private void updateMac(int i4) {
        int i10 = 0;
        while (true) {
            int[] iArr = this.theMac;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = iArr[i10] ^ getKeyStreamWord(i10, i4);
            i10++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) {
        shift4Final();
        updateMac(this.theByteIndex * 8);
        int i10 = 0;
        while (true) {
            int[] iArr = this.theMac;
            if (i10 >= iArr.length) {
                reset();
                return getMacSize();
            }
            Zuc128CoreEngine.encode32be(iArr[i10], bArr, (i10 * 4) + i4);
            i10++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "Zuc256Mac-" + this.theMacLength;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.theMacLength / 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        this.theEngine.init(true, cipherParameters);
        this.theState = (Zuc256CoreEngine) this.theEngine.copy();
        initKeyStream();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        Zuc256CoreEngine zuc256CoreEngine = this.theState;
        if (zuc256CoreEngine != null) {
            this.theEngine.reset(zuc256CoreEngine);
        }
        initKeyStream();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) {
        shift4NextByte();
        int i4 = this.theByteIndex * 8;
        int i10 = 128;
        int i11 = 0;
        while (i10 > 0) {
            if ((b10 & i10) != 0) {
                updateMac(i4 + i11);
            }
            i10 >>= 1;
            i11++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i4, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            update(bArr[i4 + i11]);
        }
    }
}
