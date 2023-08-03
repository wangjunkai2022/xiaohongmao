package org.bouncycastle.pqc.crypto.newhope;

import org.bouncycastle.crypto.engines.ChaChaEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes5.dex */
class ChaCha20 {
    ChaCha20() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void process(byte[] bArr, byte[] bArr2, byte[] bArr3, int i4, int i10) {
        ChaChaEngine chaChaEngine = new ChaChaEngine(20);
        chaChaEngine.init(true, new ParametersWithIV(new KeyParameter(bArr), bArr2));
        chaChaEngine.processBytes(bArr3, i4, i10, bArr3, i4);
    }
}
