package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: Runnable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\u000e\b\u0004\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0086\b*\n\u0010\u0006\"\u00020\u00032\u00020\u0003¨\u0006\u0007"}, d2 = {"Lkotlin/Function0;", "", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "a", "Runnable", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class f3 {

    /* compiled from: Runnable.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* loaded from: classes4.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f85268a;

        public a(Function0<Unit> function0) {
            this.f85268a = function0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f85268a.invoke();
        }
    }

    @m8.g
    public static final Runnable a(@m8.g Function0<Unit> function0) {
        return new a(function0);
    }
}
