package org.bouncycastle.pqc.crypto.lms;

import java.util.Arrays;
import java.util.List;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;

/* loaded from: classes5.dex */
class HSS {

    /* loaded from: classes5.dex */
    static class PlaceholderLMSPrivateKey extends LMSPrivateKeyParameters {
        public PlaceholderLMSPrivateKey(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, int i4, byte[] bArr, int i10, byte[] bArr2) {
            super(lMSigParameters, lMOtsParameters, i4, bArr, i10, bArr2);
        }

        @Override // org.bouncycastle.pqc.crypto.lms.LMSPrivateKeyParameters
        LMOtsPrivateKey getNextOtsPrivateKey() {
            throw new RuntimeException("placeholder only");
        }

        @Override // org.bouncycastle.pqc.crypto.lms.LMSPrivateKeyParameters
        public LMSPublicKeyParameters getPublicKey() {
            throw new RuntimeException("placeholder only");
        }
    }

    HSS() {
    }

    public static HSSPrivateKeyParameters generateHSSKeyPair(HSSKeyGenerationParameters hSSKeyGenerationParameters) {
        int i4;
        byte[] bArr;
        int depth = hSSKeyGenerationParameters.getDepth();
        LMSPrivateKeyParameters[] lMSPrivateKeyParametersArr = new LMSPrivateKeyParameters[depth];
        LMSSignature[] lMSSignatureArr = new LMSSignature[hSSKeyGenerationParameters.getDepth() - 1];
        byte[] bArr2 = new byte[32];
        hSSKeyGenerationParameters.getRandom().nextBytes(bArr2);
        byte[] bArr3 = new byte[16];
        hSSKeyGenerationParameters.getRandom().nextBytes(bArr3);
        byte[] bArr4 = new byte[0];
        long j4 = 1;
        int i10 = 0;
        while (i10 < depth) {
            if (i10 == 0) {
                lMSPrivateKeyParametersArr[i10] = new LMSPrivateKeyParameters(hSSKeyGenerationParameters.getLmsParameters()[i10].getLMSigParam(), hSSKeyGenerationParameters.getLmsParameters()[i10].getLMOTSParam(), 0, bArr3, 1 << hSSKeyGenerationParameters.getLmsParameters()[i10].getLMSigParam().getH(), bArr2);
                i4 = i10;
                bArr = bArr4;
            } else {
                i4 = i10;
                bArr = bArr4;
                lMSPrivateKeyParametersArr[i4] = new PlaceholderLMSPrivateKey(hSSKeyGenerationParameters.getLmsParameters()[i10].getLMSigParam(), hSSKeyGenerationParameters.getLmsParameters()[i10].getLMOTSParam(), -1, bArr, 1 << hSSKeyGenerationParameters.getLmsParameters()[i10].getLMSigParam().getH(), bArr);
            }
            j4 *= 1 << hSSKeyGenerationParameters.getLmsParameters()[i4].getLMSigParam().getH();
            i10 = i4 + 1;
            bArr4 = bArr;
        }
        if (j4 == 0) {
            j4 = Long.MAX_VALUE;
        }
        return new HSSPrivateKeyParameters(hSSKeyGenerationParameters.getDepth(), Arrays.asList(lMSPrivateKeyParametersArr), Arrays.asList(lMSSignatureArr), 0L, j4);
    }

    public static HSSSignature generateSignature(int i4, LMSContext lMSContext) {
        return new HSSSignature(i4 - 1, lMSContext.getSignedPubKeys(), LMS.generateSign(lMSContext));
    }

