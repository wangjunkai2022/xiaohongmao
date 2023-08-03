package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: ChangePasswordUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0013B\u0019\b\u0007\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;", "", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "f", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/f;", "loginManager", "Lg5/a;", "localDataManager", "<init>", "(Lg5/f;Lg5/a;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends com.qennnsad.aknkaksd.domain.base.h<a, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.f f48104a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48105b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48106c;

    /* compiled from: ChangePasswordUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J1\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u0002HÆ\u0001J\t\u0010\f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0012\u001a\u0004\b\u0015\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;", "", "", "a", "b", "c", "d", "phoneNumber", "countryCode", "newPassword", "smsCode", "e", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", ContextChain.TAG_INFRA, "()Ljava/lang/String;", "g", "h", "j", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48107a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f48108b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final String f48109c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final String f48110d;

        public a(@m8.g String phoneNumber, @m8.g String countryCode, @m8.g String newPassword, @m8.g String smsCode) {
            Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
            Intrinsics.checkNotNullParameter(countryCode, "countryCode");
            Intrinsics.checkNotNullParameter(newPassword, "newPassword");
            Intrinsics.checkNotNullParameter(smsCode, "smsCode");
            this.f48107a = phoneNumber;
            this.f48108b = countryCode;
            this.f48109c = newPassword;
            this.f48110d = smsCode;
        }

        public static /* synthetic */ a f(a aVar, String str, String str2, String str3, String str4, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = aVar.f48107a;
            }
            if ((i4 & 2) != 0) {
                str2 = aVar.f48108b;
            }
            if ((i4 & 4) != 0) {
                str3 = aVar.f48109c;
            }
            if ((i4 & 8) != 0) {
                str4 = aVar.f48110d;
            }
            return aVar.e(str, str2, str3, str4);
        }

        @m8.g
        public final String a() {
            return this.f48107a;
        }

        @m8.g
        public final String b() {
            return this.f48108b;
        }

        @m8.g
        public final String c() {
            return this.f48109c;
        }

        @m8.g
        public final String d() {
            return this.f48110d;
        }

        @m8.g
        public final a e(@m8.g String phoneNumber, @m8.g String countryCode, @m8.g String newPassword, @m8.g String smsCode) {
            Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
            Intrinsics.checkNotNullParameter(countryCode, "countryCode");
            Intrinsics.checkNotNullParameter(newPassword, "newPassword");
            Intrinsics.checkNotNullParameter(smsCode, "smsCode");
            return new a(phoneNumber, countryCode, newPassword, smsCode);
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f48107a, aVar.f48107a) && Intrinsics.areEqual(this.f48108b, aVar.f48108b) && Intrinsics.areEqual(this.f48109c, aVar.f48109c) && Intrinsics.areEqual(this.f48110d, aVar.f48110d);
            }
            return false;
        }

        @m8.g
        public final String g() {
            return this.f48108b;
        }

        @m8.g
        public final String h() {
            return this.f48109c;
        }

        public int hashCode() {
            return (((((this.f48107a.hashCode() * 31) + this.f48108b.hashCode()) * 31) + this.f48109c.hashCode()) * 31) + this.f48110d.hashCode();
        }

        @m8.g
        public final String i() {
            return this.f48107a;
        }

        @m8.g
        public final String j() {
            return this.f48110d;
        }

        @m8.g
        public String toString() {
            return "Params(phoneNumber=" + this.f48107a + ", countryCode=" + this.f48108b + ", newPassword=" + this.f48109c + ", smsCode=" + this.f48110d + ')';
        }
    }

    @u7.a
    public j(@m8.g g5.f loginManager, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(loginManager, "loginManager");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48104a = loginManager;
        this.f48105b = localDataManager;
        this.f48106c = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ String e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (String) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<String> a(@m8.g a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        CaptchaType A = this.f48105b.J() ? this.f48105b.A() : null;
        io.reactivex.z<Response<String>> a10 = this.f48104a.a(params.i(), params.g(), params.h(), params.j(), A);
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48106c;
        io.reactivex.z map = a10.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.i
            @Override // n7.o
            public final Object apply(Object obj) {
                String e4;
                e4 = j.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "loginManager.findmypassw…       ).map(mapper::map)");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<String> f() {
        return this.f48106c;
    }
}
