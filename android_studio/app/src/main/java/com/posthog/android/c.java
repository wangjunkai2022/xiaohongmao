package com.posthog.android;

import android.text.TextUtils;
import com.posthog.android.internal.Utils;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Client.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    final com.posthog.android.d f47462a;

    /* renamed from: b  reason: collision with root package name */
    final String f47463b;

    /* renamed from: c  reason: collision with root package name */
    final String f47464c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Client.java */
    /* loaded from: classes3.dex */
    public static class a extends AbstractC0398c {
        a(HttpURLConnection httpURLConnection, InputStream inputStream, OutputStream outputStream) {
            super(httpURLConnection, inputStream, outputStream);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
            if (r1 == null) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
            throw new com.posthog.android.c.d(r0, r5.f47465a.getResponseMessage(), r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
            if (r1 != null) goto L9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
            r1.close();
         */
        @Override // com.posthog.android.c.AbstractC0398c, java.io.Closeable, java.lang.AutoCloseable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void close() throws java.io.IOException {
            /*
                r5 = this;
                java.net.HttpURLConnection r0 = r5.f47465a     // Catch: java.lang.Throwable -> L51
                int r0 = r0.getResponseCode()     // Catch: java.lang.Throwable -> L51
                r1 = 300(0x12c, float:4.2E-43)
                if (r0 < r1) goto L48
                r1 = 0
                java.net.HttpURLConnection r2 = r5.f47465a     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1d
                java.io.InputStream r1 = com.posthog.android.internal.Utils.l(r2)     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1d
                java.lang.String r2 = com.posthog.android.internal.Utils.E(r1)     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1d
                if (r1 == 0) goto L36
            L17:
                r1.close()     // Catch: java.lang.Throwable -> L51
                goto L36
            L1b:
                r0 = move-exception
                goto L42
            L1d:
                r2 = move-exception
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1b
                r3.<init>()     // Catch: java.lang.Throwable -> L1b
                java.lang.String r4 = "Could not read response body for rejected message: "
                r3.append(r4)     // Catch: java.lang.Throwable -> L1b
                java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L1b
                r3.append(r2)     // Catch: java.lang.Throwable -> L1b
                java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L1b
                if (r1 == 0) goto L36
                goto L17
            L36:
                com.posthog.android.c$d r1 = new com.posthog.android.c$d     // Catch: java.lang.Throwable -> L51
                java.net.HttpURLConnection r3 = r5.f47465a     // Catch: java.lang.Throwable -> L51
                java.lang.String r3 = r3.getResponseMessage()     // Catch: java.lang.Throwable -> L51
                r1.<init>(r0, r3, r2)     // Catch: java.lang.Throwable -> L51
                throw r1     // Catch: java.lang.Throwable -> L51
            L42:
                if (r1 == 0) goto L47
                r1.close()     // Catch: java.lang.Throwable -> L51
            L47:
                throw r0     // Catch: java.lang.Throwable -> L51
            L48:
                super.close()
                java.io.OutputStream r0 = r5.f47467c
                r0.close()
                return
            L51:
                r0 = move-exception
                super.close()
                java.io.OutputStream r1 = r5.f47467c
                r1.close()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.posthog.android.c.a.close():void");
        }
    }

    /* compiled from: Client.java */
    /* loaded from: classes3.dex */
    static class b extends AbstractC0398c {
        b(HttpURLConnection httpURLConnection, InputStream inputStream, OutputStream outputStream) {
            super(httpURLConnection, inputStream, outputStream);
        }

        @Override // com.posthog.android.c.AbstractC0398c, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.f47466b.close();
        }
    }

    /* compiled from: Client.java */
    /* renamed from: com.posthog.android.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static abstract class AbstractC0398c implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        final HttpURLConnection f47465a;

        /* renamed from: b  reason: collision with root package name */
        final InputStream f47466b;

        /* renamed from: c  reason: collision with root package name */
        final OutputStream f47467c;

        AbstractC0398c(HttpURLConnection httpURLConnection, InputStream inputStream, OutputStream outputStream) {
            if (httpURLConnection != null) {
                this.f47465a = httpURLConnection;
                this.f47466b = inputStream;
                this.f47467c = outputStream;
                return;
            }
            throw new IllegalArgumentException("connection == null");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f47465a.disconnect();
        }
    }

    /* compiled from: Client.java */
    /* loaded from: classes3.dex */
    static class d extends IOException {

        /* renamed from: a  reason: collision with root package name */
        final int f47468a;

        /* renamed from: b  reason: collision with root package name */
        final String f47469b;

        /* renamed from: c  reason: collision with root package name */
        final String f47470c;

        d(int i4, String str, String str2) {
            super("HTTP " + i4 + ": " + str + ". Response: " + str2);
            this.f47468a = i4;
            this.f47469b = str;
            this.f47470c = str2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a() {
            int i4 = this.f47468a;
            return i4 >= 400 && i4 < 500;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, String str2, com.posthog.android.d dVar) {
        this.f47463b = str;
        this.f47464c = str2;
        this.f47462a = dVar;
    }

    private static AbstractC0398c b(HttpURLConnection httpURLConnection) throws IOException {
        return new b(httpURLConnection, Utils.l(httpURLConnection), null);
    }

    private static AbstractC0398c c(HttpURLConnection httpURLConnection) throws IOException {
        OutputStream outputStream;
        if (TextUtils.equals("gzip", httpURLConnection.getRequestProperty("Content-Encoding"))) {
            outputStream = new GZIPOutputStream(httpURLConnection.getOutputStream());
        } else {
            outputStream = httpURLConnection.getOutputStream();
        }
        return new a(httpURLConnection, null, outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC0398c a() throws IOException {
        return c(this.f47462a.a(this.f47464c));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC0398c d() throws IOException {
        return c(this.f47462a.b(this.f47464c));
    }
}
