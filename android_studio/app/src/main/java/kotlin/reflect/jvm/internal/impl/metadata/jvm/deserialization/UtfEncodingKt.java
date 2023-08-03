package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: utfEncoding.kt */
/* loaded from: classes4.dex */
public final class UtfEncodingKt {
    @g
    public static final byte[] stringsToBytes(@g String[] strings) {
        Intrinsics.checkNotNullParameter(strings, "strings");
        int i4 = 0;
        for (String str : strings) {
            i4 += str.length();
        }
        byte[] bArr = new byte[i4];
        int i10 = 0;
        for (String str2 : strings) {
            int length = str2.length();
            int i11 = 0;
            while (i11 < length) {
                bArr[i10] = (byte) str2.charAt(i11);
                i11++;
                i10++;
            }
        }
        return bArr;
    }
}
