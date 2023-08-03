package f2;

import com.giphy.sdk.analytics.models.Session;
import com.giphy.sdk.analytics.network.response.PingbackResponse;
import io.sentry.cache.d;
import java.util.concurrent.Future;
import kotlin.Metadata;
import m8.g;

/* compiled from: GPHPingbackApi.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\"\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&¨\u0006\t"}, d2 = {"Lf2/a;", "", "Lcom/giphy/sdk/analytics/models/Session;", d.f83059h, "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/analytics/network/response/PingbackResponse;", "completionHandler", "Ljava/util/concurrent/Future;", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public interface a {
    @g
    Future<?> a(@g Session session, @g com.giphy.sdk.core.network.api.a<? super PingbackResponse> aVar);
}
