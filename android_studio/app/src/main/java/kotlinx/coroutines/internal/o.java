package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;

/* compiled from: FastServiceLoader.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0005\"\u001a\u0010\u0004\u001a\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0001\u0010\u0002\u001a\u0004\b\u0001\u0010\u0003¨\u0006\u0005"}, d2 = {"", "a", "Z", "()Z", "ANDROID_DETECTED", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f86282a;

    static {
        Object m70constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
        }
        f86282a = Result.m77isSuccessimpl(m70constructorimpl);
    }

    public static final boolean a() {
        return f86282a;
    }
}
