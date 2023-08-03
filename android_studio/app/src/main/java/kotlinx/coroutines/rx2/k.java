package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import io.reactivex.c0;
import io.reactivex.e0;
import io.reactivex.g0;
import io.reactivex.i0;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.y0;

/* compiled from: RxConvert.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a&\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0005*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00062\u0006\u0010\u0002\u001a\u00020\u0001\u001a(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\u0005*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u0002\u001a\u00020\u0001\u001a \u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\b\b\u0000\u0010\u0005*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\f\u001a*\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\b\b\u0000\u0010\u0005*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\r2\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a*\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\"\b\b\u0000\u0010\u0005*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\r2\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a*\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\b\b\u0000\u0010\u0005*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a3\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\"\b\b\u0000\u0010\u0005*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\r2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a3\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\b\b\u0000\u0010\u0005*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\r2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/j2;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lio/reactivex/a;", "b", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/y0;", "Lio/reactivex/q;", "f", "", "Lio/reactivex/i0;", "k", "Lio/reactivex/e0;", "Lkotlinx/coroutines/flow/i;", "c", "Lio/reactivex/z;", "h", "Lio/reactivex/j;", "d", "Lkotlinx/coroutines/channels/f0;", "g", "m", "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/j;", "o", "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/z;", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class k {

    /* compiled from: RxConvert.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxConvertKt$asCompletable$1", f = "RxConvert.kt", i = {}, l = {30}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86557a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j2 f86558b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(j2 j2Var, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f86558b = j2Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f86558b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86557a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                j2 j2Var = this.f86558b;
                this.f86557a = 1;
                if (j2Var.X(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: RxConvert.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxConvertKt$asFlow$1", f = "RxConvert.kt", i = {}, l = {95}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class b extends SuspendLambda implements Function2<d0<? super T>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86559a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f86560b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ e0<T> f86561c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RxConvert.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AtomicReference<io.reactivex.disposables.c> f86562a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(AtomicReference<io.reactivex.disposables.c> atomicReference) {
                super(0);
                this.f86562a = atomicReference;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                io.reactivex.disposables.c andSet = this.f86562a.getAndSet(io.reactivex.disposables.d.a());
                if (andSet == null) {
                    return;
                }
                andSet.dispose();
            }
        }

        /* compiled from: RxConvert.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\r"}, d2 = {"kotlinx/coroutines/rx2/k$b$b", "Lio/reactivex/g0;", "", "onComplete", "Lio/reactivex/disposables/c;", "d", "onSubscribe", "t", "onNext", "(Ljava/lang/Object;)V", "", "e", "onError", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.rx2.k$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0763b implements g0<T> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d0<T> f86563a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ AtomicReference<io.reactivex.disposables.c> f86564b;

            /* JADX WARN: Multi-variable type inference failed */
            C0763b(d0<? super T> d0Var, AtomicReference<io.reactivex.disposables.c> atomicReference) {
                this.f86563a = d0Var;
                this.f86564b = atomicReference;
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                j0.a.a(this.f86563a, null, 1, null);
            }

            @Override // io.reactivex.g0
            public void onError(@m8.g Throwable th) {
                this.f86563a.close(th);
            }

            @Override // io.reactivex.g0
            public void onNext(@m8.g T t9) {
                try {
                    kotlinx.coroutines.channels.r.m0(this.f86563a, t9);
                } catch (InterruptedException unused) {
                }
            }

            @Override // io.reactivex.g0
            public void onSubscribe(@m8.g io.reactivex.disposables.c cVar) {
                if (this.f86564b.compareAndSet(null, cVar)) {
                    return;
                }
                cVar.dispose();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(e0<T> e0Var, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f86561c = e0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f86561c, continuation);
            bVar.f86560b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g d0<? super T> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86559a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                d0 d0Var = (d0) this.f86560b;
                AtomicReference atomicReference = new AtomicReference();
                this.f86561c.subscribe(new C0763b(d0Var, atomicReference));
                a aVar = new a(atomicReference);
                this.f86559a = 1;
                if (b0.a(d0Var, aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: RxConvert.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxConvertKt$asMaybe$1", f = "RxConvert.kt", i = {}, l = {46}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super T>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86565a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ y0<T> f86566b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(y0<? extends T> y0Var, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f86566b = y0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f86566b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super T> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86565a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                y0<T> y0Var = this.f86566b;
                this.f86565a = 1;
                obj = y0Var.D(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxConvert.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxConvertKt$asObservable$1$job$1", f = "RxConvert.kt", i = {0}, l = {114}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86567a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f86568b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i<Object> f86569c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ io.reactivex.b0<Object> f86570d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RxConvert.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class a<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ io.reactivex.b0<T> f86571a;

            a(io.reactivex.b0<T> b0Var) {
                this.f86571a = b0Var;
            }

            @Override // kotlinx.coroutines.flow.j
            @m8.h
            public final Object emit(@m8.g T t9, @m8.g Continuation<? super Unit> continuation) {
                this.f86571a.onNext(t9);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(kotlinx.coroutines.flow.i<Object> iVar, io.reactivex.b0<Object> b0Var, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f86569c = iVar;
            this.f86570d = b0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            d dVar = new d(this.f86569c, this.f86570d, continuation);
            dVar.f86568b = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.f86567a
                r2 = 1
                if (r1 == 0) goto L1d
                if (r1 != r2) goto L15
                java.lang.Object r0 = r6.f86568b
                kotlinx.coroutines.s0 r0 = (kotlinx.coroutines.s0) r0
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L13
                goto L39
            L13:
                r7 = move-exception
                goto L43
            L15:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1d:
                kotlin.ResultKt.throwOnFailure(r7)
                java.lang.Object r7 = r6.f86568b
                kotlinx.coroutines.s0 r7 = (kotlinx.coroutines.s0) r7
                kotlinx.coroutines.flow.i<java.lang.Object> r1 = r6.f86569c     // Catch: java.lang.Throwable -> L3f
                kotlinx.coroutines.rx2.k$d$a r3 = new kotlinx.coroutines.rx2.k$d$a     // Catch: java.lang.Throwable -> L3f
                io.reactivex.b0<java.lang.Object> r4 = r6.f86570d     // Catch: java.lang.Throwable -> L3f
                r3.<init>(r4)     // Catch: java.lang.Throwable -> L3f
                r6.f86568b = r7     // Catch: java.lang.Throwable -> L3f
                r6.f86567a = r2     // Catch: java.lang.Throwable -> L3f
                java.lang.Object r1 = r1.collect(r3, r6)     // Catch: java.lang.Throwable -> L3f
                if (r1 != r0) goto L38
                return r0
            L38:
                r0 = r7
            L39:
                io.reactivex.b0<java.lang.Object> r7 = r6.f86570d     // Catch: java.lang.Throwable -> L13
                r7.onComplete()     // Catch: java.lang.Throwable -> L13
                goto L5c
            L3f:
                r0 = move-exception
                r5 = r0
                r0 = r7
                r7 = r5
            L43:
                boolean r1 = r7 instanceof java.util.concurrent.CancellationException
                if (r1 != 0) goto L57
                io.reactivex.b0<java.lang.Object> r1 = r6.f86570d
                boolean r1 = r1.a(r7)
                if (r1 != 0) goto L5c
                kotlin.coroutines.CoroutineContext r0 = r0.getCoroutineContext()
                kotlinx.coroutines.rx2.e.a(r7, r0)
                goto L5c
            L57:
                io.reactivex.b0<java.lang.Object> r7 = r6.f86570d
                r7.onComplete()
            L5c:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.k.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: RxConvert.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxConvertKt$asObservable$2", f = "RxConvert.kt", i = {0, 1}, l = {148, 149}, m = "invokeSuspend", n = {"$this$rxObservable", "$this$rxObservable"}, s = {"L$0", "L$0"})
    /* loaded from: classes4.dex */
    static final class e extends SuspendLambda implements Function2<d0<? super T>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f86572a;

        /* renamed from: b  reason: collision with root package name */
        int f86573b;

        /* renamed from: c  reason: collision with root package name */
        private /* synthetic */ Object f86574c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f0<T> f86575d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        e(f0<? extends T> f0Var, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f86575d = f0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            e eVar = new e(this.f86575d, continuation);
            eVar.f86574c = obj;
            return eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g d0<? super T> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x004a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0068 -> B:12:0x003e). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f86573b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L30
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1b
                java.lang.Object r1 = r7.f86572a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r4 = r7.f86574c
                kotlinx.coroutines.channels.d0 r4 = (kotlinx.coroutines.channels.d0) r4
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r4
                goto L3d
            L1b:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L23:
                java.lang.Object r1 = r7.f86572a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r4 = r7.f86574c
                kotlinx.coroutines.channels.d0 r4 = (kotlinx.coroutines.channels.d0) r4
                kotlin.ResultKt.throwOnFailure(r8)
                r5 = r7
                goto L4f
            L30:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f86574c
                kotlinx.coroutines.channels.d0 r8 = (kotlinx.coroutines.channels.d0) r8
                kotlinx.coroutines.channels.f0<T> r1 = r7.f86575d
                kotlinx.coroutines.channels.o r1 = r1.iterator()
            L3d:
                r4 = r7
            L3e:
                r4.f86574c = r8
                r4.f86572a = r1
                r4.f86573b = r3
                java.lang.Object r5 = r1.b(r4)
                if (r5 != r0) goto L4b
                return r0
            L4b:
                r6 = r4
                r4 = r8
                r8 = r5
                r5 = r6
            L4f:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 == 0) goto L6b
                java.lang.Object r8 = r1.next()
                r5.f86574c = r4
                r5.f86572a = r1
                r5.f86573b = r2
                java.lang.Object r8 = r4.send(r8, r5)
                if (r8 != r0) goto L68
                return r0
            L68:
                r8 = r4
                r4 = r5
                goto L3e
            L6b:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.k.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: RxConvert.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxConvertKt$asSingle$1", f = "RxConvert.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class f extends SuspendLambda implements Function2<s0, Continuation<? super T>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86576a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ y0<T> f86577b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        f(y0<? extends T> y0Var, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f86577b = y0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f86577b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super T> continuation) {
            return ((f) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86576a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                y0<T> y0Var = this.f86577b;
                this.f86576a = 1;
                obj = y0Var.D(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    @m8.g
    public static final io.reactivex.a b(@m8.g j2 j2Var, @m8.g CoroutineContext coroutineContext) {
        return i.b(coroutineContext, new a(j2Var, null));
    }

    @m8.g
    public static final <T> kotlinx.coroutines.flow.i<T> c(@m8.g e0<T> e0Var) {
        return kotlinx.coroutines.flow.k.s(new b(e0Var, null));
    }

    @m8.g
    public static final <T> io.reactivex.j<T> d(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g CoroutineContext coroutineContext) {
        return io.reactivex.j.Y2(kotlinx.coroutines.reactive.n.c(iVar, coroutineContext));
    }

    public static /* synthetic */ io.reactivex.j e(kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return d(iVar, coroutineContext);
    }

    @m8.g
    public static final <T> io.reactivex.q<T> f(@m8.g y0<? extends T> y0Var, @m8.g CoroutineContext coroutineContext) {
        return o.b(coroutineContext, new c(y0Var, null));
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of Flow", replaceWith = @ReplaceWith(expression = "this.consumeAsFlow().asObservable(context)", imports = {"kotlinx.coroutines.flow.consumeAsFlow"}))
    @m8.g
    public static final <T> io.reactivex.z<T> g(@m8.g f0<? extends T> f0Var, @m8.g CoroutineContext coroutineContext) {
        return r.b(coroutineContext, new e(f0Var, null));
    }

    @m8.g
    public static final <T> io.reactivex.z<T> h(@m8.g final kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g final CoroutineContext coroutineContext) {
        return io.reactivex.z.create(new c0() { // from class: kotlinx.coroutines.rx2.j
            @Override // io.reactivex.c0
            public final void a(io.reactivex.b0 b0Var) {
                k.j(CoroutineContext.this, iVar, b0Var);
            }
        });
    }

    public static /* synthetic */ io.reactivex.z i(kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return h(iVar, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(CoroutineContext coroutineContext, kotlinx.coroutines.flow.i iVar, io.reactivex.b0 b0Var) {
        b0Var.c(new kotlinx.coroutines.rx2.d(kotlinx.coroutines.j.d(a2.f84781a, i1.g().plus(coroutineContext), CoroutineStart.ATOMIC, new d(iVar, b0Var, null))));
    }

    @m8.g
    public static final <T> i0<T> k(@m8.g y0<? extends T> y0Var, @m8.g CoroutineContext coroutineContext) {
        return w.b(coroutineContext, new f(y0Var, null));
    }

    public static /* synthetic */ io.reactivex.j p(kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return d(iVar, coroutineContext);
    }

    public static /* synthetic */ io.reactivex.z q(kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return h(iVar, coroutineContext);
    }
}
