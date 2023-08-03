package org.bouncycastle.jcajce.spec;

import java.security.spec.EncodedKeySpec;

/* loaded from: classes5.dex */
public class OpenSSHPrivateKeySpec extends EncodedKeySpec {
    private final String format;

    public OpenSSHPrivateKeySpec(byte[] bArr) {
        super(bArr);
        String str;
        if (bArr[0] == 48) {
            str = "ASN.1";
        } else if (bArr[0] != 111) {
            throw new IllegalArgumentException("unknown byte encoding");
        } else {
            str = "OpenSSH";
        }
        this.format = str;
    }

    @Override // java.security.spec.EncodedKeySpec
    public String getFormat() {
        return this.format;
    }
}
