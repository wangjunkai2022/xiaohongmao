package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.t;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;

/* compiled from: Builders.common.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0005J\u0019\u0010\u0001\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\u0001\u0010\nJ\u0019\u0010\u000b\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/e1;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/l0;", "", "s1", "()Z", "r1", "", t.b.f83859d, "", "(Ljava/lang/Object;)V", "k1", "q1", "()Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e1<T> extends kotlinx.coroutines.internal.l0<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f85247d = AtomicIntegerFieldUpdater.newUpdater(e1.class, "_decision");
    @m8.g
    private volatile /* synthetic */ int _decision;

    public e1(@m8.g CoroutineContext coroutineContext, @m8.g Continuation<? super T> continuation) {
        super(coroutineContext, continuation);
        this._decision = 0;
    }

    private final boolean r1() {
        do {
            int i4 = this._decision;
            if (i4 != 0) {
                if (i4 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f85247d.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean s1() {
        do {
            int i4 = this._decision;
            if (i4 != 0) {
                if (i4 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f85247d.compareAndSet(this, 0, 1));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.internal.l0, kotlinx.coroutines.q2
    public void T(@m8.h Object obj) {
        k1(obj);
    }

    @Override // kotlinx.coroutines.internal.l0, kotlinx.coroutines.a
    protected void k1(@m8.h Object obj) {
        Continuation intercepted;
        if (r1()) {
            return;
        }
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.f86274c);
        kotlinx.coroutines.internal.m.g(intercepted, j0.a(obj, this.f86274c), null, 2, null);
    }

    @m8.h
    public final Object q1() {
        Object coroutine_suspended;
        if (s1()) {
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended;
        }
        Object o9 = r2.o(y0());
        if (o9 instanceof e0) {
            throw ((e0) o9).f85246a;
        }
        return o9;
    }
}
