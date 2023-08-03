package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes4.dex */
public class CMacWithIV extends CMac {
    public CMacWithIV(BlockCipher blockCipher) {
        super(blockCipher);
    }

    public CMacWithIV(BlockCipher blockCipher, int i4) {
        super(blockCipher, i4);
    }

    @Override // org.bouncycastle.crypto.macs.CMac
    void validate(CipherParameters cipherParameters) {
    }
}
