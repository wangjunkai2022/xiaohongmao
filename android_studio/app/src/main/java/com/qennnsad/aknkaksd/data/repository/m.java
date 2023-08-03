package com.qennnsad.aknkaksd.data.repository;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.HostBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.t0;
import io.sentry.protocol.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;

/* compiled from: SourceFactory.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001\"B)\b\u0001\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J$\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\t\u001a\u00020\u0006H\u0007J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0016¨\u0006#"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/m;", "", "", "path", "", "withUserInfo", "", "withHomeSegment", "l", "dohFlow", "Lcom/qennnsad/aknkaksd/data/repository/b;", "f", ContextChain.TAG_INFRA, "Landroid/net/Uri;", "j", "m", "k", "Lcom/qennnsad/aknkaksd/util/t0;", "b", "Lcom/qennnsad/aknkaksd/util/t0;", "networkUtility", "e", "Lcom/qennnsad/aknkaksd/data/repository/b;", v.b.f83881a, "sourceDoh", "Lg5/a;", "localDataManager", "Lg5/d;", "localIDManager", "Lc5/b;", "authenticator", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/util/t0;Lg5/d;Lc5/b;)V", "g", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m {
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public static final a f47763g = new a(null);
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private static String f47764h = "";
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private static String f47765i = "";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f47766a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final t0 f47767b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final g5.d f47768c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final c5.b f47769d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private b f47770e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private b f47771f;

    /* compiled from: SourceFactory.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0007R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/m$a;", "", "", "c", "", "MAIN_HOST_IMG_URL", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "d", "(Ljava/lang/String;)V", "MAIN_HOST_WEB_URL", "b", "e", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final String a() {
            return m.f47764h;
        }

        @m8.g
        public final String b() {
            return m.f47765i;
        }

        @JvmStatic
        public final void c() {
            d("");
            e("");
        }

        public final void d(@m8.g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            m.f47764h = str;
        }

        public final void e(@m8.g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            m.f47765i = str;
        }
    }

    @u7.a
    public m(@m8.g g5.a localDataManager, @m8.g t0 networkUtility, @m8.g g5.d localIDManager, @m8.g c5.b authenticator) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(networkUtility, "networkUtility");
        Intrinsics.checkNotNullParameter(localIDManager, "localIDManager");
        Intrinsics.checkNotNullParameter(authenticator, "authenticator");
        this.f47766a = localDataManager;
        this.f47767b = networkUtility;
        this.f47768c = localIDManager;
        this.f47769d = authenticator;
    }

    public static /* synthetic */ b g(m mVar, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return mVar.f(z9);
    }

    @JvmStatic
    public static final void h() {
        f47763g.c();
    }

    private final String l(String str, int i4, boolean z9) {
        boolean contains$default;
        boolean startsWith$default;
        if (str != null) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "http", false, 2, null);
            if (!startsWith$default) {
                if (TextUtils.isEmpty(com.qennnsad.aknkaksd.util.m.f54837g)) {
                    try {
                        ConfigBean e4 = this.f47766a.e();
                        Intrinsics.checkNotNull(e4);
                        HostBean host = e4.getHost();
                        Intrinsics.checkNotNull(host);
                        com.qennnsad.aknkaksd.util.m.f54837g = host.getWeb();
                    } catch (Exception unused) {
                        com.qennnsad.aknkaksd.util.m.f54837g = com.qennnsad.aknkaksd.util.m.f54837g;
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append(com.qennnsad.aknkaksd.util.m.f54837g);
                sb.append(z9 ? "/home" : "");
                sb.append(str);
                str = sb.toString();
            }
        }
        if (i4 == 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("uid=");
            UserBean C = this.f47766a.C();
            Intrinsics.checkNotNull(C);
            sb2.append(C.getId());
            sb2.append("&ver=1.13.0&lob=");
            UserBean C2 = this.f47766a.C();
            Intrinsics.checkNotNull(C2);
            sb2.append(C2.getLob_no());
            String sb3 = sb2.toString();
            Intrinsics.checkNotNull(str);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "?", false, 2, (Object) null);
            if (contains$default) {
                str = str + Typography.amp + sb3;
            } else {
                str = str + '?' + sb3;
            }
        }
        o0.g("image-wrapPath:", "---" + str + "---");
        return str;
    }

    @JvmOverloads
    @m8.g
    public final b e() {
        return g(this, false, 1, null);
    }

    @JvmOverloads
    @m8.g
    public final b f(boolean z9) {
        if (z9) {
            if (this.f47771f == null) {
                synchronized (m.class) {
                    if (this.f47771f == null) {
                        this.f47771f = new k(this.f47766a, this.f47769d, this.f47767b, this.f47768c, z9);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            b bVar = this.f47771f;
            Intrinsics.checkNotNull(bVar);
            return bVar;
        }
        if (this.f47770e == null) {
            synchronized (m.class) {
                if (this.f47770e == null) {
                    this.f47770e = new k(this.f47766a, this.f47769d, this.f47767b, this.f47768c, z9);
                }
                Unit unit2 = Unit.INSTANCE;
            }
        }
        b bVar2 = this.f47770e;
        Intrinsics.checkNotNull(bVar2);
        return bVar2;
    }

    @m8.h
    public final String i(@m8.h String str) {
        boolean startsWith$default;
        String MAIN_HOST_IMG_URL;
        HostBean host;
        if (str != null) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "http", false, 2, null);
            if (!startsWith$default) {
                if (TextUtils.isEmpty(f47764h)) {
                    ConfigBean e4 = this.f47766a.e();
                    if (e4 == null || (host = e4.getHost()) == null || (MAIN_HOST_IMG_URL = host.getStatic()) == null) {
                        MAIN_HOST_IMG_URL = com.qennnsad.aknkaksd.util.m.f54836f;
                        Intrinsics.checkNotNullExpressionValue(MAIN_HOST_IMG_URL, "MAIN_HOST_IMG_URL");
                    }
                    f47764h = MAIN_HOST_IMG_URL;
                }
                str = f47764h + str;
            }
        }
        SDKManager.f41970a.x(f47764h);
        o0.g("image-wrapPath:", "---" + str);
        return str;
    }

    @m8.h
    public final Uri j(@m8.g String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            return Uri.parse(i(path));
        } catch (Exception unused) {
            o0.c("huan", "path:" + path + "-wrapPath(path):" + i(path));
            return null;
        }
    }

    @m8.h
    public final String k(@m8.h String str, int i4) {
        boolean contains$default;
        boolean startsWith$default;
        String MAIN_HOST_WEB_URL;
        HostBean host;
        if (str != null) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "http", false, 2, null);
            if (!startsWith$default) {
                if (TextUtils.isEmpty(f47765i)) {
                    ConfigBean e4 = this.f47766a.e();
                    if (e4 == null || (host = e4.getHost()) == null || (MAIN_HOST_WEB_URL = host.getWeb()) == null) {
                        MAIN_HOST_WEB_URL = com.qennnsad.aknkaksd.util.m.f54837g;
                        Intrinsics.checkNotNullExpressionValue(MAIN_HOST_WEB_URL, "MAIN_HOST_WEB_URL");
                    }
                    f47765i = MAIN_HOST_WEB_URL;
                }
                str = f47765i + "/home" + str;
            }
        }
        if (i4 == 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("uid=");
            UserBean C = this.f47766a.C();
            Intrinsics.checkNotNull(C);
            sb.append(C.getId());
            sb.append("&ver=1.13.0&lob=");
            UserBean C2 = this.f47766a.C();
            Intrinsics.checkNotNull(C2);
            sb.append(C2.getLob_no());
            String sb2 = sb.toString();
            Intrinsics.checkNotNull(str);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "?", false, 2, (Object) null);
            if (contains$default) {
                str = str + Typography.amp + sb2;
            } else {
                str = str + '?' + sb2;
            }
        }
        o0.g("image-wrapPath:", "---" + str + "---");
        return str;
    }

    @m8.h
    public final String m(@m8.h String str, int i4) {
        return l(str, i4, true);
    }
}
