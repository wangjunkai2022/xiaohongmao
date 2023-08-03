package org.bouncycastle.jcajce.spec;

import java.security.spec.EncodedKeySpec;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes5.dex */
public class OpenSSHPublicKeySpec extends EncodedKeySpec {
    private static final String[] allowedTypes = {"ssh-rsa", "ssh-ed25519", "ssh-dss"};
    private final String type;

    public OpenSSHPublicKeySpec(byte[] bArr) {
        super(bArr);
        int i4 = 0;
        int i10 = (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) + 4;
        if (i10 >= bArr.length) {
            throw new IllegalArgumentException("invalid public key blob: type field longer than blob");
        }
        String fromByteArray = Strings.fromByteArray(Arrays.copyOfRange(bArr, 4, i10));
        this.type = fromByteArray;
        if (fromByteArray.startsWith("ecdsa")) {
            return;
        }
        while (true) {
            String[] strArr = allowedTypes;
            if (i4 >= strArr.length) {
                throw new IllegalArgumentException("unrecognised public key type " + this.type);
            } else if (strArr[i4].equals(this.type)) {
                return;
            } else {
                i4++;
            }
        }
    }

    @Override // java.security.spec.EncodedKeySpec
    public String getFormat() {
        return "OpenSSH";
    }

    public String getType() {
        return this.type;
    }
}
