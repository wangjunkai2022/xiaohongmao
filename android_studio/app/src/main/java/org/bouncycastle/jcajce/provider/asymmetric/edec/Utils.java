package org.bouncycastle.jcajce.provider.asymmetric.edec;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.Ed25519PublicKeyParameters;
import org.bouncycastle.crypto.params.Ed448PublicKeyParameters;
import org.bouncycastle.crypto.params.X25519PublicKeyParameters;
import org.bouncycastle.crypto.params.X448PublicKeyParameters;
import org.bouncycastle.util.Fingerprint;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes4.dex */
class Utils {
    Utils() {
    }

    private static String generateKeyFingerprint(byte[] bArr) {
        return new Fingerprint(bArr).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isValidPrefix(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return !isValidPrefix(bArr, bArr);
        }
        int i4 = 0;
        for (int i10 = 0; i10 != bArr.length; i10++) {
            i4 |= bArr[i10] ^ bArr2[i10];
        }
        return i4 == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String keyToString(String str, String str2, AsymmetricKeyParameter asymmetricKeyParameter) {
        StringBuffer stringBuffer = new StringBuffer();
        String lineSeparator = Strings.lineSeparator();
        byte[] encoded = asymmetricKeyParameter instanceof X448PublicKeyParameters ? ((X448PublicKeyParameters) asymmetricKeyParameter).getEncoded() : asymmetricKeyParameter instanceof Ed448PublicKeyParameters ? ((Ed448PublicKeyParameters) asymmetricKeyParameter).getEncoded() : asymmetricKeyParameter instanceof X25519PublicKeyParameters ? ((X25519PublicKeyParameters) asymmetricKeyParameter).getEncoded() : ((Ed25519PublicKeyParameters) asymmetricKeyParameter).getEncoded();
        stringBuffer.append(str2);
        stringBuffer.append(" ");
        stringBuffer.append(str);
        stringBuffer.append(" [");
        stringBuffer.append(generateKeyFingerprint(encoded));
        stringBuffer.append("]");
        stringBuffer.append(lineSeparator);
        stringBuffer.append("    public data: ");
        stringBuffer.append(Hex.toHexString(encoded));
        stringBuffer.append(lineSeparator);
        return stringBuffer.toString();
    }
}
