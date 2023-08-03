package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.u2;

/* compiled from: MainDispatchers.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\t\u001a\u001a\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00000\u0001H\u0007\u001a\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0003H\u0007\u001a \u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u001a\b\u0010\u000e\u001a\u00020\rH\u0000\"\u0014\u0010\u0010\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u000f\"\u001a\u0010\u0015\u001a\u00020\u00058\u0002X\u0082D¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u0012\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/internal/MainDispatcherFactory;", "", "factories", "Lkotlinx/coroutines/u2;", "f", "", "d", "", "cause", "", "errorHint", "Lkotlinx/coroutines/internal/e0;", "a", "", "e", "Ljava/lang/String;", "FAST_SERVICE_LOADER_PROPERTY_NAME", "b", "Z", "getSUPPORT_MISSING$annotations", "()V", "SUPPORT_MISSING", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class d0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final String f86252a = "kotlinx.coroutines.fast.service.loader";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f86253b = true;

    private static final e0 a(Throwable th, String str) {
        if (f86253b) {
            return new e0(th, str);
        }
        if (th == null) {
            e();
            throw new KotlinNothingValueException();
        }
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ e0 b(Throwable th, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            th = null;
        }
        if ((i4 & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    private static /* synthetic */ void c() {
    }

    @e2
    public static final boolean d(@m8.g u2 u2Var) {
        return u2Var.p0() instanceof e0;
    }

    @m8.g
    public static final Void e() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    @m8.g
    @e2
    public static final u2 f(@m8.g MainDispatcherFactory mainDispatcherFactory, @m8.g List<? extends MainDispatcherFactory> list) {
        try {
            return mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            return a(th, mainDispatcherFactory.hintOnError());
        }
    }
}
