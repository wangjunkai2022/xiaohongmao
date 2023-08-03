package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.user.LoginInfoAll;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.domain.usecase.auth.d.c;
import com.qennnsad.aknkaksd.util.JwtUtil;
import io.sentry.protocol.w;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import retrofit2.Response;

/* compiled from: AbstractLoginUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003:\u0003/0\rB/\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b-\u0010.J\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0005\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00062\u0006\u0010\u0005\u001a\u00028\u0000H&¢\u0006\u0004\b\u000b\u0010\bR\u001a\u0010\u0011\u001a\u00020\f8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u00128\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R!\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001f\u001a\u00020\u001e8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001a\u0010$\u001a\u00020#8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001a\u0010)\u001a\u00020(8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,¨\u00061"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;", "Params", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "params", "Lio/reactivex/z;", "f", "(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;)Lio/reactivex/z;", "Lretrofit2/Response;", "", "p", "Lcom/qennnsad/aknkaksd/util/JwtUtil;", "c", "Lcom/qennnsad/aknkaksd/util/JwtUtil;", "k", "()Lcom/qennnsad/aknkaksd/util/JwtUtil;", "jwtUtil", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "e", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "o", "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;", "Lkotlin/Lazy;", "n", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "Lg5/a;", "l", "()Lg5/a;", "Lg5/f;", "loginManager", "Lg5/f;", "m", "()Lg5/f;", "Lx4/a;", "analytics", "Lx4/a;", "j", "()Lx4/a;", "<init>", "(Lg5/a;Lg5/f;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "a", "b", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class d<Params extends c> extends com.qennnsad.aknkaksd.domain.base.h<Params, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48061a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.f f48062b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final JwtUtil f48063c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final x4.a f48064d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f48065e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f48066f;

    /* compiled from: AbstractLoginUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÂ\u0003J\u0015\u0010\u0005\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0002HÖ\u0003R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;", "", "a", "p", "b", "", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/Object;", "<init>", "(Ljava/lang/Object;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends c {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private final Object f48067a;

        public a() {
            this(null, 1, null);
        }

        public a(@m8.h Object obj) {
            super(null);
            this.f48067a = obj;
        }

        private final Object a() {
            return this.f48067a;
        }

        public static /* synthetic */ a c(a aVar, Object obj, int i4, Object obj2) {
            if ((i4 & 1) != 0) {
                obj = aVar.f48067a;
            }
            return aVar.b(obj);
        }

        @m8.g
        public final a b(@m8.h Object obj) {
            return new a(obj);
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.areEqual(this.f48067a, ((a) obj).f48067a);
        }

        public int hashCode() {
            Object obj = this.f48067a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @m8.g
        public String toString() {
            return "EmptyParams(p=" + this.f48067a + ')';
        }

        public /* synthetic */ a(Object obj, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? null : obj);
        }
    }

    /* compiled from: AbstractLoginUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001f\u0010 J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0003J=\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0016\u001a\u0004\b\u0019\u0010\u0018R\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$b;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;", "Lh5/a;", "a", "", "b", "c", "d", "e", "captcha", w.b.f83891c, "countryCode", "password", "smsCode", "f", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "l", "()Ljava/lang/String;", ContextChain.TAG_INFRA, "j", "k", "Lh5/a;", "h", "()Lh5/a;", "<init>", "(Lh5/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends c {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final h5.a f48068a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f48069b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final String f48070c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final String f48071d;
        @m8.h

        /* renamed from: e  reason: collision with root package name */
        private final String f48072e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@m8.g h5.a captcha, @m8.g String username, @m8.g String countryCode, @m8.g String password, @m8.h String str) {
            super(null);
            Intrinsics.checkNotNullParameter(captcha, "captcha");
            Intrinsics.checkNotNullParameter(username, "username");
            Intrinsics.checkNotNullParameter(countryCode, "countryCode");
            Intrinsics.checkNotNullParameter(password, "password");
            this.f48068a = captcha;
            this.f48069b = username;
            this.f48070c = countryCode;
            this.f48071d = password;
            this.f48072e = str;
        }

        public static /* synthetic */ b g(b bVar, h5.a aVar, String str, String str2, String str3, String str4, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                aVar = bVar.f48068a;
            }
            if ((i4 & 2) != 0) {
                str = bVar.f48069b;
            }
            String str5 = str;
            if ((i4 & 4) != 0) {
                str2 = bVar.f48070c;
            }
            String str6 = str2;
            if ((i4 & 8) != 0) {
                str3 = bVar.f48071d;
            }
            String str7 = str3;
            if ((i4 & 16) != 0) {
                str4 = bVar.f48072e;
            }
            return bVar.f(aVar, str5, str6, str7, str4);
        }

        @m8.g
        public final h5.a a() {
            return this.f48068a;
        }

        @m8.g
        public final String b() {
            return this.f48069b;
        }

        @m8.g
        public final String c() {
            return this.f48070c;
        }

        @m8.g
        public final String d() {
            return this.f48071d;
        }

        @m8.h
        public final String e() {
            return this.f48072e;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                return Intrinsics.areEqual(this.f48068a, bVar.f48068a) && Intrinsics.areEqual(this.f48069b, bVar.f48069b) && Intrinsics.areEqual(this.f48070c, bVar.f48070c) && Intrinsics.areEqual(this.f48071d, bVar.f48071d) && Intrinsics.areEqual(this.f48072e, bVar.f48072e);
            }
            return false;
        }

        @m8.g
        public final b f(@m8.g h5.a captcha, @m8.g String username, @m8.g String countryCode, @m8.g String password, @m8.h String str) {
            Intrinsics.checkNotNullParameter(captcha, "captcha");
            Intrinsics.checkNotNullParameter(username, "username");
            Intrinsics.checkNotNullParameter(countryCode, "countryCode");
            Intrinsics.checkNotNullParameter(password, "password");
            return new b(captcha, username, countryCode, password, str);
        }

        @m8.g
        public final h5.a h() {
            return this.f48068a;
        }

        public int hashCode() {
            int hashCode = ((((((this.f48068a.hashCode() * 31) + this.f48069b.hashCode()) * 31) + this.f48070c.hashCode()) * 31) + this.f48071d.hashCode()) * 31;
            String str = this.f48072e;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        @m8.g
        public final String i() {
            return this.f48070c;
        }

        @m8.g
        public final String j() {
            return this.f48071d;
        }

        @m8.h
        public final String k() {
            return this.f48072e;
        }

        @m8.g
        public final String l() {
            return this.f48069b;
        }

        @m8.g
        public String toString() {
            return "LoginParams(captcha=" + this.f48068a + ", username=" + this.f48069b + ", countryCode=" + this.f48070c + ", password=" + this.f48071d + ", smsCode=" + this.f48072e + ')';
        }
    }

    /* compiled from: AbstractLoginUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;", "", "<init>", "()V", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$b;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static abstract class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: AbstractLoginUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;", "Params", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;", "a", "()Lcom/qennnsad/aknkaksd/domain/base/d;"}, k = 3, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.domain.usecase.auth.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0405d extends Lambda implements Function0<com.qennnsad.aknkaksd.domain.base.d<LoginInfoAll>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d<Params> f48073a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0405d(d<Params> dVar) {
            super(0);
            this.f48073a = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final com.qennnsad.aknkaksd.domain.base.d<LoginInfoAll> invoke() {
            return new com.qennnsad.aknkaksd.domain.base.d<>(LoginInfoAll.class, this.f48073a.l());
        }
    }

    public d(@m8.g g5.a localDataManager, @m8.g g5.f loginManager, @m8.g JwtUtil jwtUtil, @m8.g x4.a analytics, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(loginManager, "loginManager");
        Intrinsics.checkNotNullParameter(jwtUtil, "jwtUtil");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        this.f48061a = localDataManager;
        this.f48062b = loginManager;
        this.f48063c = jwtUtil;
        this.f48064d = analytics;
        this.f48065e = wsObjectPool;
        lazy = LazyKt__LazyJVMKt.lazy(new C0405d(this));
        this.f48066f = lazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(d this$0, LoginInfoAll it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        g5.a l10 = this$0.l();
        String jwtToken = it.getJwtToken();
        Intrinsics.checkNotNullExpressionValue(jwtToken, "it.jwtToken");
        l10.h0(jwtToken);
        g5.a l11 = this$0.l();
        UserBean user = it.getUser();
        Intrinsics.checkNotNullExpressionValue(user, "it.user");
        l11.T(user);
        this$0.l().g0(it.getImRole());
        com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().a(it.getUser().getId());
        this$0.j().i();
        this$0.j().j(it.getUser().getId(), it.getUser().getNickname());
        this$0.j().d(this$0 instanceof v ? EventSignature.APP_GUEST_LOGIN : EventSignature.APP_LOGIN, new String[0]);
        com.qennnsad.aknkaksd.data.websocket.j o9 = this$0.o();
        UserBean user2 = it.getUser();
        Intrinsics.checkNotNullExpressionValue(user2, "it.user");
        com.qennnsad.aknkaksd.data.websocket.j.d(o9, user2, it.getJwtToken(), null, 4, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(d this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (th != null) {
            th.printStackTrace();
        }
        this$0.j().c(EventSignature.APP_LOGIN, false, new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ LoginInfoAll i(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (LoginInfoAll) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    private final com.qennnsad.aknkaksd.domain.base.d<LoginInfoAll> n() {
        return (com.qennnsad.aknkaksd.domain.base.d) this.f48066f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: f */
    public io.reactivex.z<Unit> a(@m8.g Params params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> p9 = p(params);
        final com.qennnsad.aknkaksd.domain.base.d<LoginInfoAll> n9 = n();
        io.reactivex.z<Unit> doOnError = p9.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.b
            @Override // n7.o
            public final Object apply(Object obj) {
                LoginInfoAll i4;
                i4 = d.i(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return i4;
            }
        }).map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.c
            @Override // n7.o
            public final Object apply(Object obj) {
                Unit g4;
                g4 = d.g(d.this, (LoginInfoAll) obj);
                return g4;
            }
        }).doOnError(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.a
            @Override // n7.g
            public final void accept(Object obj) {
                d.h(d.this, (Throwable) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "requestEndpoint(params)\n…GIN, false)\n            }");
        return doOnError;
    }

    @m8.g
    protected x4.a j() {
        return this.f48064d;
    }

    @m8.g
    protected JwtUtil k() {
        return this.f48063c;
    }

    @m8.g
    protected g5.a l() {
        return this.f48061a;
    }

    @m8.g
    protected g5.f m() {
        return this.f48062b;
    }

    @m8.g
    protected com.qennnsad.aknkaksd.data.websocket.j o() {
        return this.f48065e;
    }

    @m8.g
    public abstract io.reactivex.z<Response<String>> p(@m8.g Params params);
}
