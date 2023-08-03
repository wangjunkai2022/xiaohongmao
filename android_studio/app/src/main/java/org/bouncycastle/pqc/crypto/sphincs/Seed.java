package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.crypto.engines.ChaChaEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.pqc.crypto.sphincs.Tree;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
class Seed {
    Seed() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void get_seed(HashFunctions hashFunctions, byte[] bArr, int i4, byte[] bArr2, Tree.leafaddr leafaddrVar) {
        byte[] bArr3 = new byte[40];
        for (int i10 = 0; i10 < 32; i10++) {
            bArr3[i10] = bArr2[i10];
        }
        Pack.longToLittleEndian((leafaddrVar.subleaf << 59) | leafaddrVar.level | (leafaddrVar.subtree << 4), bArr3, 32);
        hashFunctions.varlen_hash(bArr, i4, bArr3, 40);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void prg(byte[] bArr, int i4, long j4, byte[] bArr2, int i10) {
        ChaChaEngine chaChaEngine = new ChaChaEngine(12);
        chaChaEngine.init(true, new ParametersWithIV(new KeyParameter(bArr2, i10, 32), new byte[8]));
        chaChaEngine.processBytes(bArr, i4, (int) j4, bArr, i4);
    }
}
