package org.bouncycastle.jcajce.provider.asymmetric.dstu;

import java.io.IOException;
import java.security.SignatureException;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DEROctetString;

/* loaded from: classes4.dex */
public class SignatureSpiLe extends SignatureSpi {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.jcajce.provider.asymmetric.dstu.SignatureSpi, java.security.SignatureSpi
    public byte[] engineSign() throws SignatureException {
        byte[] octets = ASN1OctetString.getInstance(super.engineSign()).getOctets();
        reverseBytes(octets);
        try {
            return new DEROctetString(octets).getEncoded();
        } catch (Exception e4) {
            throw new SignatureException(e4.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.jcajce.provider.asymmetric.dstu.SignatureSpi, java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        try {
            byte[] octets = ((ASN1OctetString) ASN1Primitive.fromByteArray(bArr)).getOctets();
            reverseBytes(octets);
            try {
                return super.engineVerify(new DEROctetString(octets).getEncoded());
            } catch (SignatureException e4) {
                throw e4;
            } catch (Exception e10) {
                throw new SignatureException(e10.toString());
            }
        } catch (IOException unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }

    void reverseBytes(byte[] bArr) {
        for (int i4 = 0; i4 < bArr.length / 2; i4++) {
            byte b10 = bArr[i4];
            bArr[i4] = bArr[(bArr.length - 1) - i4];
            bArr[(bArr.length - 1) - i4] = b10;
        }
    }
}
