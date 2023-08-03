package i9;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Locale;
import shaded.org.apache.commons.codec.binary.l;
import shaded.org.apache.commons.codec.digest.c;
import shaded.org.apache.commons.codec.language.bm.f;

/* compiled from: Digest.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f69310a;

    /* renamed from: b  reason: collision with root package name */
    private final String[] f69311b;

    /* renamed from: c  reason: collision with root package name */
    private final String[] f69312c;

    private a(String[] strArr) {
        if (strArr != null) {
            if (strArr.length != 0) {
                this.f69311b = strArr;
                this.f69310a = strArr[0];
                if (strArr.length <= 1) {
                    this.f69312c = null;
                    return;
                }
                String[] strArr2 = new String[strArr.length - 1];
                this.f69312c = strArr2;
                System.arraycopy(strArr, 1, strArr2, 0, strArr2.length);
                return;
            }
            throw new IllegalArgumentException(String.format("Usage: java %s [algorithm] [FILE|DIRECTORY|string] ...", a.class.getName()));
        }
        throw new IllegalArgumentException("args");
    }

    public static void a(String[] strArr) throws IOException {
        new a(strArr).d();
    }

    private void b(String str, byte[] bArr) {
        c(str, bArr, null);
    }

    private void c(String str, byte[] bArr, String str2) {
        String str3;
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(l.r(bArr));
        if (str2 != null) {
            str3 = "  " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        printStream.println(sb.toString());
    }

    private void d() throws IOException {
        if (!this.f69310a.equalsIgnoreCase(f.f93599f) && !this.f69310a.equals("*")) {
            MessageDigest p9 = c.p(this.f69310a, null);
            if (p9 != null) {
                f("", p9);
                return;
            } else {
                f("", c.o(this.f69310a.toUpperCase(Locale.ROOT)));
                return;
            }
        }
        h(shaded.org.apache.commons.codec.digest.f.a());
    }

    private void e(String str, String str2) throws IOException {
        f(str, c.o(str2));
    }

    private void f(String str, MessageDigest messageDigest) throws IOException {
        String[] strArr = this.f69312c;
        if (strArr == null) {
            b(str, c.f(messageDigest, System.in));
            return;
        }
        for (String str2 : strArr) {
            File file = new File(str2);
            if (file.isFile()) {
                c(str, c.e(messageDigest, file), str2);
            } else if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    g(str, messageDigest, listFiles);
                }
            } else {
                b(str, c.h(messageDigest, str2.getBytes(Charset.defaultCharset())));
            }
        }
    }

    private void g(String str, MessageDigest messageDigest, File[] fileArr) throws IOException {
        for (File file : fileArr) {
            if (file.isFile()) {
                c(str, c.e(messageDigest, file), file.getName());
            }
        }
    }

    private void h(String[] strArr) throws IOException {
        for (String str : strArr) {
            if (c.y(str)) {
                e(str + " ", str);
            }
        }
    }

    public String toString() {
        return String.format("%s %s", super.toString(), Arrays.toString(this.f69311b));
    }
}
