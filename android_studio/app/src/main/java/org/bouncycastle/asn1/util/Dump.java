package org.bouncycastle.asn1.util;

import io.sentry.instrumentation.file.h;
import java.io.FileInputStream;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Primitive;

/* loaded from: classes4.dex */
public class Dump {
    public static void main(String[] strArr) throws Exception {
        String str = strArr[0];
        FileInputStream d4 = h.b.d(new FileInputStream(str), str);
        ASN1InputStream aSN1InputStream = new ASN1InputStream(d4);
        while (true) {
            ASN1Primitive readObject = aSN1InputStream.readObject();
            if (readObject == null) {
                d4.close();
                return;
            }
            System.out.println(ASN1Dump.dumpAsString(readObject));
        }
    }
}
