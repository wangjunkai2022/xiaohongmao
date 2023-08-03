package org.bouncycastle.crypto.agreement.kdf;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class DHKEKGenerator implements DerivationFunction {
    private ASN1ObjectIdentifier algorithm;
    private final Digest digest;
    private int keySize;
    private byte[] partyAInfo;

    /* renamed from: z  reason: collision with root package name */
    private byte[] f91175z;

    public DHKEKGenerator(Digest digest) {
        this.digest = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalArgumentException {
        boolean z9;
        int i11 = i10;
        int i12 = i4;
        if (bArr.length - i11 >= i12) {
            long j4 = i11;
            int digestSize = this.digest.getDigestSize();
            if (j4 <= 8589934591L) {
                long j10 = digestSize;
                int i13 = (int) (((j4 + j10) - 1) / j10);
                byte[] bArr2 = new byte[this.digest.getDigestSize()];
                int i14 = 0;
                int i15 = 0;
                int i16 = 1;
                while (i15 < i13) {
                    Digest digest = this.digest;
                    byte[] bArr3 = this.f91175z;
                    digest.update(bArr3, i14, bArr3.length);
                    ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                    ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                    aSN1EncodableVector2.add(this.algorithm);
                    aSN1EncodableVector2.add(new DEROctetString(Pack.intToBigEndian(i16)));
                    aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
                    if (this.partyAInfo != null) {
                        z9 = true;
                        aSN1EncodableVector.add(new DERTaggedObject(true, i14, (ASN1Encodable) new DEROctetString(this.partyAInfo)));
                    } else {
                        z9 = true;
                    }
                    aSN1EncodableVector.add(new DERTaggedObject(z9, 2, new DEROctetString(Pack.intToBigEndian(this.keySize))));
                    try {
                        byte[] encoded = new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encoding.DER);
                        this.digest.update(encoded, 0, encoded.length);
                        this.digest.doFinal(bArr2, 0);
                        if (i11 > digestSize) {
                            System.arraycopy(bArr2, 0, bArr, i12, digestSize);
                            i12 += digestSize;
                            i11 -= digestSize;
                        } else {
                            System.arraycopy(bArr2, 0, bArr, i12, i11);
                        }
                        i16++;
                        i15++;
                        i14 = 0;
                    } catch (IOException e4) {
                        throw new IllegalArgumentException("unable to encode parameter info: " + e4.getMessage());
                    }
                }
                this.digest.reset();
                return (int) j4;
            }
            throw new IllegalArgumentException("Output length too large");
        }
        throw new OutputLengthException("output buffer too small");
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        DHKDFParameters dHKDFParameters = (DHKDFParameters) derivationParameters;
        this.algorithm = dHKDFParameters.getAlgorithm();
        this.keySize = dHKDFParameters.getKeySize();
        this.f91175z = dHKDFParameters.getZ();
        this.partyAInfo = dHKDFParameters.getExtraInfo();
    }
}
