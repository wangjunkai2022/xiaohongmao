package f2;

import android.net.Uri;
import androidx.exifinterface.media.ExifInterface;
import com.giphy.sdk.analytics.models.Session;
import com.giphy.sdk.analytics.models.SessionsRequestData;
import com.giphy.sdk.analytics.network.response.PingbackResponse;
import com.giphy.sdk.core.network.api.Constants;
import com.giphy.sdk.core.network.api.GPHApiClient;
import com.giphy.sdk.core.network.response.GenericResponse;
import io.sentry.cache.d;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: GPHPingbackClient.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u001a\u001a\u00020\r\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u001e\u0012\b\b\u0002\u0010$\u001a\u00020#¢\u0006\u0004\b(\u0010)J\"\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016Jp\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\"\b\b\u0000\u0010\n*\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00112\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00132\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00132\u0006\u0010\u0017\u001a\u00020\u0016R\u0017\u0010\u001a\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\u001f\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010$\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lf2/b;", "Lf2/a;", "Lcom/giphy/sdk/analytics/models/Session;", d.f83059h, "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/analytics/network/response/PingbackResponse;", "completionHandler", "Ljava/util/concurrent/Future;", "a", "Lcom/giphy/sdk/core/network/response/GenericResponse;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/net/Uri;", "serverUrl", "", "path", "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;", "method", "Ljava/lang/Class;", "responseClass", "", "queryStrings", "headers", "Lcom/giphy/sdk/analytics/models/SessionsRequestData;", "requestBody", "Lcom/giphy/sdk/core/threading/a;", "e", "apiKey", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "Lcom/giphy/sdk/core/network/engine/b;", "networkSession", "Lcom/giphy/sdk/core/network/engine/b;", "d", "()Lcom/giphy/sdk/core/network/engine/b;", "Lcom/giphy/sdk/analytics/batching/a;", "analyticsId", "Lcom/giphy/sdk/analytics/batching/a;", "b", "()Lcom/giphy/sdk/analytics/batching/a;", "<init>", "(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final String f65398a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final String f65399b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final com.giphy.sdk.core.network.engine.b f65400c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final com.giphy.sdk.analytics.batching.a f65401d;

    @JvmOverloads
    public b(@g String str) {
        this(str, null, null, 6, null);
    }

    @JvmOverloads
    public b(@g String str, @g com.giphy.sdk.core.network.engine.b bVar) {
        this(str, bVar, null, 4, null);
    }

    @JvmOverloads
    public b(@g String apiKey, @g com.giphy.sdk.core.network.engine.b networkSession, @g com.giphy.sdk.analytics.batching.a analyticsId) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(networkSession, "networkSession");
        Intrinsics.checkNotNullParameter(analyticsId, "analyticsId");
        this.f65399b = apiKey;
        this.f65400c = networkSession;
        this.f65401d = analyticsId;
        this.f65398a = "application/json";
    }

    @Override // f2.a
    @g
    public Future<?> a(@g Session session, @g com.giphy.sdk.core.network.api.a<? super PingbackResponse> completionHandler) {
        HashMap hashMapOf;
        HashMap hashMapOf2;
        Map plus;
        Map<String, String> mutableMap;
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
        Constants constants = Constants.f16922h;
        String e4 = constants.e();
        e2.a aVar = e2.a.f62216j;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(constants.a(), this.f65399b), TuplesKt.to(e4, aVar.i().o().d()));
        hashMapOf2 = MapsKt__MapsKt.hashMapOf(TuplesKt.to(constants.b(), this.f65398a));
        plus = MapsKt__MapsKt.plus(hashMapOf2, aVar.f());
        mutableMap = MapsKt__MapsKt.toMutableMap(plus);
        StringBuilder sb = new StringBuilder();
        sb.append("Android Pingback ");
        com.giphy.sdk.core.c cVar = com.giphy.sdk.core.c.f16910h;
        sb.append(cVar.h());
        sb.append(" v");
        sb.append(cVar.i());
        mutableMap.put(com.google.common.net.b.M, sb.toString());
        Uri f10 = constants.f();
        Intrinsics.checkNotNullExpressionValue(f10, "Constants.PINGBACK_SERVER_URL");
        return e(f10, Constants.a.f16934k.f(), GPHApiClient.HTTPMethod.POST, PingbackResponse.class, hashMapOf, mutableMap, new SessionsRequestData(session)).k(completionHandler);
    }

    @g
    public final com.giphy.sdk.analytics.batching.a b() {
        return this.f65401d;
    }

    @g
    public final String c() {
        return this.f65399b;
    }

    @g
    public final com.giphy.sdk.core.network.engine.b d() {
        return this.f65400c;
    }

    @g
    public final <T extends GenericResponse> com.giphy.sdk.core.threading.a<T> e(@g Uri serverUrl, @g String path, @g GPHApiClient.HTTPMethod method, @g Class<T> responseClass, @h Map<String, String> map, @h Map<String, String> map2, @g SessionsRequestData requestBody) {
        Intrinsics.checkNotNullParameter(serverUrl, "serverUrl");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(responseClass, "responseClass");
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        return this.f65400c.a(serverUrl, path, method, responseClass, map, map2, requestBody);
    }

    public /* synthetic */ b(String str, com.giphy.sdk.core.network.engine.b bVar, com.giphy.sdk.analytics.batching.a aVar, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? new com.giphy.sdk.core.network.engine.a() : bVar, (i4 & 4) != 0 ? new com.giphy.sdk.analytics.batching.a(str, false, false, 6, null) : aVar);
    }
}
