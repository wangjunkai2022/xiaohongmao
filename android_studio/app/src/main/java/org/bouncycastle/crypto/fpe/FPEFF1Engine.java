package org.bouncycastle.crypto.fpe;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.params.FPEParameters;
import org.bouncycastle.util.Properties;

/* loaded from: classes4.dex */
public class FPEFF1Engine extends FPEEngine {
    public FPEFF1Engine() {
        this(new AESEngine());
    }

    public FPEFF1Engine(BlockCipher blockCipher) {
        super(blockCipher);
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("base cipher needs to be 128 bits");
        }
        if (Properties.isOverrideSet("org.bouncycastle.fpe.disable") || Properties.isOverrideSet("org.bouncycastle.fpe.disable_ff1")) {
            throw new UnsupportedOperationException("FF1 encryption disabled");
        }
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    protected int decryptBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        System.arraycopy(this.fpeParameters.getRadix() > 256 ? FPEEngine.toByteArray(SP80038G.decryptFF1w(this.baseCipher, this.fpeParameters.getRadix(), this.fpeParameters.getTweak(), FPEEngine.toShortArray(bArr), i4, i10 / 2)) : SP80038G.decryptFF1(this.baseCipher, this.fpeParameters.getRadix(), this.fpeParameters.getTweak(), bArr, i4, i10), 0, bArr2, i11, i10);
        return i10;
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    protected int encryptBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        System.arraycopy(this.fpeParameters.getRadix() > 256 ? FPEEngine.toByteArray(SP80038G.encryptFF1w(this.baseCipher, this.fpeParameters.getRadix(), this.fpeParameters.getTweak(), FPEEngine.toShortArray(bArr), i4, i10 / 2)) : SP80038G.encryptFF1(this.baseCipher, this.fpeParameters.getRadix(), this.fpeParameters.getTweak(), bArr, i4, i10), 0, bArr2, i11, i10);
        return i10;
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    public String getAlgorithmName() {
        return "FF1";
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    public void init(boolean z9, CipherParameters cipherParameters) {
        this.forEncryption = z9;
        FPEParameters fPEParameters = (FPEParameters) cipherParameters;
        this.fpeParameters = fPEParameters;
        this.baseCipher.init(!fPEParameters.isUsingInverseFunction(), this.fpeParameters.getKey());
    }
}
