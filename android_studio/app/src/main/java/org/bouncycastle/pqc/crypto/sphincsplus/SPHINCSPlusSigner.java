package org.bouncycastle.pqc.crypto.sphincsplus;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class SPHINCSPlusSigner implements MessageSigner {
    private SPHINCSPlusPrivateKeyParameters privKey;
    private SPHINCSPlusPublicKeyParameters pubKey;
    private SecureRandom random;

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        SPHINCSPlusEngine engine = this.privKey.getParameters().getEngine();
        byte[] bArr2 = new byte[engine.N];
        SecureRandom secureRandom = this.random;
        if (secureRandom != null) {
            secureRandom.nextBytes(bArr2);
        }
        Fors fors = new Fors(engine);
        byte[] PRF_msg = engine.PRF_msg(this.privKey.sk.prf, bArr2, bArr);
        PK pk = this.privKey.pk;
        IndexedDigest H_msg = engine.H_msg(PRF_msg, pk.seed, pk.root, bArr);
        byte[] bArr3 = H_msg.digest;
        long j4 = H_msg.idx_tree;
        int i4 = H_msg.idx_leaf;
        ADRS adrs = new ADRS();
        adrs.setType(3);
        adrs.setTreeAddress(j4);
        adrs.setKeyPairAddress(i4);
        SPHINCSPlusPrivateKeyParameters sPHINCSPlusPrivateKeyParameters = this.privKey;
        SIG_FORS[] sign = fors.sign(bArr3, sPHINCSPlusPrivateKeyParameters.sk.seed, sPHINCSPlusPrivateKeyParameters.pk.seed, adrs);
        byte[] pkFromSig = fors.pkFromSig(sign, bArr3, this.privKey.pk.seed, adrs);
        new ADRS().setType(2);
        byte[] sign2 = new HT(engine, this.privKey.getSeed(), this.privKey.getPublicSeed()).sign(pkFromSig, j4, i4);
        int length = sign.length + 2;
        byte[][] bArr4 = new byte[length];
        int i10 = 0;
        bArr4[0] = PRF_msg;
        while (i10 != sign.length) {
            int i11 = i10 + 1;
            bArr4[i11] = Arrays.concatenate(sign[i10].sk, Arrays.concatenate(sign[i10].authPath));
            i10 = i11;
        }
        bArr4[length - 1] = sign2;
        return Arrays.concatenate(bArr4);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!z9) {
            this.pubKey = (SPHINCSPlusPublicKeyParameters) cipherParameters;
        } else if (!(cipherParameters instanceof ParametersWithRandom)) {
            this.privKey = (SPHINCSPlusPrivateKeyParameters) cipherParameters;
        } else {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.privKey = (SPHINCSPlusPrivateKeyParameters) parametersWithRandom.getParameters();
            this.random = parametersWithRandom.getRandom();
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        SPHINCSPlusEngine engine = this.pubKey.getParameters().getEngine();
        ADRS adrs = new ADRS();
        SIG sig = new SIG(engine.N, engine.K, engine.A, engine.D, engine.H_PRIME, engine.WOTS_LEN, bArr2);
        byte[] r9 = sig.getR();
        SIG_FORS[] sig_fors = sig.getSIG_FORS();
        SIG_XMSS[] sig_ht = sig.getSIG_HT();
        IndexedDigest H_msg = engine.H_msg(r9, this.pubKey.getSeed(), this.pubKey.getRoot(), bArr);
        byte[] bArr3 = H_msg.digest;
        long j4 = H_msg.idx_tree;
        int i4 = H_msg.idx_leaf;
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j4);
        adrs.setType(3);
        adrs.setKeyPairAddress(i4);
        byte[] pkFromSig = new Fors(engine).pkFromSig(sig_fors, bArr3, this.pubKey.getSeed(), adrs);
        adrs.setType(2);
        return new HT(engine, null, this.pubKey.getSeed()).verify(pkFromSig, sig_ht, this.pubKey.getSeed(), j4, i4, this.pubKey.getRoot());
    }
}
