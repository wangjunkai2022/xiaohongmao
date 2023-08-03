package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.Zuc128CoreEngine;

/* loaded from: classes4.dex */
public final class Zuc128Mac implements Mac {
    private static final int TOPBIT = 128;
    private int theByteIndex;
    private final InternalZuc128Engine theEngine = new InternalZuc128Engine();
    private final int[] theKeyStream = new int[2];
    private int theMac;
    private Zuc128CoreEngine theState;
    private int theWordIndex;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class InternalZuc128Engine extends Zuc128CoreEngine {
        private InternalZuc128Engine() {
        }

        int createKeyStreamWord() {
            return super.makeKeyStreamWord();
        }
    }

    private int getFinalWord() {
        if (this.theByteIndex != 0) {
            return this.theEngine.createKeyStreamWord();
        }
        int[] iArr = this.theKeyStream;
        int length = (this.theWordIndex + 1) % iArr.length;
        this.theWordIndex = length;
        return iArr[length];
    }

    private int getKeyStreamWord(int i4) {
        int[] iArr = this.theKeyStream;
        int i10 = this.theWordIndex;
        int i11 = iArr[i10];
        if (i4 == 0) {
            return i11;
        }
        int i12 = iArr[(i10 + 1) % iArr.length];
        return (i12 >>> (32 - i4)) | (i11 << i4);
    }

    private void initKeyStream() {
        int i4 = 0;
        this.theMac = 0;
        while (true) {
            int[] iArr = this.theKeyStream;
            if (i4 >= iArr.length - 1) {
                this.theWordIndex = iArr.length - 1;
                this.theByteIndex = 3;
                return;
            }
            iArr[i4] = this.theEngine.createKeyStreamWord();
            i4++;
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
        this.theMac = getKeyStreamWord(i4) ^ this.theMac;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) {
        shift4NextByte();
        int keyStreamWord = this.theMac ^ getKeyStreamWord(this.theByteIndex * 8);
        this.theMac = keyStreamWord;
        int finalWord = keyStreamWord ^ getFinalWord();
        this.theMac = finalWord;
        Zuc128CoreEngine.encode32be(finalWord, bArr, i4);
        reset();
        return getMacSize();
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "Zuc128Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        this.theEngine.init(true, cipherParameters);
        this.theState = (Zuc128CoreEngine) this.theEngine.copy();
        initKeyStream();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        Zuc128CoreEngine zuc128CoreEngine = this.theState;
        if (zuc128CoreEngine != null) {
            this.theEngine.reset(zuc128CoreEngine);
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
