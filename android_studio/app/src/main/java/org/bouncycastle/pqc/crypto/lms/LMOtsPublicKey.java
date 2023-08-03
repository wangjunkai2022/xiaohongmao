package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Encodable;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes5.dex */
class LMOtsPublicKey implements Encodable {
    private final byte[] I;
    private final byte[] K;
    private final LMOtsParameters parameter;

    /* renamed from: q  reason: collision with root package name */
    private final int f91512q;

    public LMOtsPublicKey(LMOtsParameters lMOtsParameters, byte[] bArr, int i4, byte[] bArr2) {
        this.parameter = lMOtsParameters;
        this.I = bArr;
        this.f91512q = i4;
        this.K = bArr2;
    }

    public static LMOtsPublicKey getInstance(Object obj) throws Exception {
        DataInputStream dataInputStream;
        if (obj instanceof LMOtsPublicKey) {
            return (LMOtsPublicKey) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream2 = (DataInputStream) obj;
            LMOtsParameters parametersForType = LMOtsParameters.getParametersForType(dataInputStream2.readInt());
            byte[] bArr = new byte[16];
            dataInputStream2.readFully(bArr);
            int readInt = dataInputStream2.readInt();
            byte[] bArr2 = new byte[parametersForType.getN()];
            dataInputStream2.readFully(bArr2);
            return new LMOtsPublicKey(parametersForType, bArr, readInt, bArr2);
        } else if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return getInstance(Streams.readAll((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        } else {
            DataInputStream dataInputStream3 = null;
            try {
                dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            } catch (Throwable th) {
                th = th;
            }
            try {
                LMOtsPublicKey lMOtsPublicKey = getInstance(dataInputStream);
                dataInputStream.close();
                return lMOtsPublicKey;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream3 = dataInputStream;
                if (dataInputStream3 != null) {
                    dataInputStream3.close();
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LMSContext createOtsContext(LMOtsSignature lMOtsSignature) {
        Digest digest = DigestUtil.getDigest(this.parameter.getDigestOID());
        LmsUtils.byteArray(this.I, digest);
        LmsUtils.u32str(this.f91512q, digest);
        LmsUtils.u16str((short) -32383, digest);
        LmsUtils.byteArray(lMOtsSignature.getC(), digest);
        return new LMSContext(this, lMOtsSignature, digest);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LMSContext createOtsContext(LMSSignature lMSSignature) {
        Digest digest = DigestUtil.getDigest(this.parameter.getDigestOID());
        LmsUtils.byteArray(this.I, digest);
        LmsUtils.u32str(this.f91512q, digest);
        LmsUtils.u16str((short) -32383, digest);
        LmsUtils.byteArray(lMSSignature.getOtsSignature().getC(), digest);
        return new LMSContext(this, lMSSignature, digest);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LMOtsPublicKey lMOtsPublicKey = (LMOtsPublicKey) obj;
        if (this.f91512q != lMOtsPublicKey.f91512q) {
            return false;
        }
        LMOtsParameters lMOtsParameters = this.parameter;
        if (lMOtsParameters == null ? lMOtsPublicKey.parameter == null : lMOtsParameters.equals(lMOtsPublicKey.parameter)) {
            if (Arrays.equals(this.I, lMOtsPublicKey.I)) {
                return Arrays.equals(this.K, lMOtsPublicKey.K);
            }
            return false;
        }
        return false;
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return Composer.compose().u32str(this.parameter.getType()).bytes(this.I).u32str(this.f91512q).bytes(this.K).build();
    }

    public byte[] getI() {
        return this.I;
    }

    public byte[] getK() {
        return this.K;
    }

    public LMOtsParameters getParameter() {
        return this.parameter;
    }

    public int getQ() {
        return this.f91512q;
    }

    public int hashCode() {
        LMOtsParameters lMOtsParameters = this.parameter;
        return ((((((lMOtsParameters != null ? lMOtsParameters.hashCode() : 0) * 31) + Arrays.hashCode(this.I)) * 31) + this.f91512q) * 31) + Arrays.hashCode(this.K);
    }
}
