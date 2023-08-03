package kotlinx.coroutines;

import io.sentry.protocol.f;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: CompletionState.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\b\u0010\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0011\u0010\f\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0004¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/e0;", "", "", "b", "()Z", "", "toString", "()Ljava/lang/String;", "", "a", "Ljava/lang/Throwable;", "cause", f.b.f83682d, "<init>", "(Ljava/lang/Throwable;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class e0 {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f85245b = AtomicIntegerFieldUpdater.newUpdater(e0.class, "_handled");
    @m8.g
    private volatile /* synthetic */ int _handled;
    @JvmField
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f85246a;

    public e0(@m8.g Throwable th, boolean z9) {
        this.f85246a = th;
        this._handled = z9 ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    public final boolean a() {
        return this._handled;
    }

    public final boolean b() {
        return f85245b.compareAndSet(this, 0, 1);
    }

    @m8.g
    public String toString() {
        return v0.a(this) + '[' + this.f85246a + ']';
    }

    public /* synthetic */ e0(Throwable th, boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i4 & 2) != 0 ? false : z9);
    }
}
