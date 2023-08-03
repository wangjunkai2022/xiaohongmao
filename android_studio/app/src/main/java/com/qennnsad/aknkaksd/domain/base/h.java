package com.qennnsad.aknkaksd.domain.base;

import io.reactivex.g0;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.s0;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: In
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: RxUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0004\u001a\u00028\u0000H$¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b2\u0006\u0010\u0004\u001a\u00028\u0000H\u0086Bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/h;", "In", "Out", "", "params", "Lio/reactivex/z;", "a", "(Ljava/lang/Object;)Lio/reactivex/z;", "Lkotlin/Result;", "b", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class h<In, Out> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxUseCase.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.qennnsad.aknkaksd.domain.base.RxUseCase", f = "RxUseCase.kt", i = {}, l = {20}, m = "invoke-gIAlu-s", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f47941a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h<In, Out> f47942b;

        /* renamed from: c  reason: collision with root package name */
        int f47943c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(h<In, Out> hVar, Continuation<? super a> continuation) {
            super(continuation);
            this.f47942b = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f47941a = obj;
            this.f47943c |= Integer.MIN_VALUE;
            Object b10 = this.f47942b.b(null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return b10 == coroutine_suspended ? b10 : Result.m69boximpl(b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"In", "Out", "Lkotlinx/coroutines/s0;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.domain.base.RxUseCase$invoke$data$1", f = "RxUseCase.kt", i = {}, l = {21}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Out>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f47944a;

        /* renamed from: b  reason: collision with root package name */
        Object f47945b;

        /* renamed from: c  reason: collision with root package name */
        int f47946c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h<In, Out> f47947d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ In f47948e;

        /* compiled from: RxUseCase.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/qennnsad/aknkaksd/domain/base/h$b$a", "Lio/reactivex/g0;", "Lio/reactivex/disposables/c;", "d", "", "onSubscribe", "t", "onNext", "(Ljava/lang/Object;)V", "", "e", "onError", "onComplete", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a implements g0<Out> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AtomicReference<io.reactivex.disposables.c> f47949a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Continuation<Out> f47950b;

            /* JADX WARN: Multi-variable type inference failed */
            a(AtomicReference<io.reactivex.disposables.c> atomicReference, Continuation<? super Out> continuation) {
                this.f47949a = atomicReference;
                this.f47950b = continuation;
            }

            @Override // io.reactivex.g0
            public void onComplete() {
            }

            @Override // io.reactivex.g0
            public void onError(@m8.g Throwable e4) {
                Intrinsics.checkNotNullParameter(e4, "e");
                Continuation<Out> continuation = this.f47950b;
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(e4)));
            }

            @Override // io.reactivex.g0
            public void onNext(Out out) {
                Continuation<Out> continuation = this.f47950b;
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(out));
            }

            @Override // io.reactivex.g0
            public void onSubscribe(@m8.g io.reactivex.disposables.c d4) {
                Intrinsics.checkNotNullParameter(d4, "d");
                if (this.f47949a.compareAndSet(null, d4)) {
                    return;
                }
                d4.dispose();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(h<In, Out> hVar, In in, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f47947d = hVar;
            this.f47948e = in;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f47947d, this.f47948e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Object obj) {
            return invoke(s0Var, (Continuation) ((Continuation) obj));
        }

        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Out> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Continuation intercepted;
            Object coroutine_suspended2;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f47946c;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                h<In, Out> hVar = this.f47947d;
                In in = this.f47948e;
                this.f47944a = hVar;
                this.f47945b = in;
                this.f47946c = 1;
                intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this);
                SafeContinuation safeContinuation = new SafeContinuation(intercepted);
                hVar.a(in).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new a(new AtomicReference(), safeContinuation));
                obj = safeContinuation.getOrThrow();
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (obj == coroutine_suspended2) {
                    DebugProbesKt.probeCoroutineSuspended(this);
                }
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                h hVar2 = (h) this.f47944a;
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public h() {
    }

    @m8.g
    protected abstract z<Out> a(In in);

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(In r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<? extends Out>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.qennnsad.aknkaksd.domain.base.h.a
            if (r0 == 0) goto L13
            r0 = r7
            com.qennnsad.aknkaksd.domain.base.h$a r0 = (com.qennnsad.aknkaksd.domain.base.h.a) r0
            int r1 = r0.f47943c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47943c = r1
            goto L18
        L13:
            com.qennnsad.aknkaksd.domain.base.h$a r0 = new com.qennnsad.aknkaksd.domain.base.h$a
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f47941a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f47943c
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L29
            goto L49
        L29:
            r6 = move-exception
            goto L50
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.n0 r7 = kotlinx.coroutines.i1.c()     // Catch: java.lang.Throwable -> L29
            com.qennnsad.aknkaksd.domain.base.h$b r2 = new com.qennnsad.aknkaksd.domain.base.h$b     // Catch: java.lang.Throwable -> L29
            r4 = 0
            r2.<init>(r5, r6, r4)     // Catch: java.lang.Throwable -> L29
            r0.f47943c = r3     // Catch: java.lang.Throwable -> L29
            java.lang.Object r7 = kotlinx.coroutines.j.h(r7, r2, r0)     // Catch: java.lang.Throwable -> L29
            if (r7 != r1) goto L49
            return r1
        L49:
            kotlin.Result$Companion r6 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L29
            java.lang.Object r6 = kotlin.Result.m70constructorimpl(r7)     // Catch: java.lang.Throwable -> L29
            return r6
        L50:
            kotlin.Result$Companion r7 = kotlin.Result.Companion
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r6)
            java.lang.Object r6 = kotlin.Result.m70constructorimpl(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.domain.base.h.b(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
