package io.sentry.android.okhttp;

import io.sentry.SentryOptions;
import io.sentry.b0;
import io.sentry.e3;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.exception.SentryHttpClientException;
import io.sentry.f0;
import io.sentry.f5;
import io.sentry.h4;
import io.sentry.n0;
import io.sentry.protocol.i;
import io.sentry.protocol.j;
import io.sentry.t5;
import io.sentry.util.o;
import io.sentry.v0;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: SentryOkHttpInterceptor.kt */
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u000fBG\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001c\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001f\u0012\b\b\u0002\u0010#\u001a\u00020\u0012\u0012\u000e\b\u0002\u0010'\u001a\b\u0012\u0004\u0012\u00020%0$\u0012\u000e\b\u0002\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00170$¢\u0006\u0004\b)\u0010*B\t\b\u0016¢\u0006\u0004\b)\u0010+B\u0011\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001c¢\u0006\u0004\b)\u0010,B\u0011\b\u0016\u0012\u0006\u0010!\u001a\u00020\u001f¢\u0006\u0004\b)\u0010-J$\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J)\u0010\r\u001a\u00020\b*\u0004\u0018\u00010\n2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\b0\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u001e\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0016R\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001dR\u0016\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010 R\u0014\u0010#\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\"R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020%0$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010&R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00170$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010&¨\u0006."}, d2 = {"Lio/sentry/android/okhttp/c;", "Lokhttp3/Interceptor;", "Lio/sentry/v0;", com.google.android.exoplayer2.text.ttml.d.f25732s, "Lokhttp3/Request;", e3.b.f83149d, "Lokhttp3/Response;", j.f83728f, "", "c", "", "Lkotlin/Function1;", "fn", "e", "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V", "a", "", "statusCode", "", "b", "Lokhttp3/Headers;", "requestHeaders", "", "", "d", "Lokhttp3/Interceptor$Chain;", "chain", "intercept", "Lio/sentry/n0;", "Lio/sentry/n0;", "hub", "Lio/sentry/android/okhttp/c$a;", "Lio/sentry/android/okhttp/c$a;", "beforeSpan", "Z", "captureFailedRequests", "", "Lio/sentry/f0;", "Ljava/util/List;", "failedRequestStatusCodes", "failedRequestTargets", "<init>", "(Lio/sentry/n0;Lio/sentry/android/okhttp/c$a;ZLjava/util/List;Ljava/util/List;)V", "()V", "(Lio/sentry/n0;)V", "(Lio/sentry/android/okhttp/c$a;)V", "sentry-android-okhttp_release"}, k = 1, mv = {1, 4, 3})
/* loaded from: classes4.dex */
public final class c implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    private final n0 f82989a;

    /* renamed from: b  reason: collision with root package name */
    private final a f82990b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f82991c;

    /* renamed from: d  reason: collision with root package name */
    private final List<f0> f82992d;

    /* renamed from: e  reason: collision with root package name */
    private final List<String> f82993e;

    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J$\u0010\b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H&¨\u0006\t"}, d2 = {"Lio/sentry/android/okhttp/c$a;", "", "Lio/sentry/v0;", com.google.android.exoplayer2.text.ttml.d.f25732s, "Lokhttp3/Request;", e3.b.f83149d, "Lokhttp3/Response;", j.f83728f, "a", "sentry-android-okhttp_release"}, k = 1, mv = {1, 4, 3})
    /* loaded from: classes4.dex */
    public interface a {
        @m8.h
        v0 a(@m8.g v0 v0Var, @m8.g Request request, @m8.h Response response);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(J)V"}, k = 3, mv = {1, 4, 3})
    /* loaded from: classes4.dex */
    public static final class b extends Lambda implements Function1<Long, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f82994a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(i iVar) {
            super(1);
            this.f82994a = iVar;
        }

        public final void a(long j4) {
            this.f82994a.u(Long.valueOf(j4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(J)V"}, k = 3, mv = {1, 4, 3})
    /* renamed from: io.sentry.android.okhttp.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0709c extends Lambda implements Function1<Long, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j f82995a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0709c(j jVar) {
            super(1);
            this.f82995a = jVar;
        }

        public final void a(long j4) {
            this.f82995a.i(Long.valueOf(j4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"", "responseBodySize", "", "a", "(J)V", "io/sentry/android/okhttp/SentryOkHttpInterceptor$intercept$5$1"}, k = 3, mv = {1, 4, 3})
    /* loaded from: classes4.dex */
    static final class d extends Lambda implements Function1<Long, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.sentry.f f82997b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b0 f82998c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(io.sentry.f fVar, b0 b0Var) {
            super(1);
            this.f82997b = fVar;
            this.f82998c = b0Var;
        }

        public final void a(long j4) {
            this.f82997b.v("response_body_size", Long.valueOf(j4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"", "responseBodySize", "", "a", "(J)V", "io/sentry/android/okhttp/SentryOkHttpInterceptor$intercept$5$1"}, k = 3, mv = {1, 4, 3})
    /* loaded from: classes4.dex */
    static final class e extends Lambda implements Function1<Long, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.sentry.f f83000b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b0 f83001c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(io.sentry.f fVar, b0 b0Var) {
            super(1);
            this.f83000b = fVar;
            this.f83001c = b0Var;
        }

        public final void a(long j4) {
            this.f83000b.v("response_body_size", Long.valueOf(j4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"", "responseBodySize", "", "a", "(J)V", "io/sentry/android/okhttp/SentryOkHttpInterceptor$intercept$5$1"}, k = 3, mv = {1, 4, 3})
    /* loaded from: classes4.dex */
    static final class f extends Lambda implements Function1<Long, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.sentry.f f83003b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b0 f83004c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(io.sentry.f fVar, b0 b0Var) {
            super(1);
            this.f83003b = fVar;
            this.f83004c = b0Var;
        }

        public final void a(long j4) {
            this.f83003b.v("response_body_size", Long.valueOf(j4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"", "responseBodySize", "", "a", "(J)V", "io/sentry/android/okhttp/SentryOkHttpInterceptor$intercept$5$1"}, k = 3, mv = {1, 4, 3})
    /* loaded from: classes4.dex */
    static final class g extends Lambda implements Function1<Long, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.sentry.f f83006b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b0 f83007c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(io.sentry.f fVar, b0 b0Var) {
            super(1);
            this.f83006b = fVar;
            this.f83007c = b0Var;
        }

        public final void a(long j4) {
            this.f83006b.v("response_body_size", Long.valueOf(j4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SentryOkHttpInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(J)V"}, k = 3, mv = {1, 4, 3})
    /* loaded from: classes4.dex */
    static final class h extends Lambda implements Function1<Long, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.sentry.f f83008a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(io.sentry.f fVar) {
            super(1);
            this.f83008a = fVar;
        }

        public final void a(long j4) {
            this.f83008a.v("request_body_size", Long.valueOf(j4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    public c(@m8.g n0 hub, @m8.h a aVar, boolean z9, @m8.g List<f0> failedRequestStatusCodes, @m8.g List<String> failedRequestTargets) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(failedRequestStatusCodes, "failedRequestStatusCodes");
        Intrinsics.checkNotNullParameter(failedRequestTargets, "failedRequestTargets");
        this.f82989a = hub;
        this.f82990b = aVar;
        this.f82991c = z9;
        this.f82992d = failedRequestStatusCodes;
        this.f82993e = failedRequestTargets;
    }

    private final void a(Request request, Response response) {
        if (this.f82991c && b(response.code())) {
            String httpUrl = request.url().toString();
            String query = request.url().query();
            boolean z9 = false;
            if (!(query == null || query.length() == 0)) {
                httpUrl = StringsKt__StringsJVMKt.replace$default(httpUrl, '?' + query, "", false, 4, (Object) null);
            }
            String str = httpUrl;
            String fragment = request.url().fragment();
            if (!((fragment == null || fragment.length() == 0) ? true : true)) {
                str = StringsKt__StringsJVMKt.replace$default(str, '#' + fragment, "", false, 4, (Object) null);
            }
            if (o.a(this.f82993e, str)) {
                io.sentry.protocol.f fVar = new io.sentry.protocol.f();
                fVar.v("SentryOkHttpInterceptor");
                h4 h4Var = new h4(new ExceptionMechanismException(fVar, new SentryHttpClientException("HTTP Client Error with status code: " + response.code()), Thread.currentThread(), true));
                b0 b0Var = new b0();
                b0Var.m(t5.f83993p, request);
                b0Var.m(t5.f83992o, response);
                i iVar = new i();
                iVar.D(str);
                SentryOptions A = this.f82989a.A();
                Intrinsics.checkNotNullExpressionValue(A, "hub.options");
                iVar.v(A.isSendDefaultPii() ? request.headers().get(com.google.common.net.b.f34641p) : null);
                iVar.A(request.method());
                iVar.C(query);
                iVar.z(d(request.headers()));
                iVar.y(fragment);
                RequestBody body = request.body();
                e(body != null ? Long.valueOf(body.contentLength()) : null, new b(iVar));
                j jVar = new j();
                SentryOptions A2 = this.f82989a.A();
                Intrinsics.checkNotNullExpressionValue(A2, "hub.options");
                jVar.j(A2.isSendDefaultPii() ? response.headers().get(com.google.common.net.b.f34656w0) : null);
                jVar.k(d(response.headers()));
                jVar.l(Integer.valueOf(response.code()));
                ResponseBody body2 = response.body();
                e(body2 != null ? Long.valueOf(body2.contentLength()) : null, new C0709c(jVar));
                h4Var.g0(iVar);
                h4Var.E().setResponse(jVar);
                this.f82989a.j(h4Var, b0Var);
            }
        }
    }

    private final boolean b(int i4) {
        for (f0 f0Var : this.f82992d) {
            if (f0Var.a(i4)) {
                return true;
            }
        }
        return false;
    }

    private final void c(v0 v0Var, Request request, Response response) {
        if (v0Var != null) {
            a aVar = this.f82990b;
            if (aVar != null) {
                if (aVar.a(v0Var, request, response) == null) {
                    f5 E = v0Var.E();
                    Intrinsics.checkNotNullExpressionValue(E, "span.spanContext");
                    E.m(Boolean.FALSE);
                    return;
                }
                v0Var.h();
                return;
            }
            v0Var.h();
        }
    }

    private final Map<String, String> d(Headers headers) {
        SentryOptions A = this.f82989a.A();
        Intrinsics.checkNotNullExpressionValue(A, "hub.options");
        if (A.isSendDefaultPii()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = headers.size();
            for (int i4 = 0; i4 < size; i4++) {
                String name = headers.name(i4);
                if (!io.sentry.util.i.a(name)) {
                    linkedHashMap.put(name, headers.value(i4));
                }
            }
            return linkedHashMap;
        }
        return null;
    }

    private final void e(Long l10, Function1<? super Long, Unit> function1) {
        if (l10 == null || l10.longValue() == -1) {
            return;
        }
        function1.invoke(l10);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0187  */
    @Override // okhttp3.Interceptor
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public okhttp3.Response intercept(@m8.g okhttp3.Interceptor.Chain r15) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.c.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ c(io.sentry.n0 r7, io.sentry.android.okhttp.c.a r8, boolean r9, java.util.List r10, java.util.List r11, int r12, kotlin.jvm.internal.DefaultConstructorMarker r13) {
        /*
            r6 = this;
            r13 = r12 & 1
            if (r13 == 0) goto Ld
            io.sentry.i0 r7 = io.sentry.i0.d0()
            java.lang.String r13 = "HubAdapter.getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r13)
        Ld:
            r1 = r7
            r7 = r12 & 2
            if (r7 == 0) goto L13
            r8 = 0
        L13:
            r2 = r8
            r7 = r12 & 4
            if (r7 == 0) goto L1b
            r9 = 0
            r3 = 0
            goto L1c
        L1b:
            r3 = r9
        L1c:
            r7 = r12 & 8
            if (r7 == 0) goto L2d
            io.sentry.f0 r7 = new io.sentry.f0
            r8 = 500(0x1f4, float:7.0E-43)
            r9 = 599(0x257, float:8.4E-43)
            r7.<init>(r8, r9)
            java.util.List r10 = kotlin.collections.CollectionsKt.listOf(r7)
        L2d:
            r4 = r10
            r7 = r12 & 16
            if (r7 == 0) goto L38
            java.lang.String r7 = ".*"
            java.util.List r11 = kotlin.collections.CollectionsKt.listOf(r7)
        L38:
            r5 = r11
            r0 = r6
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.c.<init>(io.sentry.n0, io.sentry.android.okhttp.c$a, boolean, java.util.List, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public c() {
        /*
            r2 = this;
            io.sentry.i0 r0 = io.sentry.i0.d0()
            java.lang.String r1 = "HubAdapter.getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.c.<init>():void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(@m8.g n0 hub) {
        this(hub, null, false, null, null, 28, null);
        Intrinsics.checkNotNullParameter(hub, "hub");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public c(@m8.g io.sentry.android.okhttp.c.a r10) {
        /*
            r9 = this;
            java.lang.String r0 = "beforeSpan"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            io.sentry.i0 r2 = io.sentry.i0.d0()
            java.lang.String r0 = "HubAdapter.getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 28
            r8 = 0
            r1 = r9
            r3 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.okhttp.c.<init>(io.sentry.android.okhttp.c$a):void");
    }
}
