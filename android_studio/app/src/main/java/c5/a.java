package c5;

import com.qennnsad.aknkaksd.util.o0;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;

/* compiled from: AbstractDateInterceptor.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH&J\u000e\u0010\f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\u0011"}, d2 = {"Lc5/a;", "Lokhttp3/Interceptor;", "", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "", "a", "Lokhttp3/Interceptor$Chain;", "chain", "", "urlParamOnly", "Lokhttp3/Response;", "b", "intercept", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class a implements Interceptor {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f4003a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f4004b;

    public a(@m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f4003a = localDataManager;
        this.f4004b = "date";
    }

    private final long a(String str) {
        try {
            Date parse = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.ENGLISH).parse(str);
            return parse != null ? parse.getTime() : System.currentTimeMillis();
        } catch (ParseException e4) {
            o0.d("AbstractDateInterceptor", "Error parsing date header " + str, e4);
            return System.currentTimeMillis();
        }
    }

    public static /* synthetic */ Response c(a aVar, Interceptor.Chain chain, boolean z9, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            return aVar.b(chain, z9);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: intercepting");
    }

    @m8.g
    public abstract Response b(@m8.g Interceptor.Chain chain, boolean z9);

    @Override // okhttp3.Interceptor
    @m8.g
    public final Response intercept(@m8.g Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Response c10 = c(this, chain, false, 2, null);
        String header$default = Response.header$default(c10, this.f4004b, null, 2, null);
        if (header$default != null) {
            this.f4003a.S(a(header$default));
        }
        return c10;
    }
}
