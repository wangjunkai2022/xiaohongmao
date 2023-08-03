package org.bouncycastle.crypto.fpe;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.params.FPEParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Properties;

/* loaded from: classes4.dex */
public class FPEFF3_1Engine extends FPEEngine {
    public FPEFF3_1Engine() {
        this(new AESEngine());
    }

    public FPEFF3_1Engine(BlockCipher blockCipher) {
        super(blockCipher);
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("base cipher needs to be 128 bits");
        }
        if (Properties.isOverrideSet("org.bouncycastle.fpe.disable")) {
            throw new UnsupportedOperationException("FPE disabled");
        }
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    protected int decryptBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        System.arraycopy(this.fpeParameters.getRadix() > 256 ? FPEEngine.toByteArray(SP80038G.decryptFF3_1w(this.baseCipher, this.fpeParameters.getRadix(), this.fpeParameters.getTweak(), FPEEngine.toShortArray(bArr), i4, i10 / 2)) : SP80038G.decryptFF3_1(this.baseCipher, this.fpeParameters.getRadix(), this.fpeParameters.getTweak(), bArr, i4, i10), 0, bArr2, i11, i10);
        return i10;
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    protected int encryptBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        System.arraycopy(this.fpeParameters.getRadix() > 256 ? FPEEngine.toByteArray(SP80038G.encryptFF3_1w(this.baseCipher, this.fpeParameters.getRadix(), this.fpeParameters.getTweak(), FPEEngine.toShortArray(bArr), i4, i10 / 2)) : SP80038G.encryptFF3_1(this.baseCipher, this.fpeParameters.getRadix(), this.fpeParameters.getTweak(), bArr, i4, i10), 0, bArr2, i11, i10);
        return i10;
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    public String getAlgorithmName() {
        return "FF3-1";
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    public void init(boolean z9, CipherParameters cipherParameters) {
        this.forEncryption = z9;
        FPEParameters fPEParameters = (FPEParameters) cipherParameters;
        this.fpeParameters = fPEParameters;
        this.baseCipher.init(!fPEParameters.isUsingInverseFunction(), new KeyParameter(Arrays.reverse(this.fpeParameters.getKey().getKey())));
        if (this.fpeParameters.getTweak().length != 7) {
            throw new IllegalArgumentException("tweak should be 56 bits");
        }
    }
}
