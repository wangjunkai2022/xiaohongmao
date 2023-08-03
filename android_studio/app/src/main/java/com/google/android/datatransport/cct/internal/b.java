package com.google.android.datatransport.cct.internal;

import io.sentry.h4;
import io.sentry.protocol.Device;
import java.io.IOException;

/* compiled from: AutoBatchedLogRequestEncoder.java */
/* loaded from: classes2.dex */
public final class b implements m3.a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f20249a = 2;

    /* renamed from: b  reason: collision with root package name */
    public static final m3.a f20250b = new b();

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes2.dex */
    private static final class a implements com.google.firebase.encoders.d<com.google.android.datatransport.cct.internal.a> {

        /* renamed from: a  reason: collision with root package name */
        static final a f20251a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20252b = com.google.firebase.encoders.c.d("sdkVersion");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20253c = com.google.firebase.encoders.c.d(Device.b.f83594e);

        /* renamed from: d  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20254d = com.google.firebase.encoders.c.d("hardware");

        /* renamed from: e  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20255e = com.google.firebase.encoders.c.d("device");

        /* renamed from: f  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20256f = com.google.firebase.encoders.c.d("product");

        /* renamed from: g  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20257g = com.google.firebase.encoders.c.d("osBuild");

        /* renamed from: h  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20258h = com.google.firebase.encoders.c.d(Device.b.f83591b);

        /* renamed from: i  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20259i = com.google.firebase.encoders.c.d(h4.b.f83290h);

        /* renamed from: j  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20260j = com.google.firebase.encoders.c.d(Device.b.E);

        /* renamed from: k  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20261k = com.google.firebase.encoders.c.d("country");

        /* renamed from: l  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20262l = com.google.firebase.encoders.c.d("mccMnc");

        /* renamed from: m  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20263m = com.google.firebase.encoders.c.d("applicationBuild");

        private a() {
        }

        @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
        /* renamed from: b */
        public void a(com.google.android.datatransport.cct.internal.a aVar, com.google.firebase.encoders.e eVar) throws IOException {
            eVar.m(f20252b, aVar.m());
            eVar.m(f20253c, aVar.j());
            eVar.m(f20254d, aVar.f());
            eVar.m(f20255e, aVar.d());
            eVar.m(f20256f, aVar.l());
            eVar.m(f20257g, aVar.k());
            eVar.m(f20258h, aVar.h());
            eVar.m(f20259i, aVar.e());
            eVar.m(f20260j, aVar.g());
            eVar.m(f20261k, aVar.c());
            eVar.m(f20262l, aVar.i());
            eVar.m(f20263m, aVar.b());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* renamed from: com.google.android.datatransport.cct.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0148b implements com.google.firebase.encoders.d<j> {

        /* renamed from: a  reason: collision with root package name */
        static final C0148b f20264a = new C0148b();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20265b = com.google.firebase.encoders.c.d("logRequest");

        private C0148b() {
        }

        @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
        /* renamed from: b */
        public void a(j jVar, com.google.firebase.encoders.e eVar) throws IOException {
            eVar.m(f20265b, jVar.c());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes2.dex */
    private static final class c implements com.google.firebase.encoders.d<ClientInfo> {

        /* renamed from: a  reason: collision with root package name */
        static final c f20266a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20267b = com.google.firebase.encoders.c.d("clientType");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20268c = com.google.firebase.encoders.c.d("androidClientInfo");

        private c() {
        }

        @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
        /* renamed from: b */
        public void a(ClientInfo clientInfo, com.google.firebase.encoders.e eVar) throws IOException {
            eVar.m(f20267b, clientInfo.c());
            eVar.m(f20268c, clientInfo.b());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes2.dex */
    private static final class d implements com.google.firebase.encoders.d<k> {

        /* renamed from: a  reason: collision with root package name */
        static final d f20269a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20270b = com.google.firebase.encoders.c.d("eventTimeMs");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20271c = com.google.firebase.encoders.c.d("eventCode");

        /* renamed from: d  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20272d = com.google.firebase.encoders.c.d("eventUptimeMs");

        /* renamed from: e  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20273e = com.google.firebase.encoders.c.d("sourceExtension");

        /* renamed from: f  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20274f = com.google.firebase.encoders.c.d("sourceExtensionJsonProto3");

        /* renamed from: g  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20275g = com.google.firebase.encoders.c.d("timezoneOffsetSeconds");

        /* renamed from: h  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20276h = com.google.firebase.encoders.c.d("networkConnectionInfo");

        private d() {
        }

        @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
        /* renamed from: b */
        public void a(k kVar, com.google.firebase.encoders.e eVar) throws IOException {
            eVar.c(f20270b, kVar.c());
            eVar.m(f20271c, kVar.b());
            eVar.c(f20272d, kVar.d());
            eVar.m(f20273e, kVar.f());
            eVar.m(f20274f, kVar.g());
            eVar.c(f20275g, kVar.h());
            eVar.m(f20276h, kVar.e());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes2.dex */
    private static final class e implements com.google.firebase.encoders.d<l> {

        /* renamed from: a  reason: collision with root package name */
        static final e f20277a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20278b = com.google.firebase.encoders.c.d("requestTimeMs");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20279c = com.google.firebase.encoders.c.d("requestUptimeMs");

        /* renamed from: d  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20280d = com.google.firebase.encoders.c.d("clientInfo");

        /* renamed from: e  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20281e = com.google.firebase.encoders.c.d("logSource");

        /* renamed from: f  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20282f = com.google.firebase.encoders.c.d("logSourceName");

        /* renamed from: g  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20283g = com.google.firebase.encoders.c.d("logEvent");

        /* renamed from: h  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20284h = com.google.firebase.encoders.c.d("qosTier");

        private e() {
        }

        @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
        /* renamed from: b */
        public void a(l lVar, com.google.firebase.encoders.e eVar) throws IOException {
            eVar.c(f20278b, lVar.g());
            eVar.c(f20279c, lVar.h());
            eVar.m(f20280d, lVar.b());
            eVar.m(f20281e, lVar.d());
            eVar.m(f20282f, lVar.e());
            eVar.m(f20283g, lVar.c());
            eVar.m(f20284h, lVar.f());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes2.dex */
    private static final class f implements com.google.firebase.encoders.d<NetworkConnectionInfo> {

        /* renamed from: a  reason: collision with root package name */
        static final f f20285a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20286b = com.google.firebase.encoders.c.d("networkType");

        /* renamed from: c  reason: collision with root package name */
        private static final com.google.firebase.encoders.c f20287c = com.google.firebase.encoders.c.d("mobileSubtype");

        private f() {
        }

        @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
        /* renamed from: b */
        public void a(NetworkConnectionInfo networkConnectionInfo, com.google.firebase.encoders.e eVar) throws IOException {
            eVar.m(f20286b, networkConnectionInfo.c());
            eVar.m(f20287c, networkConnectionInfo.b());
        }
    }

    private b() {
    }

    @Override // m3.a
    public void a(m3.b<?> bVar) {
        C0148b c0148b = C0148b.f20264a;
        bVar.b(j.class, c0148b);
        bVar.b(com.google.android.datatransport.cct.internal.d.class, c0148b);
        e eVar = e.f20277a;
        bVar.b(l.class, eVar);
        bVar.b(g.class, eVar);
        c cVar = c.f20266a;
        bVar.b(ClientInfo.class, cVar);
        bVar.b(com.google.android.datatransport.cct.internal.e.class, cVar);
        a aVar = a.f20251a;
        bVar.b(com.google.android.datatransport.cct.internal.a.class, aVar);
        bVar.b(com.google.android.datatransport.cct.internal.c.class, aVar);
        d dVar = d.f20269a;
        bVar.b(k.class, dVar);
        bVar.b(com.google.android.datatransport.cct.internal.f.class, dVar);
        f fVar = f.f20285a;
        bVar.b(NetworkConnectionInfo.class, fVar);
        bVar.b(i.class, fVar);
    }
}
