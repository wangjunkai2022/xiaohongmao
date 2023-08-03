package org.minidns.dnsserverlookup;

import java.io.File;
import java.util.List;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import org.minidns.util.i;

/* compiled from: UnixUsingEtcResolvConf.java */
/* loaded from: classes5.dex */
public class e extends a {

    /* renamed from: e  reason: collision with root package name */
    public static final int f92788e = 2000;

    /* renamed from: g  reason: collision with root package name */
    private static final String f92790g = "/etc/resolv.conf";

    /* renamed from: i  reason: collision with root package name */
    private static List<String> f92792i;

    /* renamed from: j  reason: collision with root package name */
    private static long f92793j;

    /* renamed from: d  reason: collision with root package name */
    public static final d f92787d = new e();

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f92789f = Logger.getLogger(e.class.getName());

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f92791h = Pattern.compile("^nameserver\\s+(.*)$");

    private e() {
        super(e.class.getSimpleName(), 2000);
    }

    @Override // org.minidns.dnsserverlookup.d
    public boolean H() {
        return !i.a() && new File(f92790g).exists();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    @Override // org.minidns.dnsserverlookup.a, org.minidns.dnsserverlookup.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<java.lang.String> j() {
        /*
            r9 = this;
            java.lang.String r0 = "Could not close reader"
            java.io.File r1 = new java.io.File
            java.lang.String r2 = "/etc/resolv.conf"
            r1.<init>(r2)
            boolean r2 = r1.exists()
            r3 = 0
            if (r2 != 0) goto L11
            return r3
        L11:
            long r4 = r1.lastModified()
            long r6 = org.minidns.dnsserverlookup.e.f92793j
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 != 0) goto L20
            java.util.List<java.lang.String> r2 = org.minidns.dnsserverlookup.e.f92792i
            if (r2 == 0) goto L20
            return r2
        L20:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            java.io.FileInputStream r1 = io.sentry.instrumentation.file.h.b.a(r8, r1)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
        L38:
            java.lang.String r1 = r6.readLine()     // Catch: java.io.IOException -> L76 java.lang.Throwable -> L94
            if (r1 == 0) goto L57
            java.util.regex.Pattern r7 = org.minidns.dnsserverlookup.e.f92791h     // Catch: java.io.IOException -> L76 java.lang.Throwable -> L94
            java.util.regex.Matcher r1 = r7.matcher(r1)     // Catch: java.io.IOException -> L76 java.lang.Throwable -> L94
            boolean r7 = r1.matches()     // Catch: java.io.IOException -> L76 java.lang.Throwable -> L94
            if (r7 == 0) goto L38
            r7 = 1
            java.lang.String r1 = r1.group(r7)     // Catch: java.io.IOException -> L76 java.lang.Throwable -> L94
            java.lang.String r1 = r1.trim()     // Catch: java.io.IOException -> L76 java.lang.Throwable -> L94
            r2.add(r1)     // Catch: java.io.IOException -> L76 java.lang.Throwable -> L94
            goto L38
        L57:
            r6.close()     // Catch: java.io.IOException -> L5b
            goto L63
        L5b:
            r1 = move-exception
            java.util.logging.Logger r6 = org.minidns.dnsserverlookup.e.f92789f
            java.util.logging.Level r7 = java.util.logging.Level.WARNING
            r6.log(r7, r0, r1)
        L63:
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto L71
            java.util.logging.Logger r0 = org.minidns.dnsserverlookup.e.f92789f
            java.lang.String r1 = "Could not find any nameservers in /etc/resolv.conf"
            r0.fine(r1)
            return r3
        L71:
            org.minidns.dnsserverlookup.e.f92792i = r2
            org.minidns.dnsserverlookup.e.f92793j = r4
            return r2
        L76:
            r1 = move-exception
            goto L7c
        L78:
            r1 = move-exception
            goto L96
        L7a:
            r1 = move-exception
            r6 = r3
        L7c:
            java.util.logging.Logger r2 = org.minidns.dnsserverlookup.e.f92789f     // Catch: java.lang.Throwable -> L94
            java.util.logging.Level r4 = java.util.logging.Level.WARNING     // Catch: java.lang.Throwable -> L94
            java.lang.String r5 = "Could not read from /etc/resolv.conf"
            r2.log(r4, r5, r1)     // Catch: java.lang.Throwable -> L94
            if (r6 == 0) goto L93
            r6.close()     // Catch: java.io.IOException -> L8b
            goto L93
        L8b:
            r1 = move-exception
            java.util.logging.Logger r2 = org.minidns.dnsserverlookup.e.f92789f
            java.util.logging.Level r4 = java.util.logging.Level.WARNING
            r2.log(r4, r0, r1)
        L93:
            return r3
        L94:
            r1 = move-exception
            r3 = r6
        L96:
            if (r3 == 0) goto La4
            r3.close()     // Catch: java.io.IOException -> L9c
            goto La4
        L9c:
            r2 = move-exception
            java.util.logging.Logger r3 = org.minidns.dnsserverlookup.e.f92789f
            java.util.logging.Level r4 = java.util.logging.Level.WARNING
            r3.log(r4, r0, r2)
        La4:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.dnsserverlookup.e.j():java.util.List");
    }
}
