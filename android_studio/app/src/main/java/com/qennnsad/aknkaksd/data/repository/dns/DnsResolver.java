package com.qennnsad.aknkaksd.data.repository.dns;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.lifecycle.MutableLiveData;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.ConfigDnsBean;
import com.qennnsad.aknkaksd.data.bean.HostBean;
import com.qennnsad.aknkaksd.data.repository.RetrofitApi;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.t0;
import io.reactivex.e0;
import io.reactivex.z;
import io.sentry.protocol.j;
import io.sentry.protocol.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import me.jessyan.retrofiturlmanager.RetrofitUrlManager;
import n7.o;
import org.minidns.hla.d;
import org.minidns.record.u;
import retrofit2.Response;

/* compiled from: DnsResolver.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b*\u00016\b\u0007\u0018\u0000 >2\u00020\u0001:\u0004\"?@AB)\b\u0007\u0012\u0006\u0010$\u001a\u00020!\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010;\u001a\u00020:\u0012\u0006\u0010,\u001a\u00020)¢\u0006\u0004\b<\u0010=J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\u000f\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000e0\b2\u0006\u0010\r\u001a\u00020\fH\u0002J\f\u0010\u0011\u001a\u00020\u0006*\u00020\u0010H\u0002J\f\u0010\u0013\u001a\u00020\u0006*\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R(\u00105\u001a\b\u0012\u0004\u0012\u00020.0-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u0006B"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;", "", "", "isOverseas", "", "r", "Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;", "bean", "Lio/reactivex/z;", "Lretrofit2/Response;", "", "n", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;", "srvHost", "", "z", "Lorg/minidns/hla/d$b;", "C", "Lorg/minidns/record/u;", "D", TypedValues.Attributes.S_TARGET, "", "port", "B", "k", y.b.f83919g, "v", "w", "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "data", "m", "q", "l", "Lcom/qennnsad/aknkaksd/util/t0;", "a", "Lcom/qennnsad/aknkaksd/util/t0;", "networkUtility", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/data/repository/dns/h;", "d", "Lcom/qennnsad/aknkaksd/data/repository/dns/h;", "overseasDetector", "Landroidx/lifecycle/MutableLiveData;", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;", "e", "Landroidx/lifecycle/MutableLiveData;", "j", "()Landroidx/lifecycle/MutableLiveData;", y.b.f83920h, "(Landroidx/lifecycle/MutableLiveData;)V", "resultListener", "com/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c", "f", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;", "pingObserver", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/dns/h;)V", "g", "DnsResolutionResult", "ForcedDnsResolutionHost", "ForcedServerType", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class DnsResolver {
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public static final a f47701g = new a(null);
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private static final String f47702h = "DnsResolver";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final t0 f47703a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m f47704b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final g5.a f47705c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private h f47706d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private MutableLiveData<DnsResolutionResult> f47707e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final c f47708f;

    /* compiled from: DnsResolver.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;", "", "(Ljava/lang/String;I)V", "Ok", "Error", "Progress", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum DnsResolutionResult {
        Ok,
        Error,
        Progress
    }

    /* compiled from: DnsResolver.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;", "", "", "a", "Ljava/lang/String;", "getHostName", "()Ljava/lang/String;", "hostName", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "PROD", "DEBUG", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public enum ForcedDnsResolutionHost {
        PROD(com.qennnsad.aknkaksd.e.f48525q),
        DEBUG(com.qennnsad.aknkaksd.e.f48526r);
        
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f47711a;

        ForcedDnsResolutionHost(String str) {
            this.f47711a = str;
        }

        @m8.g
        public final String getHostName() {
            return this.f47711a;
        }
    }

    /* compiled from: DnsResolver.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;", "", "(Ljava/lang/String;I)V", "NONE", "TEST", "IN_CHINA", "OUT_OF_CHINA", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum ForcedServerType {
        NONE,
        TEST,
        IN_CHINA,
        OUT_OF_CHINA
    }

    /* compiled from: DnsResolver.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: DnsResolver.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ForcedServerType.values().length];
            iArr[ForcedServerType.TEST.ordinal()] = 1;
            iArr[ForcedServerType.IN_CHINA.ordinal()] = 2;
            iArr[ForcedServerType.OUT_OF_CHINA.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: DnsResolver.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0007\u001a\u00020\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u0016\u0010\b\u001a\u00020\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"com/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", "", "onComplete", j.f83728f, "d", "f", "", "e", "Z", "success", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<String>> {

        /* renamed from: e  reason: collision with root package name */
        private boolean f47713e;

        c() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        protected void d(@m8.g BaseResponse<String> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.d(response);
            o0.g(DnsResolver.f47702h, "ping--Failure");
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.g BaseResponse<String> response) {
            boolean contains$default;
            Intrinsics.checkNotNullParameter(response, "response");
            o0.g(DnsResolver.f47702h, "ping--onNext:" + response);
            String msg = response.getMsg();
            Intrinsics.checkNotNullExpressionValue(msg, "response.msg");
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) msg, (CharSequence) "ok", false, 2, (Object) null);
            if (contains$default) {
                this.f47713e = true;
                o0.g(DnsResolver.f47702h, "Ping--OK");
                DnsResolver.this.x();
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onComplete() {
            super.onComplete();
            o0.g(DnsResolver.f47702h, "ping--onCompleted. Composite success: " + this.f47713e);
            if (this.f47713e) {
                return;
            }
            DnsResolver.this.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DnsResolver.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<Boolean, Unit> {
        d() {
            super(1);
        }

        public final void a(boolean z9) {
            DnsResolver.this.r(z9);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public DnsResolver(@m8.g t0 networkUtility, @m8.g m sourceFactory, @m8.g g5.a localDataManager, @m8.g h overseasDetector) {
        Intrinsics.checkNotNullParameter(networkUtility, "networkUtility");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(overseasDetector, "overseasDetector");
        this.f47703a = networkUtility;
        this.f47704b = sourceFactory;
        this.f47705c = localDataManager;
        this.f47706d = overseasDetector;
        this.f47707e = new MutableLiveData<>();
        this.f47708f = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List A(ForcedDnsResolutionHost srvHost, DnsResolver this$0) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(srvHost, "$srvHost");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            o0.a(f47702h, "Lookup against --> " + srvHost.getHostName());
            org.minidns.hla.d e4 = org.minidns.hla.b.f92837b.e(srvHost.getHostName());
            if (e4.m()) {
                o0.a(f47702h, "All raw answers <-- " + e4.b());
                Set<u> b10 = e4.b();
                Intrinsics.checkNotNullExpressionValue(b10, "it.answersOrEmptySet");
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(b10, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (u a10 : b10) {
                    Intrinsics.checkNotNullExpressionValue(a10, "a");
                    arrayList.add(this$0.D(a10));
                }
                return arrayList;
            }
            throw new IOException();
        } catch (IOException e10) {
            o0.d(f47702h, "DNS lookup error", e10);
            com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().b(e10);
            this$0.k();
            return null;
        }
    }

    private final ConfigDnsBean B(String str, int i4) {
        ConfigDnsBean g4 = this.f47705c.g();
        String host = g4.getHost();
        o0.g(f47702h, "DoH HOST:" + str);
        o0.g(f47702h, "DoH PORT:" + i4);
        g4.setHost(str);
        if (this.f47703a.o(str)) {
            g4.setIp(str);
        }
        g4.setPort(Integer.valueOf(i4));
        o0.g(f47702h, "Process Next DoH answer: " + host + " --> " + g4.getHost());
        return g4;
    }

    private final ConfigDnsBean C(d.b bVar) {
        String dnsName = bVar.f92852b.f92995f.toString();
        Intrinsics.checkNotNullExpressionValue(dnsName, "srv.target.toString()");
        return B(dnsName, bVar.f92852b.f92994e);
    }

    private final ConfigDnsBean D(u uVar) {
        String dnsName = uVar.f92995f.toString();
        Intrinsics.checkNotNullExpressionValue(dnsName, "this.target.toString()");
        return B(dnsName, uVar.f92994e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        o0.n("Splash", "set error");
        this.f47705c.a0(null);
        v();
    }

    private final void m(ConfigBean configBean) {
        boolean startsWith$default;
        String web = this.f47705c.g().getHost();
        Intrinsics.checkNotNullExpressionValue(web, "web");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(web, "http", false, 2, null);
        if (!startsWith$default) {
            web = c5.j.f4022b + web;
        }
        HostBean host = configBean.getHost();
        if (host == null) {
            return;
        }
        host.setWeb(web);
    }

    private final z<Response<String>> n(final ConfigDnsBean configDnsBean) {
        final String hostWithProtocol = configDnsBean.getHostWithProtocol(true);
        z<Response<String>> onErrorResumeNext = m.g(this.f47704b, false, 1, null).ping(hostWithProtocol).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.data.repository.dns.b
            @Override // n7.g
            public final void accept(Object obj) {
                DnsResolver.o(DnsResolver.this, configDnsBean, hostWithProtocol, (Response) obj);
            }
        }).onErrorResumeNext(com.qennnsad.aknkaksd.data.repository.dns.d.f47722a);
        Intrinsics.checkNotNullExpressionValue(onErrorResumeNext, "sourceFactory.create()\n …le.empty()\n            })");
        return onErrorResumeNext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(DnsResolver this$0, ConfigDnsBean bean, String str, Response response) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(bean, "$bean");
        this$0.f47705c.a0(bean);
        RetrofitUrlManager.getInstance().putDomain(RetrofitApi.f47692a, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final z p(Throwable e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        o0.g(f47702h, "Ping iterable onError:" + e4);
        com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().b(e4);
        return z.empty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(boolean z9) {
        z<Response<String>> subscribeOn;
        ConfigDnsBean g4 = this.f47705c.g();
        int i4 = b.$EnumSwitchMapping$0[this.f47705c.i().ordinal()];
        String str = t0.f55039d;
        if (i4 != 1) {
            if (i4 == 2) {
                o0.a(f47702h, "Forced Chinese Network, proceed with DOH SRV");
            } else if (i4 == 3) {
                o0.a(f47702h, "Forced out of china network, setting hardcoded api domain: https://api.moonscap.com");
            } else if (z9) {
                o0.a(f47702h, "Not a Chinese Network, setting hardcoded api domain: https://api.moonscap.com");
            } else {
                o0.a(f47702h, "It's likely a Chinese Network, proceed with DOH SRV");
            }
            str = null;
        } else {
            str = this.f47703a.b();
            if (str != null) {
                o0.a(f47702h, "Dev Server, setting hardcoded api domain: " + str);
            }
            str = null;
        }
        g4.setHost(str);
        w();
        if (g4.getHost() == null) {
            subscribeOn = z(this.f47705c.j()).flatMapIterable(e.f47723a).flatMap(new o() { // from class: com.qennnsad.aknkaksd.data.repository.dns.c
                @Override // n7.o
                public final Object apply(Object obj) {
                    e0 t9;
                    t9 = DnsResolver.t(DnsResolver.this, (ConfigDnsBean) obj);
                    return t9;
                }
            }).takeUntil(f.f47724a);
        } else {
            subscribeOn = n(g4).subscribeOn(io.reactivex.schedulers.b.d());
        }
        subscribeOn.observeOn(io.reactivex.android.schedulers.a.c()).subscribe(this.f47708f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Iterable s(List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e0 t(DnsResolver this$0, ConfigDnsBean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        return this$0.n(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean u(Response it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.isSuccessful();
    }

    private final void v() {
        this.f47707e.postValue(DnsResolutionResult.Error);
    }

    private final void w() {
        this.f47707e.postValue(DnsResolutionResult.Progress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        this.f47707e.postValue(DnsResolutionResult.Ok);
    }

    private final z<List<ConfigDnsBean>> z(final ForcedDnsResolutionHost forcedDnsResolutionHost) {
        e9.a.d(BaseBeautyApplication.Companion.a());
        z<List<ConfigDnsBean>> subscribeOn = z.fromCallable(new Callable() { // from class: com.qennnsad.aknkaksd.data.repository.dns.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List A;
                A = DnsResolver.A(DnsResolver.ForcedDnsResolutionHost.this, this);
                return A;
            }
        }).subscribeOn(io.reactivex.schedulers.b.d());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "fromCallable {\n         …scribeOn(Schedulers.io())");
        return subscribeOn;
    }

    @m8.g
    public final MutableLiveData<DnsResolutionResult> j() {
        return this.f47707e;
    }

    @m8.g
    public final ConfigBean l(@m8.g ConfigBean data) {
        HostBean host;
        Intrinsics.checkNotNullParameter(data, "data");
        boolean h4 = h.h(this.f47706d, null, 1, null);
        String b10 = this.f47703a.b();
        if (!TextUtils.isEmpty(b10)) {
            HostBean host2 = data.getHost();
            if (host2 != null) {
                host2.setApi(b10);
                host2.setStatic(this.f47703a.d());
                host2.setWeb(this.f47703a.e());
                host2.setWebsocket(this.f47703a.c());
            }
        } else if (h4 && (host = data.getHost()) != null) {
            host.setApi(t0.f55039d);
            host.setStatic(t0.f55040e);
            host.setWeb(t0.f55039d);
            host.setWebsocket(t0.f55039d);
        }
        return data;
    }

    public final void q() {
        o0.a(f47702h, "Resolving DNS...");
        this.f47706d.g(new d());
    }

    public final void y(@m8.g MutableLiveData<DnsResolutionResult> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.f47707e = mutableLiveData;
    }
}
