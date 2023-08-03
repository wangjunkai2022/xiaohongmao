package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Await.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002\b\u0004B\u001d\u0012\u0014\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\"\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/e;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "b", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lkotlinx/coroutines/y0;", "a", "[Lkotlinx/coroutines/y0;", "deferreds", "<init>", "([Lkotlinx/coroutines/y0;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e<T> {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ AtomicIntegerFieldUpdater f85238b = AtomicIntegerFieldUpdater.newUpdater(e.class, "notCompletedCount");
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final y0<T>[] f85239a;
    @m8.g
    volatile /* synthetic */ int notCompletedCount;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Await.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R \u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R<\u0010\u001b\u001a\u000e\u0018\u00010\u0014R\b\u0012\u0004\u0012\u00028\u00000\u00152\u0012\u0010\u0016\u001a\u000e\u0018\u00010\u0014R\b\u0012\u0004\u0012\u00028\u00000\u00158F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/e$a;", "Lkotlinx/coroutines/p2;", "", "cause", "", "g0", "(Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/q;", "", "e", "Lkotlinx/coroutines/q;", "continuation", "Lkotlinx/coroutines/l1;", "f", "Lkotlinx/coroutines/l1;", "k0", "()Lkotlinx/coroutines/l1;", "m0", "(Lkotlinx/coroutines/l1;)V", "handle", "Lkotlinx/coroutines/e$b;", "Lkotlinx/coroutines/e;", "value", "j0", "()Lkotlinx/coroutines/e$b;", "l0", "(Lkotlinx/coroutines/e$b;)V", "disposer", "<init>", "(Lkotlinx/coroutines/e;Lkotlinx/coroutines/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class a extends p2 {
        @m8.g
        private volatile /* synthetic */ Object _disposer = null;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final q<List<? extends T>> f85240e;

        /* renamed from: f  reason: collision with root package name */
        public l1 f85241f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g q<? super List<? extends T>> qVar) {
            this.f85240e = qVar;
        }

        @Override // kotlinx.coroutines.g0
        public void g0(@m8.h Throwable th) {
            if (th != null) {
                Object l10 = this.f85240e.l(th);
                if (l10 != null) {
                    this.f85240e.I(l10);
                    e<T>.b j02 = j0();
                    if (j02 == null) {
                        return;
                    }
                    j02.b();
                    return;
                }
                return;
            }
            if (e.f85238b.decrementAndGet(e.this) == 0) {
                q<List<? extends T>> qVar = this.f85240e;
                Result.Companion companion = Result.Companion;
                y0[] y0VarArr = ((e) e.this).f85239a;
                ArrayList arrayList = new ArrayList(y0VarArr.length);
                int i4 = 0;
                int length = y0VarArr.length;
                while (i4 < length) {
                    y0 y0Var = y0VarArr[i4];
                    i4++;
                    arrayList.add(y0Var.p());
                }
                qVar.resumeWith(Result.m70constructorimpl(arrayList));
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            g0(th);
            return Unit.INSTANCE;
        }

        @m8.h
        public final e<T>.b j0() {
            return (b) this._disposer;
        }

        @m8.g
        public final l1 k0() {
            l1 l1Var = this.f85241f;
            if (l1Var != null) {
                return l1Var;
            }
            Intrinsics.throwUninitializedPropertyAccessException("handle");
            return null;
        }

        public final void l0(@m8.h e<T>.b bVar) {
            this._disposer = bVar;
        }

        public final void m0(@m8.g l1 l1Var) {
            this.f85241f = l1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Await.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0010\r\u001a\u0012\u0012\u000e\u0012\f0\nR\b\u0012\u0004\u0012\u00028\u00000\u000b0\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0013\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\b\u0010\b\u001a\u00020\u0007H\u0016R$\u0010\r\u001a\u0012\u0012\u000e\u0012\f0\nR\b\u0012\u0004\u0012\u00028\u00000\u000b0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/e$b;", "Lkotlinx/coroutines/o;", "", "b", "", "cause", "a", "", "toString", "", "Lkotlinx/coroutines/e$a;", "Lkotlinx/coroutines/e;", "[Lkotlinx/coroutines/e$a;", "nodes", "<init>", "(Lkotlinx/coroutines/e;[Lkotlinx/coroutines/e$a;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class b extends o {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final e<T>.a[] f85243a;

        public b(@m8.g e<T>.a[] aVarArr) {
            this.f85243a = aVarArr;
        }

        @Override // kotlinx.coroutines.p
        public void a(@m8.h Throwable th) {
            b();
        }

        public final void b() {
            e<T>.a[] aVarArr = this.f85243a;
            int length = aVarArr.length;
            int i4 = 0;
            while (i4 < length) {
                e<T>.a aVar = aVarArr[i4];
                i4++;
                aVar.k0().dispose();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            a(th);
            return Unit.INSTANCE;
        }

        @m8.g
        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f85243a + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(@m8.g y0<? extends T>[] y0VarArr) {
        this.f85239a = y0VarArr;
        this.notCompletedCount = y0VarArr.length;
    }

    @m8.h
    public final Object b(@m8.g Continuation<? super List<? extends T>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r rVar = new r(intercepted, 1);
        rVar.C();
        int length = this.f85239a.length;
        a[] aVarArr = new a[length];
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            y0 y0Var = this.f85239a[i10];
            y0Var.start();
            a aVar = new a(rVar);
            aVar.m0(y0Var.H(aVar));
            Unit unit = Unit.INSTANCE;
            aVarArr[i10] = aVar;
        }
        e<T>.b bVar = new b(aVarArr);
        while (i4 < length) {
            a aVar2 = aVarArr[i4];
            i4++;
            aVar2.l0(bVar);
        }
        if (rVar.i()) {
            bVar.b();
        } else {
            rVar.k(bVar);
        }
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }
}
