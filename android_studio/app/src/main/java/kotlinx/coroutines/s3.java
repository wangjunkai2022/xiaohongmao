package kotlinx.coroutines;

import io.sentry.protocol.t;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Interruptible.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002#\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0012¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u000eJ\u001a\u0010\u0010\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0013R\u001c\u0010\u0018\u001a\n \u0016*\u0004\u0018\u00010\u00150\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u001a¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/s3;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "", t.b.f83859d, "", "b", "(I)Ljava/lang/Void;", "d", "()V", "a", "c", "(Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/j2;", "job", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "Ljava/lang/Thread;", "targetThread", "Lkotlinx/coroutines/l1;", "Lkotlinx/coroutines/l1;", "cancelHandle", "<init>", "(Lkotlinx/coroutines/j2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class s3 implements Function1<Throwable, Unit> {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86627d = AtomicIntegerFieldUpdater.newUpdater(s3.class, "_state");
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final j2 f86628a;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private l1 f86630c;
    @m8.g
    private volatile /* synthetic */ int _state = 0;

    /* renamed from: b  reason: collision with root package name */
    private final Thread f86629b = Thread.currentThread();

    public s3(@m8.g j2 j2Var) {
        this.f86628a = j2Var;
    }

    private final Void b(int i4) {
        throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", Integer.valueOf(i4)).toString());
    }

    public final void a() {
        while (true) {
            int i4 = this._state;
            if (i4 != 0) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        b(i4);
                        throw new KotlinNothingValueException();
                    }
                }
            } else if (f86627d.compareAndSet(this, i4, 1)) {
                l1 l1Var = this.f86630c;
                if (l1Var == null) {
                    return;
                }
                l1Var.dispose();
                return;
            }
        }
    }

    public void c(@m8.h Throwable th) {
        int i4;
        do {
            i4 = this._state;
            if (i4 != 0) {
                if (i4 == 1 || i4 == 2 || i4 == 3) {
                    return;
                }
                b(i4);
                throw new KotlinNothingValueException();
            }
        } while (!f86627d.compareAndSet(this, i4, 2));
        this.f86629b.interrupt();
        this._state = 3;
    }

    public final void d() {
        int i4;
        this.f86630c = this.f86628a.y(true, true, this);
        do {
            i4 = this._state;
            if (i4 != 0) {
                if (i4 == 2 || i4 == 3) {
                    return;
                }
                b(i4);
                throw new KotlinNothingValueException();
            }
        } while (!f86627d.compareAndSet(this, i4, 0));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        c(th);
        return Unit.INSTANCE;
    }
}
