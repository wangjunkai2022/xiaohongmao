package f5;

import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.t0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DiHelper.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001BQ\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b/\u00100R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0017\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u001c\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010!\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010&\u001a\u00020%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010+\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u00061"}, d2 = {"Lf5/e;", "", "Lg5/a;", "localDataManager", "Lg5/a;", "c", "()Lg5/a;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/data/repository/m;", "g", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "Lx4/a;", "analytics", "Lx4/a;", "a", "()Lx4/a;", "Lcom/qennnsad/aknkaksd/util/t0;", "networkUtility", "Lcom/qennnsad/aknkaksd/util/t0;", "e", "()Lcom/qennnsad/aknkaksd/util/t0;", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lcom/qennnsad/aknkaksd/data/websocket/j;", ContextChain.TAG_INFRA, "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "Lcom/qennnsad/aknkaksd/data/repository/dns/h;", "overseasDetector", "Lcom/qennnsad/aknkaksd/data/repository/dns/h;", "f", "()Lcom/qennnsad/aknkaksd/data/repository/dns/h;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;", "msgUtils", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;", "d", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;", "Lcom/qennnsad/aknkaksd/util/translation/h;", "translatorRapid", "Lcom/qennnsad/aknkaksd/util/translation/h;", "h", "()Lcom/qennnsad/aknkaksd/util/translation/h;", "Lc5/b;", "authenticator", "Lc5/b;", "b", "()Lc5/b;", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;Lcom/qennnsad/aknkaksd/util/translation/h;Lc5/b;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f65900a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m f65901b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final x4.a f65902c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final t0 f65903d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f65904e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.dns.h f65905f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c f65906g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.util.translation.h f65907h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final c5.b f65908i;

    @u7.a
    public e(@m8.g g5.a localDataManager, @m8.g m sourceFactory, @m8.g x4.a analytics, @m8.g t0 networkUtility, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool, @m8.g com.qennnsad.aknkaksd.data.repository.dns.h overseasDetector, @m8.g com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c msgUtils, @m8.g com.qennnsad.aknkaksd.util.translation.h translatorRapid, @m8.g c5.b authenticator) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(networkUtility, "networkUtility");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        Intrinsics.checkNotNullParameter(overseasDetector, "overseasDetector");
        Intrinsics.checkNotNullParameter(msgUtils, "msgUtils");
        Intrinsics.checkNotNullParameter(translatorRapid, "translatorRapid");
        Intrinsics.checkNotNullParameter(authenticator, "authenticator");
        this.f65900a = localDataManager;
        this.f65901b = sourceFactory;
        this.f65902c = analytics;
        this.f65903d = networkUtility;
        this.f65904e = wsObjectPool;
        this.f65905f = overseasDetector;
        this.f65906g = msgUtils;
        this.f65907h = translatorRapid;
        this.f65908i = authenticator;
    }

    @m8.g
    public final x4.a a() {
        return this.f65902c;
    }

    @m8.g
    public final c5.b b() {
        return this.f65908i;
    }

    @m8.g
    public final g5.a c() {
        return this.f65900a;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c d() {
        return this.f65906g;
    }

    @m8.g
    public final t0 e() {
        return this.f65903d;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.dns.h f() {
        return this.f65905f;
    }

    @m8.g
    public final m g() {
        return this.f65901b;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.util.translation.h h() {
        return this.f65907h;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.websocket.j i() {
        return this.f65904e;
    }
}
