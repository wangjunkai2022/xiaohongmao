package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: SendSmsUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0011B\u0019\b\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0$a;", "", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "Lg5/f;", "loginManager", "<init>", "(Lg5/a;Lg5/f;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h0 extends com.qennnsad.aknkaksd.domain.base.h<a, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48094a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.f f48095b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48096c;

    /* compiled from: SendSmsUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J3\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0013\u001a\u0004\b\u0016\u0010\u0015R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0$a;", "", "", "a", "b", "c", "Lh5/a;", "d", "phone", "countryCode", "type", "captchaToken", "e", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", ContextChain.TAG_INFRA, "()Ljava/lang/String;", "h", "j", "Lh5/a;", "g", "()Lh5/a;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48097a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f48098b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private final String f48099c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final h5.a f48100d;

        public a(@m8.g String phone, @m8.g String countryCode, @m8.h String str, @m8.g h5.a captchaToken) {
            Intrinsics.checkNotNullParameter(phone, "phone");
            Intrinsics.checkNotNullParameter(countryCode, "countryCode");
            Intrinsics.checkNotNullParameter(captchaToken, "captchaToken");
            this.f48097a = phone;
            this.f48098b = countryCode;
            this.f48099c = str;
            this.f48100d = captchaToken;
        }

        public static /* synthetic */ a f(a aVar, String str, String str2, String str3, h5.a aVar2, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = aVar.f48097a;
            }
            if ((i4 & 2) != 0) {
                str2 = aVar.f48098b;
            }
            if ((i4 & 4) != 0) {
                str3 = aVar.f48099c;
            }
            if ((i4 & 8) != 0) {
                aVar2 = aVar.f48100d;
            }
            return aVar.e(str, str2, str3, aVar2);
        }

        @m8.g
        public final String a() {
            return this.f48097a;
        }

        @m8.g
        public final String b() {
            return this.f48098b;
        }

        @m8.h
        public final String c() {
            return this.f48099c;
        }

        @m8.g
        public final h5.a d() {
            return this.f48100d;
        }

        @m8.g
        public final a e(@m8.g String phone, @m8.g String countryCode, @m8.h String str, @m8.g h5.a captchaToken) {
            Intrinsics.checkNotNullParameter(phone, "phone");
            Intrinsics.checkNotNullParameter(countryCode, "countryCode");
            Intrinsics.checkNotNullParameter(captchaToken, "captchaToken");
            return new a(phone, countryCode, str, captchaToken);
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f48097a, aVar.f48097a) && Intrinsics.areEqual(this.f48098b, aVar.f48098b) && Intrinsics.areEqual(this.f48099c, aVar.f48099c) && Intrinsics.areEqual(this.f48100d, aVar.f48100d);
            }
            return false;
        }

        @m8.g
        public final h5.a g() {
            return this.f48100d;
        }

        @m8.g
        public final String h() {
            return this.f48098b;
        }

        public int hashCode() {
            int hashCode = ((this.f48097a.hashCode() * 31) + this.f48098b.hashCode()) * 31;
            String str = this.f48099c;
            return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f48100d.hashCode();
        }

        @m8.g
        public final String i() {
            return this.f48097a;
        }

        @m8.h
        public final String j() {
            return this.f48099c;
        }

        @m8.g
        public String toString() {
            return "Params(phone=" + this.f48097a + ", countryCode=" + this.f48098b + ", type=" + this.f48099c + ", captchaToken=" + this.f48100d + ')';
        }
    }

    @u7.a
    public h0(@m8.g g5.a localDataManager, @m8.g g5.f loginManager) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(loginManager, "loginManager");
        this.f48094a = localDataManager;
        this.f48095b = loginManager;
        this.f48096c = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
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
        io.reactivex.z<Response<String>> l10 = this.f48095b.l(params.i(), params.h(), params.j(), params.g(), this.f48094a.J() ? this.f48094a.A() : null);
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48096c;
        io.reactivex.z map = l10.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.g0
            @Override // n7.o
            public final Object apply(Object obj) {
                String e4;
                e4 = h0.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "loginManager.sendSms(\n  …       ).map(mapper::map)");
        return map;
    }
}
