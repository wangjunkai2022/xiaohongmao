package kotlinx.coroutines;

import kotlin.Metadata;

/* compiled from: DefaultExecutor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u001a\b\u0010\u0001\u001a\u00020\u0000H\u0002\"\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004\"\u001a\u0010\b\u001a\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0001\u0010\u0006\u001a\u0004\b\u0003\u0010\u0007¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/a1;", "b", "", "a", "Z", "defaultMainDelayOptIn", "Lkotlinx/coroutines/a1;", "()Lkotlinx/coroutines/a1;", "DefaultDelay", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class x0 {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f86860a = kotlinx.coroutines.internal.r0.e("kotlinx.coroutines.main.delay", false);
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final a1 f86861b = b();

    @m8.g
    public static final a1 a() {
        return f86861b;
    }

    private static final a1 b() {
        if (f86860a) {
            u2 e4 = i1.e();
            return (kotlinx.coroutines.internal.d0.d(e4) || !(e4 instanceof a1)) ? w0.f86846f : (a1) e4;
        }
        return w0.f86846f;
    }
}
