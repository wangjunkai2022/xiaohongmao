package c5;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;

/* compiled from: WebViewAuthInterceptor.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u000e"}, d2 = {"Lc5/g;", "Lc5/a;", "Lokhttp3/Interceptor$Chain;", "chain", "", "urlParamOnly", "Lokhttp3/Response;", "b", "Lc5/b;", "authenticator", "Lg5/a;", "localDataManager", "<init>", "(Lc5/b;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g extends a {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final b f4015c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final g5.a f4016d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @u7.a
    public g(@m8.g b authenticator, @m8.g g5.a localDataManager) {
        super(localDataManager);
        Intrinsics.checkNotNullParameter(authenticator, "authenticator");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f4015c = authenticator;
        this.f4016d = localDataManager;
    }

    @Override // c5.a
    @m8.g
    public Response b(@m8.g Interceptor.Chain chain, boolean z9) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Response b10 = this.f4015c.b(chain, true);
        if (b10.isSuccessful()) {
            return b10;
        }
        throw j.b(b10);
    }
}