    public static HSSSignature generateSignature(HSSPrivateKeyParameters hSSPrivateKeyParameters, byte[] bArr) {
        LMSPrivateKeyParameters lMSPrivateKeyParameters;
        LMSSignedPubKey[] lMSSignedPubKeyArr;
        int l10 = hSSPrivateKeyParameters.getL();
        synchronized (hSSPrivateKeyParameters) {
            rangeTestKeys(hSSPrivateKeyParameters);
            List<LMSPrivateKeyParameters> keys = hSSPrivateKeyParameters.getKeys();
            List<LMSSignature> sig = hSSPrivateKeyParameters.getSig();
            int i4 = l10 - 1;
            lMSPrivateKeyParameters = hSSPrivateKeyParameters.getKeys().get(i4);
            lMSSignedPubKeyArr = new LMSSignedPubKey[i4];
            int i10 = 0;
            while (i10 < i4) {
                int i11 = i10 + 1;
                lMSSignedPubKeyArr[i10] = new LMSSignedPubKey(sig.get(i10), keys.get(i11).getPublicKey());
                i10 = i11;
            }
            hSSPrivateKeyParameters.incIndex();
        }
        LMSContext withSignedPublicKeys = lMSPrivateKeyParameters.generateLMSContext().withSignedPublicKeys(lMSSignedPubKeyArr);
        withSignedPublicKeys.update(bArr, 0, bArr.length);
        return generateSignature(l10, withSignedPublicKeys);
    }

    public static void incrementIndex(HSSPrivateKeyParameters hSSPrivateKeyParameters) {
        synchronized (hSSPrivateKeyParameters) {
            rangeTestKeys(hSSPrivateKeyParameters);
            hSSPrivateKeyParameters.incIndex();
            hSSPrivateKeyParameters.getKeys().get(hSSPrivateKeyParameters.getL() - 1).incIndex();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void rangeTestKeys(HSSPrivateKeyParameters hSSPrivateKeyParameters) {
        synchronized (hSSPrivateKeyParameters) {
            if (hSSPrivateKeyParameters.getIndex() >= hSSPrivateKeyParameters.getIndexLimit()) {
                StringBuilder sb = new StringBuilder();
                sb.append("hss private key");
                sb.append(hSSPrivateKeyParameters.isShard() ? " shard" : "");
                sb.append(" is exhausted");
                throw new ExhaustedPrivateKeyException(sb.toString());
            }
            int l10 = hSSPrivateKeyParameters.getL();
            List<LMSPrivateKeyParameters> keys = hSSPrivateKeyParameters.getKeys();
            int i4 = l10;
            while (true) {
                int i10 = i4 - 1;
                if (keys.get(i10).getIndex() != (1 << keys.get(i10).getSigParameters().getH())) {
                    while (i4 < l10) {
                        hSSPrivateKeyParameters.replaceConsumedKey(i4);
                        i4++;
                    }
                } else if (i10 == 0) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("hss private key");
                    sb2.append(hSSPrivateKeyParameters.isShard() ? " shard" : "");
                    sb2.append(" is exhausted the maximum limit for this HSS private key");
                    throw new ExhaustedPrivateKeyException(sb2.toString());
                } else {
                    i4 = i10;
                }
            }
        }
    }

    public static boolean verifySignature(HSSPublicKeyParameters hSSPublicKeyParameters, HSSSignature hSSSignature, byte[] bArr) {
        int i4 = hSSSignature.getlMinus1();
        int i10 = i4 + 1;
        if (i10 != hSSPublicKeyParameters.getL()) {
            return false;
        }
        LMSSignature[] lMSSignatureArr = new LMSSignature[i10];
        LMSPublicKeyParameters[] lMSPublicKeyParametersArr = new LMSPublicKeyParameters[i4];
        for (int i11 = 0; i11 < i4; i11++) {
            lMSSignatureArr[i11] = hSSSignature.getSignedPubKey()[i11].getSignature();
            lMSPublicKeyParametersArr[i11] = hSSSignature.getSignedPubKey()[i11].getPublicKey();
        }
        lMSSignatureArr[i4] = hSSSignature.getSignature();
        LMSPublicKeyParameters lMSPublicKey = hSSPublicKeyParameters.getLMSPublicKey();
        for (int i12 = 0; i12 < i4; i12++) {
            if (!LMS.verifySignature(lMSPublicKey, lMSSignatureArr[i12], lMSPublicKeyParametersArr[i12].toByteArray())) {
                return false;
            }
            try {
                lMSPublicKey = lMSPublicKeyParametersArr[i12];
            } catch (Exception e4) {
                throw new IllegalStateException(e4.getMessage(), e4);
            }
        }
        return LMS.verifySignature(lMSPublicKey, lMSSignatureArr[i4], bArr);
    }
}
