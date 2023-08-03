package kotlinx.coroutines.sync;

import com.facebook.common.callercontext.ContextChain;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.internal.h0;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.v;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.q;
import kotlinx.coroutines.s;

/* compiled from: Mutex.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u00012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00010\u0002:\u0006\t\u001a\u000b\u0015\u0014\u001fB\u000f\u0012\u0006\u0010\"\u001a\u00020\b¢\u0006\u0004\b#\u0010$J\u001d\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u0007JT\u0010\u0012\u001a\u00020\u0005\"\u0004\b\u0000\u0010\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\"\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0016ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\nJ\u0019\u0010\u0015\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001bR\"\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 \u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"Lkotlinx/coroutines/sync/d;", "Lkotlinx/coroutines/sync/c;", "Lkotlinx/coroutines/selects/e;", "", "owner", "", ContextChain.TAG_INFRA, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "a", "(Ljava/lang/Object;)Z", "c", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", "n", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "e", "d", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "b", "()Z", "isLocked", "h", "isLockedEmptyQueueState", "f", "()Lkotlinx/coroutines/selects/e;", "onLock", "locked", "<init>", "(Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class d implements kotlinx.coroutines.sync.c, kotlinx.coroutines.selects.e<Object, kotlinx.coroutines.sync.c> {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f86748a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_state");
    @m8.g
    volatile /* synthetic */ Object _state;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u001f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/sync/d$a;", "Lkotlinx/coroutines/sync/d$c;", "Lkotlinx/coroutines/sync/d;", "", "i0", "", "g0", "", "toString", "Lkotlinx/coroutines/q;", "g", "Lkotlinx/coroutines/q;", "cont", "", "owner", "<init>", "(Lkotlinx/coroutines/sync/d;Ljava/lang/Object;Lkotlinx/coroutines/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class a extends c {
        @m8.g

        /* renamed from: g  reason: collision with root package name */
        private final q<Unit> f86749g;

        /* compiled from: Mutex.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* renamed from: kotlinx.coroutines.sync.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0766a extends Lambda implements Function1<Throwable, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f86751a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a f86752b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0766a(d dVar, a aVar) {
                super(1);
                this.f86751a = dVar;
                this.f86752b = aVar;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.g Throwable th) {
                this.f86751a.d(this.f86752b.f86759d);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.h Object obj, @m8.g q<? super Unit> qVar) {
            super(obj);
            this.f86749g = qVar;
        }

        @Override // kotlinx.coroutines.sync.d.c
        public void g0() {
            this.f86749g.I(s.f86625d);
        }

        @Override // kotlinx.coroutines.sync.d.c
        public boolean i0() {
            return h0() && this.f86749g.z(Unit.INSTANCE, null, new C0766a(d.this, this)) != null;
        }

        @Override // kotlinx.coroutines.internal.x
        @m8.g
        public String toString() {
            return "LockCont[" + this.f86759d + ", " + this.f86749g + "] for " + d.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00060\u0002R\u00020\u0003BF\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0011\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\n\u0012\"\u0010\u0014\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000eø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\n8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR3\u0010\u0014\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e8\u0006X\u0087\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/sync/d$b;", "R", "Lkotlinx/coroutines/sync/d$c;", "Lkotlinx/coroutines/sync/d;", "", "i0", "", "g0", "", "toString", "Lkotlinx/coroutines/selects/f;", "g", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlinx/coroutines/sync/c;", "Lkotlin/coroutines/Continuation;", "", "h", "Lkotlin/jvm/functions/Function2;", "block", "owner", "<init>", "(Lkotlinx/coroutines/sync/d;Ljava/lang/Object;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class b<R> extends c {
        @JvmField
        @m8.g

        /* renamed from: g  reason: collision with root package name */
        public final kotlinx.coroutines.selects.f<R> f86753g;
        @JvmField
        @m8.g

        /* renamed from: h  reason: collision with root package name */
        public final Function2<kotlinx.coroutines.sync.c, Continuation<? super R>, Object> f86754h;

        /* compiled from: Mutex.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "R", "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes4.dex */
        static final class a extends Lambda implements Function1<Throwable, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f86756a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ b<R> f86757b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(d dVar, b<R> bVar) {
                super(1);
                this.f86756a = dVar;
                this.f86757b = bVar;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.g Throwable th) {
                this.f86756a.d(this.f86757b.f86759d);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(@m8.h Object obj, @m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super kotlinx.coroutines.sync.c, ? super Continuation<? super R>, ? extends Object> function2) {
            super(obj);
            this.f86753g = fVar;
            this.f86754h = function2;
        }

        @Override // kotlinx.coroutines.sync.d.c
        public void g0() {
            z7.a.e(this.f86754h, d.this, this.f86753g.u(), new a(d.this, this));
        }

        @Override // kotlinx.coroutines.sync.d.c
        public boolean i0() {
            return h0() && this.f86753g.t();
        }

        @Override // kotlinx.coroutines.internal.x
        @m8.g
        public String toString() {
            return "LockSelect[" + this.f86759d + ", " + this.f86753g + "] for " + d.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\b¢\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0003H&¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H&¢\u0006\u0004\b\n\u0010\bR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/sync/d$c;", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/l1;", "", "h0", "()Z", "", "dispose", "()V", "i0", "g0", "", "d", "Ljava/lang/Object;", "owner", "<init>", "(Lkotlinx/coroutines/sync/d;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public abstract class c extends x implements l1 {

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f86758f = AtomicIntegerFieldUpdater.newUpdater(c.class, "isTaken");
        @m8.h
        @JvmField

        /* renamed from: d  reason: collision with root package name */
        public final Object f86759d;
        @m8.g
        private volatile /* synthetic */ int isTaken = 0;

        public c(@m8.h Object obj) {
            this.f86759d = obj;
        }

        @Override // kotlinx.coroutines.l1
        public final void dispose() {
            Z();
        }

        public abstract void g0();

        public final boolean h0() {
            return f86758f.compareAndSet(this, 0, 1);
        }

        public abstract boolean i0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/sync/d$d;", "Lkotlinx/coroutines/internal/v;", "", "toString", "", "d", "Ljava/lang/Object;", "owner", "<init>", "(Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* renamed from: kotlinx.coroutines.sync.d$d  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0767d extends v {
        @JvmField
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        public Object f86761d;

        public C0767d(@m8.g Object obj) {
            this.f86761d = obj;
        }

        @Override // kotlinx.coroutines.internal.x
        @m8.g
        public String toString() {
            return "LockedQueue[" + this.f86761d + ']';
        }
    }

    /* compiled from: Mutex.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001:\u0001\bB\u0019\u0012\u0006\u0010\f\u001a\u00020\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016J\u001e\u0010\b\u001a\u00020\u00072\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016R\u0014\u0010\f\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\r¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/sync/d$e;", "Lkotlinx/coroutines/internal/b;", "Lkotlinx/coroutines/internal/d;", "op", "", "c", "failure", "", "a", "Lkotlinx/coroutines/sync/d;", "b", "Lkotlinx/coroutines/sync/d;", "mutex", "Ljava/lang/Object;", "owner", "<init>", "(Lkotlinx/coroutines/sync/d;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    private static final class e extends kotlinx.coroutines.internal.b {
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final d f86762b;
        @m8.h
        @JvmField

        /* renamed from: c  reason: collision with root package name */
        public final Object f86763c;

        /* compiled from: Mutex.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u001e\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/sync/d$e$a;", "Lkotlinx/coroutines/internal/h0;", "", "affected", "c", "Lkotlinx/coroutines/internal/d;", "a", "Lkotlinx/coroutines/internal/d;", "()Lkotlinx/coroutines/internal/d;", "atomicOp", "<init>", "(Lkotlinx/coroutines/sync/d$e;Lkotlinx/coroutines/internal/d;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
        /* loaded from: classes4.dex */
        private final class a extends h0 {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final kotlinx.coroutines.internal.d<?> f86764a;

            public a(@m8.g kotlinx.coroutines.internal.d<?> dVar) {
                this.f86764a = dVar;
            }

            @Override // kotlinx.coroutines.internal.h0
            @m8.g
            public kotlinx.coroutines.internal.d<?> a() {
                return this.f86764a;
            }

            @Override // kotlinx.coroutines.internal.h0
            @m8.h
            public Object c(@m8.h Object obj) {
                Object a10 = a().h() ? kotlinx.coroutines.sync.e.f86774f : a();
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.sync.MutexImpl");
                androidx.concurrent.futures.a.a(d.f86748a, (d) obj, this, a10);
                return null;
            }
        }

        public e(@m8.g d dVar, @m8.h Object obj) {
            this.f86762b = dVar;
            this.f86763c = obj;
        }

        @Override // kotlinx.coroutines.internal.b
        public void a(@m8.g kotlinx.coroutines.internal.d<?> dVar, @m8.h Object obj) {
            kotlinx.coroutines.sync.b bVar;
            if (obj != null) {
                bVar = kotlinx.coroutines.sync.e.f86774f;
            } else {
                Object obj2 = this.f86763c;
                bVar = obj2 == null ? kotlinx.coroutines.sync.e.f86773e : new kotlinx.coroutines.sync.b(obj2);
            }
            androidx.concurrent.futures.a.a(d.f86748a, this.f86762b, dVar, bVar);
        }

        @Override // kotlinx.coroutines.internal.b
        @m8.h
        public Object c(@m8.g kotlinx.coroutines.internal.d<?> dVar) {
            kotlinx.coroutines.sync.b bVar;
            p0 p0Var;
            a aVar = new a(dVar);
            d dVar2 = this.f86762b;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d.f86748a;
            bVar = kotlinx.coroutines.sync.e.f86774f;
            if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, dVar2, bVar, aVar)) {
                return aVar.c(this.f86762b);
            }
            p0Var = kotlinx.coroutines.sync.e.f86769a;
            return p0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016R\u0014\u0010\f\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/sync/d$f;", "Lkotlinx/coroutines/internal/d;", "Lkotlinx/coroutines/sync/d;", "affected", "", "k", "failure", "", "j", "Lkotlinx/coroutines/sync/d$d;", "b", "Lkotlinx/coroutines/sync/d$d;", "queue", "<init>", "(Lkotlinx/coroutines/sync/d$d;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class f extends kotlinx.coroutines.internal.d<d> {
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final C0767d f86766b;

        public f(@m8.g C0767d c0767d) {
            this.f86766b = c0767d;
        }

        @Override // kotlinx.coroutines.internal.d
        /* renamed from: j */
        public void d(@m8.g d dVar, @m8.h Object obj) {
            androidx.concurrent.futures.a.a(d.f86748a, dVar, this, obj == null ? kotlinx.coroutines.sync.e.f86774f : this.f86766b);
        }

        @Override // kotlinx.coroutines.internal.d
        @m8.h
        /* renamed from: k */
        public Object i(@m8.g d dVar) {
            p0 p0Var;
            if (this.f86766b.h0()) {
                return null;
            }
            p0Var = kotlinx.coroutines.sync.e.f86770b;
            return p0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mutex.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class g extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f86768b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(Object obj) {
            super(1);
            this.f86768b = obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g Throwable th) {
            d.this.d(this.f86768b);
        }
    }

    public d(boolean z9) {
        this._state = z9 ? kotlinx.coroutines.sync.e.f86773e : kotlinx.coroutines.sync.e.f86774f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
        kotlinx.coroutines.t.c(r0, r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object i(java.lang.Object r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            kotlin.coroutines.Continuation r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r8)
            kotlinx.coroutines.r r0 = kotlinx.coroutines.t.b(r0)
            kotlinx.coroutines.sync.d$a r1 = new kotlinx.coroutines.sync.d$a
            r1.<init>(r7, r0)
        Ld:
            java.lang.Object r2 = r6._state
            boolean r3 = r2 instanceof kotlinx.coroutines.sync.b
            if (r3 == 0) goto L4a
            r3 = r2
            kotlinx.coroutines.sync.b r3 = (kotlinx.coroutines.sync.b) r3
            java.lang.Object r4 = r3.f86747a
            kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.sync.e.g()
            if (r4 == r5) goto L2b
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = kotlinx.coroutines.sync.d.f86748a
            kotlinx.coroutines.sync.d$d r5 = new kotlinx.coroutines.sync.d$d
            java.lang.Object r3 = r3.f86747a
            r5.<init>(r3)
            androidx.concurrent.futures.a.a(r4, r6, r2, r5)
            goto Ld
        L2b:
            if (r7 != 0) goto L32
            kotlinx.coroutines.sync.b r3 = kotlinx.coroutines.sync.e.c()
            goto L37
        L32:
            kotlinx.coroutines.sync.b r3 = new kotlinx.coroutines.sync.b
            r3.<init>(r7)
        L37:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = kotlinx.coroutines.sync.d.f86748a
            boolean r2 = androidx.concurrent.futures.a.a(r4, r6, r2, r3)
            if (r2 == 0) goto Ld
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            kotlinx.coroutines.sync.d$g r2 = new kotlinx.coroutines.sync.d$g
            r2.<init>(r7)
            r0.r(r1, r2)
            goto L71
        L4a:
            boolean r3 = r2 instanceof kotlinx.coroutines.sync.d.C0767d
            if (r3 == 0) goto L98
            r3 = r2
            kotlinx.coroutines.sync.d$d r3 = (kotlinx.coroutines.sync.d.C0767d) r3
            java.lang.Object r4 = r3.f86761d
            if (r4 == r7) goto L57
            r4 = 1
            goto L58
        L57:
            r4 = 0
        L58:
            if (r4 == 0) goto L88
            r3.F(r1)
            java.lang.Object r3 = r6._state
            if (r3 == r2) goto L6e
            boolean r2 = r1.h0()
            if (r2 != 0) goto L68
            goto L6e
        L68:
            kotlinx.coroutines.sync.d$a r1 = new kotlinx.coroutines.sync.d$a
            r1.<init>(r7, r0)
            goto Ld
        L6e:
            kotlinx.coroutines.t.c(r0, r1)
        L71:
            java.lang.Object r7 = r0.A()
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r7 != r0) goto L7e
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r8)
        L7e:
            java.lang.Object r8 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r7 != r8) goto L85
            return r7
        L85:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L88:
            java.lang.String r8 = "Already locked by "
            java.lang.String r7 = kotlin.jvm.internal.Intrinsics.stringPlus(r8, r7)
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r7 = r7.toString()
            r8.<init>(r7)
            throw r8
        L98:
            boolean r3 = r2 instanceof kotlinx.coroutines.internal.h0
            if (r3 == 0) goto La3
            kotlinx.coroutines.internal.h0 r2 = (kotlinx.coroutines.internal.h0) r2
            r2.c(r6)
            goto Ld
        La3:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Illegal state "
            java.lang.String r8 = kotlin.jvm.internal.Intrinsics.stringPlus(r8, r2)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.d.i(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.sync.c
    public boolean a(@m8.h Object obj) {
        p0 p0Var;
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.b) {
                Object obj3 = ((kotlinx.coroutines.sync.b) obj2).f86747a;
                p0Var = kotlinx.coroutines.sync.e.f86772d;
                if (obj3 != p0Var) {
                    return false;
                }
                if (androidx.concurrent.futures.a.a(f86748a, this, obj2, obj == null ? kotlinx.coroutines.sync.e.f86773e : new kotlinx.coroutines.sync.b(obj))) {
                    return true;
                }
            } else if (obj2 instanceof C0767d) {
                if (((C0767d) obj2).f86761d != obj) {
                    return false;
                }
                throw new IllegalStateException(Intrinsics.stringPlus("Already locked by ", obj).toString());
            } else if (!(obj2 instanceof h0)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj2).toString());
            } else {
                ((h0) obj2).c(this);
            }
        }
    }

    @Override // kotlinx.coroutines.sync.c
    public boolean b() {
        p0 p0Var;
        while (true) {
            Object obj = this._state;
            if (obj instanceof kotlinx.coroutines.sync.b) {
                Object obj2 = ((kotlinx.coroutines.sync.b) obj).f86747a;
                p0Var = kotlinx.coroutines.sync.e.f86772d;
                return obj2 != p0Var;
            } else if (obj instanceof C0767d) {
                return true;
            } else {
                if (!(obj instanceof h0)) {
                    throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj).toString());
                }
                ((h0) obj).c(this);
            }
        }
    }

    @Override // kotlinx.coroutines.sync.c
    @m8.h
    public Object c(@m8.h Object obj, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (a(obj)) {
            return Unit.INSTANCE;
        }
        Object i4 = i(obj, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return i4 == coroutine_suspended ? i4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.sync.c
    public void d(@m8.h Object obj) {
        kotlinx.coroutines.sync.b bVar;
        p0 p0Var;
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.b) {
                if (obj == null) {
                    Object obj3 = ((kotlinx.coroutines.sync.b) obj2).f86747a;
                    p0Var = kotlinx.coroutines.sync.e.f86772d;
                    if (!(obj3 != p0Var)) {
                        throw new IllegalStateException("Mutex is not locked".toString());
                    }
                } else {
                    kotlinx.coroutines.sync.b bVar2 = (kotlinx.coroutines.sync.b) obj2;
                    if (!(bVar2.f86747a == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + bVar2.f86747a + " but expected " + obj).toString());
                    }
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86748a;
                bVar = kotlinx.coroutines.sync.e.f86774f;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj2, bVar)) {
                    return;
                }
            } else if (obj2 instanceof h0) {
                ((h0) obj2).c(this);
            } else if (obj2 instanceof C0767d) {
                if (obj != null) {
                    C0767d c0767d = (C0767d) obj2;
                    if (!(c0767d.f86761d == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + c0767d.f86761d + " but expected " + obj).toString());
                    }
                }
                C0767d c0767d2 = (C0767d) obj2;
                x b02 = c0767d2.b0();
                if (b02 == null) {
                    f fVar = new f(c0767d2);
                    if (androidx.concurrent.futures.a.a(f86748a, this, obj2, fVar) && fVar.c(this) == null) {
                        return;
                    }
                } else {
                    c cVar = (c) b02;
                    if (cVar.i0()) {
                        Object obj4 = cVar.f86759d;
                        if (obj4 == null) {
                            obj4 = kotlinx.coroutines.sync.e.f86771c;
                        }
                        c0767d2.f86761d = obj4;
                        cVar.g0();
                        return;
                    }
                }
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj2).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.sync.c
    public boolean e(@m8.g Object obj) {
        Object obj2 = this._state;
        if (obj2 instanceof kotlinx.coroutines.sync.b) {
            if (((kotlinx.coroutines.sync.b) obj2).f86747a == obj) {
                return true;
            }
        } else if ((obj2 instanceof C0767d) && ((C0767d) obj2).f86761d == obj) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.sync.c
    @m8.g
    public kotlinx.coroutines.selects.e<Object, kotlinx.coroutines.sync.c> f() {
        return this;
    }

    public final boolean h() {
        Object obj = this._state;
        return (obj instanceof C0767d) && ((C0767d) obj).h0();
    }

    @Override // kotlinx.coroutines.selects.e
    public <R> void n(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.h Object obj, @m8.g Function2<? super kotlinx.coroutines.sync.c, ? super Continuation<? super R>, ? extends Object> function2) {
        p0 p0Var;
        p0 p0Var2;
        while (!fVar.h()) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.b) {
                kotlinx.coroutines.sync.b bVar = (kotlinx.coroutines.sync.b) obj2;
                Object obj3 = bVar.f86747a;
                p0Var = kotlinx.coroutines.sync.e.f86772d;
                if (obj3 != p0Var) {
                    androidx.concurrent.futures.a.a(f86748a, this, obj2, new C0767d(bVar.f86747a));
                } else {
                    Object w9 = fVar.w(new e(this, obj));
                    if (w9 == null) {
                        z7.b.d(function2, this, fVar.u());
                        return;
                    } else if (w9 == kotlinx.coroutines.selects.g.d()) {
                        return;
                    } else {
                        p0Var2 = kotlinx.coroutines.sync.e.f86769a;
                        if (w9 != p0Var2 && w9 != kotlinx.coroutines.internal.c.f86247b) {
                            throw new IllegalStateException(Intrinsics.stringPlus("performAtomicTrySelect(TryLockDesc) returned ", w9).toString());
                        }
                    }
                }
            } else if (obj2 instanceof C0767d) {
                C0767d c0767d = (C0767d) obj2;
                if (c0767d.f86761d != obj) {
                    b bVar2 = new b(obj, fVar, function2);
                    c0767d.F(bVar2);
                    if (this._state == obj2 || !bVar2.h0()) {
                        fVar.p(bVar2);
                        return;
                    }
                } else {
                    throw new IllegalStateException(Intrinsics.stringPlus("Already locked by ", obj).toString());
                }
            } else if (!(obj2 instanceof h0)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj2).toString());
            } else {
                ((h0) obj2).c(this);
            }
        }
    }

    @m8.g
    public String toString() {
        while (true) {
            Object obj = this._state;
            if (obj instanceof kotlinx.coroutines.sync.b) {
                return "Mutex[" + ((kotlinx.coroutines.sync.b) obj).f86747a + ']';
            } else if (!(obj instanceof h0)) {
                if (obj instanceof C0767d) {
                    return "Mutex[" + ((C0767d) obj).f86761d + ']';
                }
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj).toString());
            } else {
                ((h0) obj).c(this);
            }
        }
    }
}
