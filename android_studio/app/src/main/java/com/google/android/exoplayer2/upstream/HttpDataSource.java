package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface HttpDataSource extends m {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.common.base.b0<String> f26967a = a0.f27024a;

    /* loaded from: classes2.dex */
    public static final class CleartextNotPermittedException extends HttpDataSourceException {
        public CleartextNotPermittedException(IOException iOException, o oVar) {
            super("Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted", iOException, oVar, 1);
        }
    }

    /* loaded from: classes2.dex */
    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public InvalidContentTypeException(java.lang.String r4, com.google.android.exoplayer2.upstream.o r5) {
            /*
                r3 = this;
                java.lang.String r0 = java.lang.String.valueOf(r4)
                int r1 = r0.length()
                java.lang.String r2 = "Invalid content type: "
                if (r1 == 0) goto L11
                java.lang.String r0 = r2.concat(r0)
                goto L16
            L11:
                java.lang.String r0 = new java.lang.String
                r0.<init>(r2)
            L16:
                r1 = 1
                r3.<init>(r0, r5, r1)
                r3.contentType = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.HttpDataSource.InvalidContentTypeException.<init>(java.lang.String, com.google.android.exoplayer2.upstream.o):void");
        }
    }

    /* loaded from: classes2.dex */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final byte[] responseBody;
        public final int responseCode;
        @Nullable
        public final String responseMessage;

        @Deprecated
        public InvalidResponseCodeException(int i4, Map<String, List<String>> map, o oVar) {
            this(i4, null, map, oVar, z0.f27748f);
        }

        @Deprecated
        public InvalidResponseCodeException(int i4, @Nullable String str, Map<String, List<String>> map, o oVar) {
            this(i4, str, map, oVar, z0.f27748f);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public InvalidResponseCodeException(int r3, @androidx.annotation.Nullable java.lang.String r4, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r5, com.google.android.exoplayer2.upstream.o r6, byte[] r7) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = 26
                r0.<init>(r1)
                java.lang.String r1 = "Response code: "
                r0.append(r1)
                r0.append(r3)
                java.lang.String r0 = r0.toString()
                r1 = 1
                r2.<init>(r0, r6, r1)
                r2.responseCode = r3
                r2.responseMessage = r4
                r2.headerFields = r5
                r2.responseBody = r7
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException.<init>(int, java.lang.String, java.util.Map, com.google.android.exoplayer2.upstream.o, byte[]):void");
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class a implements b {

        /* renamed from: a  reason: collision with root package name */
        private final c f26968a = new c();

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.b
        @Deprecated
        public final c b() {
            return this.f26968a;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.b
        public final b c(Map<String, String> map) {
            this.f26968a.b(map);
            return this;
        }

        protected abstract HttpDataSource d(c cVar);

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.b, com.google.android.exoplayer2.upstream.m.a
        public final HttpDataSource a() {
            return d(this.f26968a);
        }
    }

    /* loaded from: classes2.dex */
    public interface b extends m.a {
        @Override // com.google.android.exoplayer2.upstream.m.a
        HttpDataSource a();

        @Override // com.google.android.exoplayer2.upstream.m.a
        /* bridge */ /* synthetic */ m a();

        @Deprecated
        c b();

        b c(Map<String, String> map);
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f26969a = new HashMap();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f26970b;

        public synchronized void a() {
            this.f26970b = null;
            this.f26969a.clear();
        }

        public synchronized void b(Map<String, String> map) {
            this.f26970b = null;
            this.f26969a.clear();
            this.f26969a.putAll(map);
        }

        public synchronized Map<String, String> c() {
            if (this.f26970b == null) {
                this.f26970b = Collections.unmodifiableMap(new HashMap(this.f26969a));
            }
            return this.f26970b;
        }

        public synchronized void d(String str) {
            this.f26970b = null;
            this.f26969a.remove(str);
        }

        public synchronized void e(String str, String str2) {
            this.f26970b = null;
            this.f26969a.put(str, str2);
        }

        public synchronized void f(Map<String, String> map) {
            this.f26970b = null;
            this.f26969a.putAll(map);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    long a(o oVar) throws HttpDataSourceException;

    @Override // com.google.android.exoplayer2.upstream.m
    Map<String, List<String>> b();

    @Override // com.google.android.exoplayer2.upstream.m
    void close() throws HttpDataSourceException;

    void d(String str, String str2);

    int l();

    void p();

    void r(String str);

    @Override // com.google.android.exoplayer2.upstream.i
    int read(byte[] bArr, int i4, int i10) throws HttpDataSourceException;

    /* loaded from: classes2.dex */
    public static class HttpDataSourceException extends IOException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final o dataSpec;
        public final int type;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface a {
        }

        public HttpDataSourceException(o oVar, int i4) {
            this.dataSpec = oVar;
            this.type = i4;
        }

        public HttpDataSourceException(String str, o oVar, int i4) {
            super(str);
            this.dataSpec = oVar;
            this.type = i4;
        }

        public HttpDataSourceException(IOException iOException, o oVar, int i4) {
            super(iOException);
            this.dataSpec = oVar;
            this.type = i4;
        }

        public HttpDataSourceException(String str, IOException iOException, o oVar, int i4) {
            super(str, iOException);
            this.dataSpec = oVar;
            this.type = i4;
        }
    }
}
