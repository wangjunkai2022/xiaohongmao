package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes5.dex */
public class HSSPublicKeyParameters extends LMSKeyParameters implements LMSContextBasedVerifier {

    /* renamed from: l  reason: collision with root package name */
    private final int f91507l;
    private final LMSPublicKeyParameters lmsPublicKey;

    public HSSPublicKeyParameters(int i4, LMSPublicKeyParameters lMSPublicKeyParameters) {
        super(false);
        this.f91507l = i4;
        this.lmsPublicKey = lMSPublicKeyParameters;
    }

    public static HSSPublicKeyParameters getInstance(Object obj) throws IOException {
        DataInputStream dataInputStream;
        if (obj instanceof HSSPublicKeyParameters) {
            return (HSSPublicKeyParameters) obj;
        }
        if (obj instanceof DataInputStream) {
            return new HSSPublicKeyParameters(((DataInputStream) obj).readInt(), LMSPublicKeyParameters.getInstance(obj));
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return getInstance(Streams.readAll((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
        } catch (Throwable th) {
            th = th;
        }
        try {
            HSSPublicKeyParameters hSSPublicKeyParameters = getInstance(dataInputStream);
            dataInputStream.close();
            return hSSPublicKeyParameters;
        } catch (Throwable th2) {
            th = th2;
            dataInputStream2 = dataInputStream;
            if (dataInputStream2 != null) {
                dataInputStream2.close();
            }
            throw th;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HSSPublicKeyParameters hSSPublicKeyParameters = (HSSPublicKeyParameters) obj;
        if (this.f91507l != hSSPublicKeyParameters.f91507l) {
            return false;
        }
        return this.lmsPublicKey.equals(hSSPublicKeyParameters.lmsPublicKey);
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedVerifier
    public LMSContext generateLMSContext(byte[] bArr) {
        try {
            HSSSignature hSSSignature = HSSSignature.getInstance(bArr, getL());
            LMSSignedPubKey[] signedPubKey = hSSSignature.getSignedPubKey();
            return signedPubKey[signedPubKey.length - 1].getPublicKey().generateOtsContext(hSSSignature.getSignature()).withSignedPublicKeys(signedPubKey);
        } catch (IOException e4) {
            throw new IllegalStateException("cannot parse signature: " + e4.getMessage());
        }
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSKeyParameters, org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return Composer.compose().u32str(this.f91507l).bytes(this.lmsPublicKey.getEncoded()).build();
    }

    public int getL() {
        return this.f91507l;
    }

    public LMSPublicKeyParameters getLMSPublicKey() {
        return this.lmsPublicKey;
    }

    public int hashCode() {
        return (this.f91507l * 31) + this.lmsPublicKey.hashCode();
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedVerifier
    public boolean verify(LMSContext lMSContext) {
        LMSSignedPubKey[] signedPubKeys = lMSContext.getSignedPubKeys();
        if (signedPubKeys.length != getL() - 1) {
            return false;
        }
        LMSPublicKeyParameters lMSPublicKey = getLMSPublicKey();
        boolean z9 = false;
        for (int i4 = 0; i4 < signedPubKeys.length; i4++) {
            if (!LMS.verifySignature(lMSPublicKey, signedPubKeys[i4].getSignature(), signedPubKeys[i4].getPublicKey().toByteArray())) {
                z9 = true;
            }
            lMSPublicKey = signedPubKeys[i4].getPublicKey();
        }
        return lMSPublicKey.verify(lMSContext) & (!z9);
    }
}
