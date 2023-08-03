package com.ksyun.media.player.https;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import javax.net.ssl.X509TrustManager;

/* compiled from: KsyHttpConnection.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f45539g;

    /* renamed from: b  reason: collision with root package name */
    private final String f45534b = "KsyHttpClient";

    /* renamed from: c  reason: collision with root package name */
    private int f45535c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f45536d = 0;

    /* renamed from: e  reason: collision with root package name */
    private HttpResponseListener f45537e = null;

    /* renamed from: f  reason: collision with root package name */
    private final Object f45538f = new Object();

    /* renamed from: a  reason: collision with root package name */
    HashMap<String, String> f45533a = new HashMap<>();

    /* compiled from: KsyHttpConnection.java */
    /* renamed from: com.ksyun.media.player.https.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0388a implements X509TrustManager {
        public C0388a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            try {
                x509CertificateArr[0].checkValidity();
            } catch (Exception unused) {
                throw new CertificateException("Certificate not valid or trusted.");
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        this.f45539g = false;
        this.f45539g = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i4) {
        this.f45535c = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i4) {
        this.f45536d = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        this.f45533a.put(str, str2);
    }

    public void b(final String str) {
        new Thread(new Runnable() { // from class: com.ksyun.media.player.https.a.2
            /* JADX WARN: Code restructure failed: missing block: B:119:0x01bf, code lost:
                if (r3 == 0) goto L54;
             */
            /* JADX WARN: Code restructure failed: missing block: B:141:0x01fa, code lost:
                if (r3 == 0) goto L54;
             */
            /* JADX WARN: Code restructure failed: missing block: B:163:0x0236, code lost:
                if (r3 == 0) goto L54;
             */
            /* JADX WARN: Code restructure failed: missing block: B:185:0x0272, code lost:
                if (r3 == 0) goto L54;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:225:0x0212 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:227:0x01d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:231:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:238:0x024e A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.ksyun.media.player.https.KsyHttpResponse] */
            /* JADX WARN: Type inference failed for: r0v1 */
            /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r0v2, types: [com.ksyun.media.player.https.KsyHttpResponse] */
            /* JADX WARN: Type inference failed for: r1v0 */
            /* JADX WARN: Type inference failed for: r1v1 */
            /* JADX WARN: Type inference failed for: r1v28, types: [com.ksyun.media.player.https.HttpResponseListener] */
            /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r3v0 */
            /* JADX WARN: Type inference failed for: r3v10, types: [javax.net.ssl.HttpsURLConnection] */
            /* JADX WARN: Type inference failed for: r3v11 */
            /* JADX WARN: Type inference failed for: r3v12 */
            /* JADX WARN: Type inference failed for: r3v13 */
            /* JADX WARN: Type inference failed for: r3v14 */
            /* JADX WARN: Type inference failed for: r3v15, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r3v16, types: [javax.net.ssl.HttpsURLConnection] */
            /* JADX WARN: Type inference failed for: r3v20, types: [javax.net.ssl.HttpsURLConnection] */
            /* JADX WARN: Type inference failed for: r3v22 */
            /* JADX WARN: Type inference failed for: r3v23 */
            /* JADX WARN: Type inference failed for: r3v24 */
            /* JADX WARN: Type inference failed for: r3v25 */
            /* JADX WARN: Type inference failed for: r3v26 */
            /* JADX WARN: Type inference failed for: r3v27 */
            /* JADX WARN: Type inference failed for: r3v28 */
            /* JADX WARN: Type inference failed for: r3v29 */
            /* JADX WARN: Type inference failed for: r3v30 */
            /* JADX WARN: Type inference failed for: r3v31 */
            /* JADX WARN: Type inference failed for: r3v32 */
            /* JADX WARN: Type inference failed for: r3v33 */
            /* JADX WARN: Type inference failed for: r3v34 */
            /* JADX WARN: Type inference failed for: r3v35 */
            /* JADX WARN: Type inference failed for: r3v36 */
            /* JADX WARN: Type inference failed for: r3v37 */
            /* JADX WARN: Type inference failed for: r4v62, types: [com.ksyun.media.player.https.HttpResponseListener] */
            /* JADX WARN: Type inference failed for: r5v13, types: [com.ksyun.media.player.https.HttpResponseListener] */
            /* JADX WARN: Type inference failed for: r6v11, types: [com.ksyun.media.player.https.HttpResponseListener] */
            /* JADX WARN: Type inference failed for: r6v14 */
            /* JADX WARN: Type inference failed for: r6v18, types: [com.ksyun.media.player.https.HttpResponseListener] */
            /* JADX WARN: Type inference failed for: r6v21 */
            /* JADX WARN: Type inference failed for: r6v25, types: [com.ksyun.media.player.https.HttpResponseListener] */
            /* JADX WARN: Type inference failed for: r6v28 */
            /* JADX WARN: Type inference failed for: r6v32, types: [com.ksyun.media.player.https.HttpResponseListener] */
            /* JADX WARN: Type inference failed for: r6v33 */
            /* JADX WARN: Type inference failed for: r6v34 */
            /* JADX WARN: Type inference failed for: r6v56, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r6v61 */
            /* JADX WARN: Type inference failed for: r6v62 */
            /* JADX WARN: Type inference failed for: r6v63 */
            /* JADX WARN: Type inference failed for: r6v64 */
            /* JADX WARN: Type inference failed for: r6v65 */
            /* JADX WARN: Type inference failed for: r6v66 */
            /* JADX WARN: Type inference failed for: r6v67 */
            /* JADX WARN: Type inference failed for: r6v68 */
            /* JADX WARN: Type inference failed for: r6v69 */
            /* JADX WARN: Type inference failed for: r6v7 */
            /* JADX WARN: Type inference failed for: r6v70 */
            /* JADX WARN: Type inference failed for: r6v71 */
            /* JADX WARN: Type inference failed for: r6v72 */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 721
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.player.https.a.AnonymousClass2.run():void");
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(HttpResponseListener httpResponseListener) {
        this.f45537e = httpResponseListener;
    }

    public void a() {
        synchronized (this.f45538f) {
            this.f45539g = true;
        }
    }

    public void a(final String str) {
        new Thread(new Runnable() { // from class: com.ksyun.media.player.https.a.1
            /* JADX WARN: Not initialized variable reg: 5, insn: 0x01c2: MOVE  (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:123:0x01c2 */
            /* JADX WARN: Removed duplicated region for block: B:151:0x0176 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:162:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 538
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.player.https.a.AnonymousClass1.run():void");
            }
        }).start();
    }
}
