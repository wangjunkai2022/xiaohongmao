package org.bouncycastle.jcajce.spec;

import com.alipay.security.mobile.module.commonutils.crypto.c;
import java.security.spec.EncodedKeySpec;

/* loaded from: classes5.dex */
public class RawEncodedKeySpec extends EncodedKeySpec {
    public RawEncodedKeySpec(byte[] bArr) {
        super(bArr);
    }

    @Override // java.security.spec.EncodedKeySpec
    public String getFormat() {
        return c.f7005c;
    }
}
