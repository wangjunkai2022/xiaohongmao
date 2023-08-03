package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class SPHINCSPlusPrivateKeyParameters extends SPHINCSPlusKeyParameters {
    final PK pk;
    final SK sk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SPHINCSPlusPrivateKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, SK sk, PK pk) {
        super(true, sPHINCSPlusParameters);
        this.sk = sk;
        this.pk = pk;
    }

    public SPHINCSPlusPrivateKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, byte[] bArr) {
        super(true, sPHINCSPlusParameters);
        int i4 = sPHINCSPlusParameters.getEngine().N;
        int i10 = i4 * 4;
        if (bArr.length != i10) {
            throw new IllegalArgumentException("private key encoding does not match parameters");
        }
        int i11 = i4 * 2;
        this.sk = new SK(Arrays.copyOfRange(bArr, 0, i4), Arrays.copyOfRange(bArr, i4, i11));
        int i12 = i4 * 3;
        this.pk = new PK(Arrays.copyOfRange(bArr, i11, i12), Arrays.copyOfRange(bArr, i12, i10));
    }

    public byte[] getEncoded() {
        SK sk = this.sk;
        byte[] bArr = sk.seed;
        byte[] bArr2 = sk.prf;
        PK pk = this.pk;
        return Arrays.concatenate(bArr, bArr2, pk.seed, pk.root);
    }

    public byte[] getPrf() {
        return Arrays.clone(this.sk.prf);
    }

    public byte[] getPublicKey() {
        PK pk = this.pk;
        return Arrays.concatenate(pk.seed, pk.root);
    }

    public byte[] getPublicSeed() {
        return Arrays.clone(this.pk.seed);
    }

    public byte[] getSeed() {
        return Arrays.clone(this.sk.seed);
    }
}
