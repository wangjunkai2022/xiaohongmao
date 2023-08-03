package g5;

import com.google.gson.Gson;
import com.qennnsad.aknkaksd.data.bean.register.RegisterBean;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import com.qennnsad.aknkaksd.util.AES;
import io.reactivex.z;
import io.sentry.protocol.w;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: LoginManager.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b%\u0010&J\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002JH\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004JF\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000fJF\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000fJ\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004J\u0012\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004R\u0017\u0010\u001c\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010!\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lg5/f;", "", "Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;", "data", "Lio/reactivex/z;", "Lretrofit2/Response;", "", "k", "g", "Lh5/a;", "captcha", w.b.f83891c, "countryCode", "password", "smsCode", "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "preferredCaptchaType", "h", "j", "phone", "type", "captchaType", "l", "verify", "a", "e", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/data/repository/m;", "f", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "Lcom/google/gson/Gson;", "gson", "Lcom/google/gson/Gson;", "c", "()Lcom/google/gson/Gson;", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/google/gson/Gson;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m f67833a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Gson f67834b;

    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CaptchaType.values().length];
            iArr[CaptchaType.Re.ordinal()] = 1;
            iArr[CaptchaType.H.ordinal()] = 2;
            iArr[CaptchaType.Graph.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @u7.a
    public f(@m8.g m sourceFactory, @m8.g Gson gson) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.f67833a = sourceFactory;
        this.f67834b = gson;
    }

    public static /* synthetic */ z b(f fVar, String str, String str2, String str3, String str4, CaptchaType captchaType, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            captchaType = null;
        }
        return fVar.a(str, str2, str3, str4, captchaType);
    }

    public static /* synthetic */ z i(f fVar, h5.a aVar, String str, String str2, String str3, String str4, CaptchaType captchaType, int i4, Object obj) {
        if ((i4 & 32) != 0) {
            captchaType = null;
        }
        return fVar.h(aVar, str, str2, str3, str4, captchaType);
    }

    public static /* synthetic */ z m(f fVar, String str, String str2, String str3, h5.a aVar, CaptchaType captchaType, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            captchaType = null;
        }
        return fVar.l(str, str2, str3, aVar, captchaType);
    }

    @m8.g
    public final z<Response<String>> a(@m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h String str4, @m8.h CaptchaType captchaType) {
        z<Response<String>> findmypassword = m.g(this.f67833a, false, 1, null).findmypassword(str, str2, str3, str4, h5.b.a(captchaType));
        Intrinsics.checkNotNullExpressionValue(findmypassword, "sourceFactory.create().f…aptchaType.toApiString())");
        return findmypassword;
    }

    @m8.g
    public final Gson c() {
        return this.f67834b;
    }

    @m8.g
    public final z<Response<String>> d() {
        z<Response<String>> imToken = m.g(this.f67833a, false, 1, null).getImToken();
        Intrinsics.checkNotNullExpressionValue(imToken, "sourceFactory.create().imToken");
        return imToken;
    }

    @m8.g
    public final z<Response<String>> e() {
        z<Response<String>> loginCaptcha = m.g(this.f67833a, false, 1, null).getLoginCaptcha();
        Intrinsics.checkNotNullExpressionValue(loginCaptcha, "sourceFactory.create().getLoginCaptcha()");
        return loginCaptcha;
    }

    @m8.g
    public final m f() {
        return this.f67833a;
    }

    @m8.g
    public final z<Response<String>> g(@m8.g RegisterBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        z<Response<String>> G = m.g(this.f67833a, false, 1, null).G(this.f67834b.toJson(data));
        Intrinsics.checkNotNullExpressionValue(G, "sourceFactory.create().g…Number(gson.toJson(data))");
        return G;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final io.reactivex.z<retrofit2.Response<java.lang.String>> h(@m8.g h5.a r15, @m8.g java.lang.String r16, @m8.g java.lang.String r17, @m8.g java.lang.String r18, @m8.h java.lang.String r19, @m8.h com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r20) {
        /*
            r14 = this;
            r0 = r14
            java.lang.String r1 = "captcha"
            r2 = r15
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r1)
            java.lang.String r1 = "username"
            r3 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r1)
            java.lang.String r1 = "countryCode"
            r4 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r1)
            java.lang.String r1 = "password"
            r5 = r18
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r1)
            if (r20 != 0) goto L20
            r1 = -1
            goto L28
        L20:
            int[] r1 = g5.f.a.$EnumSwitchMapping$0
            int r6 = r20.ordinal()
            r1 = r1[r6]
        L28:
            r12 = 1
            r13 = 0
            if (r1 == r12) goto L3a
            r6 = 2
            if (r1 == r6) goto L37
            r6 = 3
            if (r1 == r6) goto L34
            r11 = r13
            goto L3d
        L34:
            java.lang.String r1 = "vC"
            goto L3c
        L37:
            java.lang.String r1 = "hC"
            goto L3c
        L3a:
            java.lang.String r1 = "gC"
        L3c:
            r11 = r1
        L3d:
            com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r1 = r15.b()
            com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r6 = com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType.Re
            if (r1 != r6) goto L4b
            java.lang.String r1 = r15.c()
            r7 = r1
            goto L4c
        L4b:
            r7 = r13
        L4c:
            com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r1 = r15.b()
            com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r6 = com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType.H
            if (r1 != r6) goto L5a
            java.lang.String r1 = r15.c()
            r8 = r1
            goto L5b
        L5a:
            r8 = r13
        L5b:
            com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r1 = r15.b()
            com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r6 = com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType.Graph
            if (r1 != r6) goto L69
            java.lang.String r1 = r15.c()
            r9 = r1
            goto L6a
        L69:
            r9 = r13
        L6a:
            com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType r1 = r15.b()
            if (r1 != r6) goto L76
            java.lang.String r1 = r15.a()
            r10 = r1
            goto L77
        L76:
            r10 = r13
        L77:
            com.qennnsad.aknkaksd.data.bean.LoginRequestBean r1 = new com.qennnsad.aknkaksd.data.bean.LoginRequestBean
            r2 = r1
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r19
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            com.qennnsad.aknkaksd.data.repository.m r2 = r0.f67833a
            r3 = 0
            com.qennnsad.aknkaksd.data.repository.b r2 = com.qennnsad.aknkaksd.data.repository.m.g(r2, r3, r12, r13)
            com.google.gson.Gson r3 = r0.f67834b
            java.lang.String r1 = r3.toJson(r1)
            io.reactivex.z r1 = r2.login(r1)
            java.lang.String r2 = "sourceFactory.create().login(gson.toJson(bean))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: g5.f.h(h5.a, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType):io.reactivex.z");
    }

    @m8.g
    public final z<Response<String>> j() {
        z<Response<String>> F = m.g(this.f67833a, false, 1, null).F();
        Intrinsics.checkNotNullExpressionValue(F, "sourceFactory.create().loginGuest()");
        return F;
    }

    @m8.g
    public final z<Response<String>> k(@m8.g RegisterBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        z<Response<String>> j4 = m.g(this.f67833a, false, 1, null).j(AES.aesencrypt_tiger2(this.f67834b.toJson(data)));
        Intrinsics.checkNotNullExpressionValue(j4, "sourceFactory.create().r…isterByPhone(encodedBean)");
        return j4;
    }

    @m8.g
    public final z<Response<String>> l(@m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h h5.a aVar, @m8.h CaptchaType captchaType) {
        z<Response<String>> J = m.g(this.f67833a, false, 1, null).J(str, str2, str3, aVar, h5.b.a(captchaType));
        Intrinsics.checkNotNullExpressionValue(J, "sourceFactory.create().s…aptchaType.toApiString())");
        return J;
    }
}
