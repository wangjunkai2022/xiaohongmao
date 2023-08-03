package com.qennnsad.aknkaksd.domain.usecase.app;

import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.util.t0;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: RequestAppConfigUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B1\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0014¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0015R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/app/g;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;", "c", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;", "dnsResolver", "Lcom/qennnsad/aknkaksd/util/t0;", "d", "Lcom/qennnsad/aknkaksd/util/t0;", "networkUtility", "Lcom/qennnsad/aknkaksd/data/repository/dns/h;", "Lcom/qennnsad/aknkaksd/data/repository/dns/h;", "overseasDetector", "Lcom/qennnsad/aknkaksd/domain/base/d;", "f", "Lcom/qennnsad/aknkaksd/domain/base/d;", "h", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/repository/dns/h;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g extends com.qennnsad.aknkaksd.domain.base.h<Unit, ConfigBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48012a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48013b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final DnsResolver f48014c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final t0 f48015d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.dns.h f48016e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<ConfigBean> f48017f;

    @u7.a
    public g(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager, @m8.g DnsResolver dnsResolver, @m8.g t0 networkUtility, @m8.g com.qennnsad.aknkaksd.data.repository.dns.h overseasDetector) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(dnsResolver, "dnsResolver");
        Intrinsics.checkNotNullParameter(networkUtility, "networkUtility");
        Intrinsics.checkNotNullParameter(overseasDetector, "overseasDetector");
        this.f48012a = sourceFactory;
        this.f48013b = localDataManager;
        this.f48014c = dnsResolver;
        this.f48015d = networkUtility;
        this.f48016e = overseasDetector;
        this.f48017f = new com.qennnsad.aknkaksd.domain.base.d<>(ConfigBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x003d, code lost:
        if ((r2.length() == 0) != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void f(com.qennnsad.aknkaksd.domain.usecase.app.g r5, com.qennnsad.aknkaksd.data.bean.ConfigBean r6) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            com.qennnsad.aknkaksd.data.repository.m$a r0 = com.qennnsad.aknkaksd.data.repository.m.f47763g
            r0.c()
            g5.a r0 = r5.f48013b
            com.qennnsad.aknkaksd.data.repository.dns.DnsResolver r1 = r5.f48014c
            java.lang.String r2 = "it"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r2)
            com.qennnsad.aknkaksd.data.bean.ConfigBean r1 = r1.l(r6)
            r0.X(r1)
            g5.a r0 = r5.f48013b
            com.qennnsad.aknkaksd.data.bean.ConfigDnsBean r0 = r0.g()
            r6.getHost()
            com.qennnsad.aknkaksd.data.bean.HostBean r1 = r6.getHost()
            if (r1 == 0) goto L6e
            java.lang.String r2 = r1.getApi()
            java.lang.String r1 = r1.getWeb()
            r3 = 1
            if (r2 == 0) goto L3f
            int r4 = r2.length()
            if (r4 != 0) goto L3c
            r4 = 1
            goto L3d
        L3c:
            r4 = 0
        L3d:
            if (r4 == 0) goto L40
        L3f:
            r2 = r1
        L40:
            android.net.Uri r1 = android.net.Uri.parse(r2)
            java.lang.String r1 = r1.getAuthority()
            com.qennnsad.aknkaksd.data.repository.dns.h r2 = r5.f48016e
            r4 = 0
            boolean r2 = com.qennnsad.aknkaksd.data.repository.dns.h.h(r2, r4, r3, r4)
            if (r2 != 0) goto L5d
            com.qennnsad.aknkaksd.util.t0 r2 = r5.f48015d
            java.lang.String r2 = r2.b()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L6e
        L5d:
            r0.setHost(r1)
            com.qennnsad.aknkaksd.util.t0 r2 = r5.f48015d
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            boolean r2 = r2.o(r1)
            if (r2 == 0) goto L6e
            r0.setIp(r1)
        L6e:
            com.qennnsad.aknkaksd.data.bean.CustomerServiceBean r6 = r6.getCustomerService()
            if (r6 == 0) goto L85
            java.lang.String r1 = r6.getContactUrl()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L85
            java.lang.String r6 = r6.getContactUrl()
            r0.setContactUs(r6)
        L85:
            g5.a r5 = r5.f48013b
            r5.a0(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.domain.usecase.app.g.f(com.qennnsad.aknkaksd.domain.usecase.app.g, com.qennnsad.aknkaksd.data.bean.ConfigBean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ ConfigBean g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (ConfigBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public z<ConfigBean> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> appConfig = com.qennnsad.aknkaksd.data.repository.m.g(this.f48012a, false, 1, null).getAppConfig();
        final com.qennnsad.aknkaksd.domain.base.d<ConfigBean> dVar = this.f48017f;
        z<ConfigBean> doOnNext = appConfig.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.f
            @Override // n7.o
            public final Object apply(Object obj) {
                ConfigBean g4;
                g4 = g.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.e
            @Override // n7.g
            public final void accept(Object obj) {
                g.f(g.this, (ConfigBean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().a…(cachedDnsBean)\n        }");
        return doOnNext;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<ConfigBean> h() {
        return this.f48017f;
    }
}
