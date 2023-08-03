package shaded.org.apache.commons.codec.digest;

/* compiled from: Crypt.java */
/* loaded from: classes5.dex */
public class b {
    public static String a(String str) {
        return b(str, null);
    }

    public static String b(String str, String str2) {
        return d(str.getBytes(h9.d.f69074f), str2);
    }

    public static String c(byte[] bArr) {
        return d(bArr, null);
    }

    public static String d(byte[] bArr, String str) {
        if (str == null) {
            return i.d(bArr);
        }
        if (str.startsWith("$6$")) {
            return i.e(bArr, str);
        }
        if (str.startsWith("$5$")) {
            return i.b(bArr, str);
        }
        if (str.startsWith("$1$")) {
            return e.f(bArr, str);
        }
        return j.f(bArr, str);
    }
}
