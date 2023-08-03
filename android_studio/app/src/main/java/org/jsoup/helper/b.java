package org.jsoup.helper;

import java.io.BufferedReader;
import java.io.CharArrayReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.UncheckedIOException;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.g;
import org.jsoup.nodes.k;
import org.jsoup.nodes.o;
import r7.h;

/* compiled from: DataUtil.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f91725a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f91726b;

    /* renamed from: c  reason: collision with root package name */
    static final String f91727c;

    /* renamed from: d  reason: collision with root package name */
    private static final int f91728d = 5120;

    /* renamed from: e  reason: collision with root package name */
    static final int f91729e = 32768;

    /* renamed from: f  reason: collision with root package name */
    private static final char[] f91730f;

    /* renamed from: g  reason: collision with root package name */
    static final int f91731g = 32;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DataUtil.java */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f91732a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f91733b;

        public a(String str, boolean z9) {
            this.f91732a = str;
            this.f91733b = z9;
        }
    }

    static {
        Charset forName = Charset.forName("UTF-8");
        f91726b = forName;
        f91727c = forName.name();
        f91730f = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[32768];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    @h
    private static a b(ByteBuffer byteBuffer) {
        byteBuffer.mark();
        byte[] bArr = new byte[4];
        if (byteBuffer.remaining() >= 4) {
            byteBuffer.get(bArr);
            byteBuffer.rewind();
        }
        if ((bArr[0] == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) || (bArr[0] == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0)) {
            return new a("UTF-32", false);
        }
        if ((bArr[0] == -2 && bArr[1] == -1) || (bArr[0] == -1 && bArr[1] == -2)) {
            return new a("UTF-16", false);
        }
        if (bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
            return new a("UTF-8", true);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer c() {
        return ByteBuffer.allocate(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h
    public static String d(@h String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f91725a.matcher(str);
        if (matcher.find()) {
            return l(matcher.group(1).trim().replace("charset=", ""));
        }
        return null;
    }

    public static Document e(File file, @h String str, String str2) throws IOException {
        return f(file, str, str2, org.jsoup.parser.f.c());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.jsoup.nodes.Document f(java.io.File r3, @r7.h java.lang.String r4, java.lang.String r5, org.jsoup.parser.f r6) throws java.io.IOException {
        /*
            java.io.FileInputStream r0 = new java.io.FileInputStream
            r0.<init>(r3)
            java.io.FileInputStream r0 = io.sentry.instrumentation.file.h.b.a(r0, r3)
            java.lang.String r1 = r3.getName()
            java.lang.String r1 = org.jsoup.internal.d.a(r1)
            java.lang.String r2 = ".gz"
            boolean r2 = r1.endsWith(r2)
            if (r2 != 0) goto L21
            java.lang.String r2 = ".z"
            boolean r1 = r1.endsWith(r2)
            if (r1 == 0) goto L52
        L21:
            int r1 = r0.read()     // Catch: java.lang.Throwable -> L57
            r2 = 31
            if (r1 != r2) goto L33
            int r1 = r0.read()     // Catch: java.lang.Throwable -> L57
            r2 = 139(0x8b, float:1.95E-43)
            if (r1 != r2) goto L33
            r1 = 1
            goto L34
        L33:
            r1 = 0
        L34:
            r0.close()
            if (r1 == 0) goto L48
            java.util.zip.GZIPInputStream r0 = new java.util.zip.GZIPInputStream
            java.io.FileInputStream r1 = new java.io.FileInputStream
            r1.<init>(r3)
            java.io.FileInputStream r3 = io.sentry.instrumentation.file.h.b.a(r1, r3)
            r0.<init>(r3)
            goto L52
        L48:
            java.io.FileInputStream r0 = new java.io.FileInputStream
            r0.<init>(r3)
            java.io.FileInputStream r3 = io.sentry.instrumentation.file.h.b.a(r0, r3)
            r0 = r3
        L52:
            org.jsoup.nodes.Document r3 = j(r0, r4, r5, r6)
            return r3
        L57:
            r3 = move-exception
            r0.close()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.helper.b.f(java.io.File, java.lang.String, java.lang.String, org.jsoup.parser.f):org.jsoup.nodes.Document");
    }

    public static Document g(InputStream inputStream, @h String str, String str2) throws IOException {
        return j(inputStream, str, str2, org.jsoup.parser.f.c());
    }

    public static Document h(InputStream inputStream, @h String str, String str2, org.jsoup.parser.f fVar) throws IOException {
        return j(inputStream, str, str2, fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String i() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        Random random = new Random();
        for (int i4 = 0; i4 < 32; i4++) {
            char[] cArr = f91730f;
            b10.append(cArr[random.nextInt(cArr.length)]);
        }
        return org.jsoup.internal.f.p(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Document j(@h InputStream inputStream, @h String str, String str2, org.jsoup.parser.f fVar) throws IOException {
        Document m9;
        o oVar;
        if (inputStream == null) {
            return new Document(str2);
        }
        org.jsoup.internal.a h4 = org.jsoup.internal.a.h(inputStream, 32768, 0);
        try {
            h4.mark(32768);
            ByteBuffer k10 = k(h4, 5119);
            boolean z9 = h4.read() == -1;
            h4.reset();
            a b10 = b(k10);
            if (b10 != null) {
                str = b10.f91732a;
            }
            Document document = null;
            if (str == null) {
                try {
                    CharBuffer decode = f91726b.decode(k10);
                    if (decode.hasArray()) {
                        m9 = fVar.l(new CharArrayReader(decode.array(), decode.arrayOffset(), decode.limit()), str2);
                    } else {
                        m9 = fVar.m(decode.toString(), str2);
                    }
                    Iterator<g> it = m9.a2("meta[http-equiv=content-type], meta[charset]").iterator();
                    String str3 = null;
                    while (it.hasNext()) {
                        g next = it.next();
                        if (next.A("http-equiv")) {
                            str3 = d(next.g("content"));
                        }
                        if (str3 == null && next.A("charset")) {
                            str3 = next.g("charset");
                            continue;
                        }
                        if (str3 != null) {
                            break;
                        }
                    }
                    if (str3 == null && m9.o() > 0) {
                        k n9 = m9.n(0);
                        if (n9 instanceof o) {
                            oVar = (o) n9;
                        } else {
                            if (n9 instanceof org.jsoup.nodes.d) {
                                org.jsoup.nodes.d dVar = (org.jsoup.nodes.d) n9;
                                if (dVar.p0()) {
                                    oVar = dVar.m0();
                                }
                            }
                            oVar = null;
                        }
                        if (oVar != null && oVar.p0().equalsIgnoreCase("xml")) {
                            str3 = oVar.g("encoding");
                        }
                    }
                    String l10 = l(str3);
                    if (l10 != null && !l10.equalsIgnoreCase(f91727c)) {
                        str = l10.trim().replaceAll("[\"']", "");
                    } else if (z9) {
                        document = m9;
                    }
                } catch (UncheckedIOException e4) {
                    throw e4.ioException();
                }
            } else {
                d.i(str, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
            }
            if (document == null) {
                if (str == null) {
                    str = f91727c;
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(h4, str), 32768);
                if (b10 != null && b10.f91733b) {
                    d.d(bufferedReader.skip(1L) == 1);
                }
                try {
                    document = fVar.l(bufferedReader, str2);
                    Charset forName = str.equals(f91727c) ? f91726b : Charset.forName(str);
                    document.K2().c(forName);
                    if (!forName.canEncode()) {
                        document.w2(f91726b);
                    }
                    bufferedReader.close();
                } catch (UncheckedIOException e10) {
                    throw e10.ioException();
                }
            }
            return document;
        } finally {
            h4.close();
        }
    }

    public static ByteBuffer k(InputStream inputStream, int i4) throws IOException {
        d.e(i4 >= 0, "maxSize must be 0 (unlimited) or larger");
        return org.jsoup.internal.a.h(inputStream, 32768, i4).b(i4);
    }

    @h
    private static String l(@h String str) {
        if (str != null && str.length() != 0) {
            String replaceAll = str.trim().replaceAll("[\"']", "");
            try {
                if (Charset.isSupported(replaceAll)) {
                    return replaceAll;
                }
                String upperCase = replaceAll.toUpperCase(Locale.ENGLISH);
                if (Charset.isSupported(upperCase)) {
                    return upperCase;
                }
            } catch (IllegalCharsetNameException unused) {
            }
        }
        return null;
    }
}
