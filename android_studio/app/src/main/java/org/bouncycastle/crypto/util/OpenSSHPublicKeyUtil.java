package org.bouncycastle.crypto.util;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.DSAPublicKeyParameters;
import org.bouncycastle.crypto.params.ECNamedDomainParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.Ed25519PublicKeyParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;

/* loaded from: classes4.dex */
public class OpenSSHPublicKeyUtil {
    private static final String DSS = "ssh-dss";
    private static final String ECDSA = "ecdsa";
    private static final String ED_25519 = "ssh-ed25519";
    private static final String RSA = "ssh-rsa";

    private OpenSSHPublicKeyUtil() {
    }

    public static byte[] encodePublicKey(AsymmetricKeyParameter asymmetricKeyParameter) throws IOException {
        if (asymmetricKeyParameter != null) {
            if (asymmetricKeyParameter instanceof RSAKeyParameters) {
                if (asymmetricKeyParameter.isPrivate()) {
                    throw new IllegalArgumentException("RSAKeyParamaters was for encryption");
                }
                RSAKeyParameters rSAKeyParameters = (RSAKeyParameters) asymmetricKeyParameter;
                SSHBuilder sSHBuilder = new SSHBuilder();
                sSHBuilder.writeString(RSA);
                sSHBuilder.writeBigNum(rSAKeyParameters.getExponent());
                sSHBuilder.writeBigNum(rSAKeyParameters.getModulus());
                return sSHBuilder.getBytes();
            } else if (asymmetricKeyParameter instanceof ECPublicKeyParameters) {
                SSHBuilder sSHBuilder2 = new SSHBuilder();
                ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) asymmetricKeyParameter;
                String nameForParameters = SSHNamedCurves.getNameForParameters(eCPublicKeyParameters.getParameters());
                if (nameForParameters == null) {
                    throw new IllegalArgumentException("unable to derive ssh curve name for " + eCPublicKeyParameters.getParameters().getCurve().getClass().getName());
                }
                sSHBuilder2.writeString("ecdsa-sha2-" + nameForParameters);
                sSHBuilder2.writeString(nameForParameters);
                sSHBuilder2.writeBlock(eCPublicKeyParameters.getQ().getEncoded(false));
                return sSHBuilder2.getBytes();
            } else if (asymmetricKeyParameter instanceof DSAPublicKeyParameters) {
                DSAPublicKeyParameters dSAPublicKeyParameters = (DSAPublicKeyParameters) asymmetricKeyParameter;
                DSAParameters parameters = dSAPublicKeyParameters.getParameters();
                SSHBuilder sSHBuilder3 = new SSHBuilder();
                sSHBuilder3.writeString(DSS);
                sSHBuilder3.writeBigNum(parameters.getP());
                sSHBuilder3.writeBigNum(parameters.getQ());
                sSHBuilder3.writeBigNum(parameters.getG());
                sSHBuilder3.writeBigNum(dSAPublicKeyParameters.getY());
                return sSHBuilder3.getBytes();
            } else if (asymmetricKeyParameter instanceof Ed25519PublicKeyParameters) {
                SSHBuilder sSHBuilder4 = new SSHBuilder();
                sSHBuilder4.writeString(ED_25519);
                sSHBuilder4.writeBlock(((Ed25519PublicKeyParameters) asymmetricKeyParameter).getEncoded());
                return sSHBuilder4.getBytes();
            } else {
                throw new IllegalArgumentException("unable to convert " + asymmetricKeyParameter.getClass().getName() + " to private key");
            }
        }
        throw new IllegalArgumentException("cipherParameters was null.");
    }

    public static AsymmetricKeyParameter parsePublicKey(SSHBuffer sSHBuffer) {
        AsymmetricKeyParameter asymmetricKeyParameter;
        AsymmetricKeyParameter eCPublicKeyParameters;
        String readString = sSHBuffer.readString();
        if (RSA.equals(readString)) {
            asymmetricKeyParameter = new RSAKeyParameters(false, sSHBuffer.readBigNumPositive(), sSHBuffer.readBigNumPositive());
        } else {
            if (DSS.equals(readString)) {
                eCPublicKeyParameters = new DSAPublicKeyParameters(sSHBuffer.readBigNumPositive(), new DSAParameters(sSHBuffer.readBigNumPositive(), sSHBuffer.readBigNumPositive(), sSHBuffer.readBigNumPositive()));
            } else if (readString.startsWith(ECDSA)) {
                String readString2 = sSHBuffer.readString();
                ASN1ObjectIdentifier byName = SSHNamedCurves.getByName(readString2);
                X9ECParameters parameters = SSHNamedCurves.getParameters(byName);
                if (parameters == null) {
                    throw new IllegalStateException("unable to find curve for " + readString + " using curve name " + readString2);
                }
                eCPublicKeyParameters = new ECPublicKeyParameters(parameters.getCurve().decodePoint(sSHBuffer.readBlock()), new ECNamedDomainParameters(byName, parameters));
            } else if (ED_25519.equals(readString)) {
                byte[] readBlock = sSHBuffer.readBlock();
                if (readBlock.length != 32) {
                    throw new IllegalStateException("public key value of wrong length");
                }
                asymmetricKeyParameter = new Ed25519PublicKeyParameters(readBlock, 0);
            } else {
                asymmetricKeyParameter = null;
            }
            asymmetricKeyParameter = eCPublicKeyParameters;
        }
        if (asymmetricKeyParameter != null) {
            if (sSHBuffer.hasRemaining()) {
                throw new IllegalArgumentException("decoded key has trailing data");
            }
            return asymmetricKeyParameter;
        }
        throw new IllegalArgumentException("unable to parse key");
    }

    public static AsymmetricKeyParameter parsePublicKey(byte[] bArr) {
        return parsePublicKey(new SSHBuffer(bArr));
    }
}
