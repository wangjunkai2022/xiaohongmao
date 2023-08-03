package com.qennnsad.aknkaksd.domain.usecase.app;

import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: SyncConfigUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/app/s;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;", "c", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;", "dnsResolver", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "d", "Lcom/qennnsad/aknkaksd/domain/base/d;", "h", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class s extends com.qennnsad.aknkaksd.domain.base.h<Unit, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48039a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48040b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final DnsResolver f48041c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<ConfigBean> f48042d;

    @u7.a
    public s(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g DnsResolver dnsResolver) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(dnsResolver, "dnsResolver");
        this.f48039a = localDataManager;
        this.f48040b = sourceFactory;
        this.f48041c = dnsResolver;
        this.f48042d = new com.qennnsad.aknkaksd.domain.base.d<>(ConfigBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(s this$0, ConfigBean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        ConfigBean l10 = this$0.f48041c.l(it);
        this$0.f48039a.X(l10);
        com.qennnsad.aknkaksd.util.m.a(this$0.f48039a.g(), l10);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ ConfigBean g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (ConfigBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public z<Unit> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> appConfig = com.qennnsad.aknkaksd.data.repository.m.g(this.f48040b, false, 1, null).getAppConfig();
        final com.qennnsad.aknkaksd.domain.base.d<ConfigBean> dVar = this.f48042d;
        z<Unit> map = appConfig.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.q
            @Override // n7.o
            public final Object apply(Object obj) {
                ConfigBean g4;
                g4 = s.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.r
            @Override // n7.o
            public final Object apply(Object obj) {
                Unit f10;
                f10 = s.f(s.this, (ConfigBean) obj);
                return f10;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().a…dForOutOfChina)\n        }");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<ConfigBean> h() {
        return this.f48042d;
    }
}
