package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.m2;
import kotlinx.coroutines.q;
import kotlinx.coroutines.x2;
import m8.g;
import m8.h;

/* compiled from: HandlerDispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B#\b\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010$\u001a\u00020\n¢\u0006\u0004\b+\u0010,B\u001d\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b+\u0010-J\u001c\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u001c\u0010\f\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u001e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u000fH\u0016J$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\u0013\u0010\u0018\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0016R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u0004\u0018\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010%\u001a\u0004\u0018\u00010\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u001a\u0010*\u001a\u00020\u00008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b'\u0010&\u001a\u0004\b(\u0010)¨\u0006."}, d2 = {"Lkotlinx/coroutines/android/b;", "Lkotlinx/coroutines/android/c;", "Lkotlinx/coroutines/a1;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "u0", "", "isDispatchNeeded", "dispatch", "", "timeMillis", "Lkotlinx/coroutines/q;", "continuation", "r", "Lkotlinx/coroutines/l1;", "I", "", "toString", "", "other", "equals", "", "hashCode", "Landroid/os/Handler;", "a", "Landroid/os/Handler;", "handler", "b", "Ljava/lang/String;", "name", "c", "Z", "invokeImmediately", "_immediate", "Lkotlinx/coroutines/android/b;", "d", "v0", "()Lkotlinx/coroutines/android/b;", "immediate", "<init>", "(Landroid/os/Handler;Ljava/lang/String;Z)V", "(Landroid/os/Handler;Ljava/lang/String;)V", "kotlinx-coroutines-android"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b extends c implements a1 {
    @h
    private volatile b _immediate;
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Handler f84784a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final String f84785b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f84786c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final b f84787d;

    /* compiled from: Runnable.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"", "run", "()V", "kotlinx/coroutines/f3$a", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q f84788a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f84789b;

        public a(q qVar, b bVar) {
            this.f84788a = qVar;
            this.f84789b = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f84788a.B(this.f84789b, Unit.INSTANCE);
        }
    }

    /* compiled from: HandlerDispatcher.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: kotlinx.coroutines.android.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0723b extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f84791b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0723b(Runnable runnable) {
            super(1);
            this.f84791b = runnable;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@h Throwable th) {
            b.this.f84784a.removeCallbacks(this.f84791b);
        }
    }

    private b(Handler handler, String str, boolean z9) {
        super(null);
        this.f84784a = handler;
        this.f84785b = str;
        this.f84786c = z9;
        this._immediate = z9 ? this : null;
        b bVar = this._immediate;
        if (bVar == null) {
            bVar = new b(handler, str, true);
            this._immediate = bVar;
        }
        this.f84787d = bVar;
    }

    private final void u0(CoroutineContext coroutineContext, Runnable runnable) {
        m2.f(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        i1.c().dispatch(coroutineContext, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(b bVar, Runnable runnable) {
        bVar.f84784a.removeCallbacks(runnable);
    }

    @Override // kotlinx.coroutines.android.c, kotlinx.coroutines.a1
    @g
    public l1 I(long j4, @g final Runnable runnable, @g CoroutineContext coroutineContext) {
        long coerceAtMost;
        Handler handler = this.f84784a;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(j4, (long) DurationKt.MAX_MILLIS);
        if (handler.postDelayed(runnable, coerceAtMost)) {
            return new l1() { // from class: kotlinx.coroutines.android.a
                @Override // kotlinx.coroutines.l1
                public final void dispose() {
                    b.w0(b.this, runnable);
                }
            };
        }
        u0(coroutineContext, runnable);
        return x2.f86862a;
    }

    @Override // kotlinx.coroutines.n0
    public void dispatch(@g CoroutineContext coroutineContext, @g Runnable runnable) {
        if (this.f84784a.post(runnable)) {
            return;
        }
        u0(coroutineContext, runnable);
    }

    public boolean equals(@h Object obj) {
        return (obj instanceof b) && ((b) obj).f84784a == this.f84784a;
    }

    public int hashCode() {
        return System.identityHashCode(this.f84784a);
    }

    @Override // kotlinx.coroutines.n0
    public boolean isDispatchNeeded(@g CoroutineContext coroutineContext) {
        return (this.f84786c && Intrinsics.areEqual(Looper.myLooper(), this.f84784a.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.a1
    public void r(long j4, @g q<? super Unit> qVar) {
        long coerceAtMost;
        a aVar = new a(qVar, this);
        Handler handler = this.f84784a;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(j4, (long) DurationKt.MAX_MILLIS);
        if (handler.postDelayed(aVar, coerceAtMost)) {
            qVar.k(new C0723b(aVar));
        } else {
            u0(qVar.getContext(), aVar);
        }
    }

    @Override // kotlinx.coroutines.u2, kotlinx.coroutines.n0
    @g
    public String toString() {
        String q02 = q0();
        if (q02 == null) {
            String str = this.f84785b;
            if (str == null) {
                str = this.f84784a.toString();
            }
            return this.f84786c ? Intrinsics.stringPlus(str, ".immediate") : str;
        }
        return q02;
    }

    @Override // kotlinx.coroutines.android.c
    @g
    /* renamed from: v0 */
    public b r0() {
        return this.f84787d;
    }

    public /* synthetic */ b(Handler handler, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i4 & 2) != 0 ? null : str);
    }

    public b(@g Handler handler, @h String str) {
        this(handler, str, false);
    }
}
