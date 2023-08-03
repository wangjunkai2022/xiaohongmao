package org.bouncycastle.jcajce.provider.asymmetric.gost;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Objects;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.bouncycastle.jce.spec.GOST3410ParameterSpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

/* loaded from: classes4.dex */
public class AlgorithmParametersSpi extends java.security.AlgorithmParametersSpi {
    GOST3410ParameterSpec currentSpec;

    @Override // java.security.AlgorithmParametersSpi
    protected byte[] engineGetEncoded() {
        try {
            return new GOST3410PublicKeyAlgParameters(new ASN1ObjectIdentifier(this.currentSpec.getPublicKeyParamSetOID()), new ASN1ObjectIdentifier(this.currentSpec.getDigestParamSetOID()), new ASN1ObjectIdentifier(this.currentSpec.getEncryptionParamSetOID())).getEncoded(ASN1Encoding.DER);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding GOST3410Parameters");
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    protected byte[] engineGetEncoded(String str) {
        if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
            return engineGetEncoded();
        }
        return null;
    }

    @Override // java.security.AlgorithmParametersSpi
    protected AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        Objects.requireNonNull(cls, "argument to getParameterSpec must not be null");
        return localEngineGetParameterSpec(cls);
    }

    @Override // java.security.AlgorithmParametersSpi
    protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof GOST3410ParameterSpec)) {
            throw new InvalidParameterSpecException("GOST3410ParameterSpec required to initialise a GOST3410 algorithm parameters object");
        }
        this.currentSpec = (GOST3410ParameterSpec) algorithmParameterSpec;
    }

    @Override // java.security.AlgorithmParametersSpi
    protected void engineInit(byte[] bArr) throws IOException {
        try {
            this.currentSpec = GOST3410ParameterSpec.fromPublicKeyAlg(GOST3410PublicKeyAlgParameters.getInstance((ASN1Sequence) ASN1Primitive.fromByteArray(bArr)));
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid GOST3410 Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid GOST3410 Parameter encoding.");
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    protected void engineInit(byte[] bArr, String str) throws IOException {
        if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
            engineInit(bArr);
            return;
        }
        throw new IOException("Unknown parameter format " + str);
    }

    @Override // java.security.AlgorithmParametersSpi
    protected String engineToString() {
        return "GOST3410 Parameters";
    }

    protected boolean isASN1FormatString(String str) {
        return str == null || str.equals("ASN.1");
    }

    protected AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        if (cls == GOST3410PublicKeyParameterSetSpec.class || cls == AlgorithmParameterSpec.class) {
            return this.currentSpec;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to GOST3410 parameters object.");
    }
}
