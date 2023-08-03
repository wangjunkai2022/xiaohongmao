package c5;

import com.qennnsad.aknkaksd.util.o0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Request;

/* compiled from: Authenticator.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0014\u0010\b\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fR\"\u0010\u0011\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, d2 = {"Lc5/b;", "Lc5/a;", "", "d", "Lokhttp3/Request$Builder;", "Lokhttp3/Request;", "originalRequest", "", "g", "Lokhttp3/Interceptor$Chain;", "chain", "", "urlParamOnly", "Lokhttp3/Response;", "b", "", "e", "isRerequesting", "Z", "f", "()Z", "h", "(Z)V", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends a {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final g5.a f4005c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4006d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @u7.a
    public b(@m8.g g5.a localDataManager) {
        super(localDataManager);
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f4005c = localDataManager;
    }

    private final String d() {
        String o9 = this.f4005c.o();
        if (o9 == null || o9.length() == 0) {
            return null;
        }
        return "Bearer " + o9;
    }

    private final void g(Request.Builder builder, Request request) {
        HttpUrl build = request.url().newBuilder().setQueryParameter("token", this.f4005c.o()).build();
        o0.g(c.f4007a, "Add JWT Query Param. New URL: " + build);
        builder.url(build);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004c A[Catch: IllegalStateException -> 0x00b8, TryCatch #0 {IllegalStateException -> 0x00b8, blocks: (B:13:0x002e, B:15:0x0040, B:21:0x004c, B:22:0x0071, B:24:0x0079, B:30:0x00b5, B:26:0x0081, B:28:0x008b), top: B:35:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008b A[Catch: IllegalStateException -> 0x00b8, TryCatch #0 {IllegalStateException -> 0x00b8, blocks: (B:13:0x002e, B:15:0x0040, B:21:0x004c, B:22:0x0071, B:24:0x0079, B:30:0x00b5, B:26:0x0081, B:28:0x008b), top: B:35:0x002e }] */
    @Override // c5.a
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public okhttp3.Response b(@m8.g okhttp3.Interceptor.Chain r9, boolean r10) {
        /*
            r8 = this;
            java.lang.String r0 = "AuthInterceptor"
            java.lang.String r1 = "chain"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r1)
            okhttp3.Request r1 = r9.request()
            okhttp3.Request$Builder r2 = r1.newBuilder()
            java.lang.String r3 = r8.d()
            r4 = 1
            r5 = 0
            if (r10 == 0) goto L1b
            r8.g(r2, r1)
            goto L2e
        L1b:
            if (r3 == 0) goto L26
            int r10 = r3.length()
            if (r10 != 0) goto L24
            goto L26
        L24:
            r10 = 0
            goto L27
        L26:
            r10 = 1
        L27:
            if (r10 != 0) goto L2e
            java.lang.String r10 = "Authorization"
            r2.header(r10, r3)
        L2e:
            okhttp3.Request r10 = r2.build()     // Catch: java.lang.IllegalStateException -> Lb8
            okhttp3.Response r10 = r9.proceed(r10)     // Catch: java.lang.IllegalStateException -> Lb8
            java.lang.String r2 = "set-token"
            r6 = 2
            r7 = 0
            java.lang.String r2 = okhttp3.Response.header$default(r10, r2, r7, r6, r7)     // Catch: java.lang.IllegalStateException -> Lb8
            if (r2 == 0) goto L49
            int r6 = r2.length()     // Catch: java.lang.IllegalStateException -> Lb8
            if (r6 != 0) goto L47
            goto L49
        L47:
            r6 = 0
            goto L4a
        L49:
            r6 = 1
        L4a:
            if (r6 != 0) goto L71
            g5.a r6 = r8.f4005c     // Catch: java.lang.IllegalStateException -> Lb8
            r6.h0(r2)     // Catch: java.lang.IllegalStateException -> Lb8
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.IllegalStateException -> Lb8
            r6.<init>()     // Catch: java.lang.IllegalStateException -> Lb8
            java.lang.String r7 = "JWT Refreshed from "
            r6.append(r7)     // Catch: java.lang.IllegalStateException -> Lb8
            okhttp3.HttpUrl r7 = r1.url()     // Catch: java.lang.IllegalStateException -> Lb8
            r6.append(r7)     // Catch: java.lang.IllegalStateException -> Lb8
            java.lang.String r7 = " : "
            r6.append(r7)     // Catch: java.lang.IllegalStateException -> Lb8
            r6.append(r2)     // Catch: java.lang.IllegalStateException -> Lb8
            java.lang.String r2 = r6.toString()     // Catch: java.lang.IllegalStateException -> Lb8
            com.qennnsad.aknkaksd.util.o0.a(r0, r2)     // Catch: java.lang.IllegalStateException -> Lb8
        L71:
            int r2 = r10.code()     // Catch: java.lang.IllegalStateException -> Lb8
            r6 = 401(0x191, float:5.62E-43)
            if (r2 == r6) goto L81
            int r2 = r10.code()     // Catch: java.lang.IllegalStateException -> Lb8
            r6 = 403(0x193, float:5.65E-43)
            if (r2 != r6) goto Lb5
        L81:
            java.lang.String r2 = r8.d()     // Catch: java.lang.IllegalStateException -> Lb8
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r2)     // Catch: java.lang.IllegalStateException -> Lb8
            if (r3 != 0) goto Lb5
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.IllegalStateException -> Lb8
            r3.<init>()     // Catch: java.lang.IllegalStateException -> Lb8
            java.lang.String r6 = "Re-request "
            r3.append(r6)     // Catch: java.lang.IllegalStateException -> Lb8
            okhttp3.HttpUrl r1 = r1.url()     // Catch: java.lang.IllegalStateException -> Lb8
            r3.append(r1)     // Catch: java.lang.IllegalStateException -> Lb8
            java.lang.String r1 = " with new JWT : "
            r3.append(r1)     // Catch: java.lang.IllegalStateException -> Lb8
            r3.append(r2)     // Catch: java.lang.IllegalStateException -> Lb8
            java.lang.String r1 = r3.toString()     // Catch: java.lang.IllegalStateException -> Lb8
            com.qennnsad.aknkaksd.util.o0.a(r0, r1)     // Catch: java.lang.IllegalStateException -> Lb8
            r8.f4006d = r4     // Catch: java.lang.IllegalStateException -> Lb8
            r10.close()     // Catch: java.lang.IllegalStateException -> Lb8
            okhttp3.Response r9 = r8.intercept(r9)     // Catch: java.lang.IllegalStateException -> Lb8
            return r9
        Lb5:
            r8.f4006d = r5     // Catch: java.lang.IllegalStateException -> Lb8
            return r10
        Lb8:
            r9 = move-exception
            r8.f4006d = r5
            java.lang.String r10 = "Error refreshing JWT"
            com.qennnsad.aknkaksd.util.o0.d(r0, r10, r9)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.b.b(okhttp3.Interceptor$Chain, boolean):okhttp3.Response");
    }

    @m8.h
    public final Map<String, String> e() {
        Map<String, String> mapOf;
        String d4 = d();
        if (d4 == null || d4.length() == 0) {
            return null;
        }
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to("Authorization", d4));
        return mapOf;
    }

    public final boolean f() {
        return this.f4006d;
    }

    public final void h(boolean z9) {
        this.f4006d = z9;
    }
}
