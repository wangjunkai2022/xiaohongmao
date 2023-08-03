package com.im.freechat.domain.usecase.base;

import com.im.freechat.shared.entities.Result;
import com.ksyun.media.player.d.d;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import m8.g;
import m8.h;

/* compiled from: FlowUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0004\u001a\u00028\u0000H¤@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007JN\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00028\u000021\b\u0002\u0010\r\u001a+\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\b¢\u0006\u0002\b\fH\u0086Bø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\t*\u00028\u0001¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/base/FlowUseCase;", "In", "Out", "", "params", "Lkotlinx/coroutines/flow/i;", "b", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/Result;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "onData", "c", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "(Ljava/lang/Object;)Lcom/im/freechat/shared/entities/Result;", "<init>", "()V", d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class FlowUseCase<In, Out> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowUseCase.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.base.FlowUseCase", f = "FlowUseCase.kt", i = {0, 0, 0}, l = {20, 32}, m = "invoke", n = {"this", "onData", "$this$invoke_u24lambda_u2d1"}, s = {"L$0", "L$1", "L$2"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41429a;

        /* renamed from: b  reason: collision with root package name */
        Object f41430b;

        /* renamed from: c  reason: collision with root package name */
        Object f41431c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41432d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ FlowUseCase<In, Out> f41433e;

        /* renamed from: f  reason: collision with root package name */
        int f41434f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(FlowUseCase<In, Out> flowUseCase, Continuation<? super a> continuation) {
            super(continuation);
            this.f41433e = flowUseCase;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            this.f41432d = obj;
            this.f41434f |= Integer.MIN_VALUE;
            return this.f41433e.c(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0007\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"}, d2 = {"In", "Out", "Lkotlinx/coroutines/flow/j;", "Lcom/im/freechat/shared/entities/Result;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.usecase.base.FlowUseCase$invoke$2$2", f = "FlowUseCase.kt", i = {}, l = {24}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function3<j<? super Result<? extends Out>>, Throwable, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41435a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41436b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2<Result<? extends Out>, Continuation<? super Unit>, Object> f41437c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Function2<? super Result<? extends Out>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super b> continuation) {
            super(3, continuation);
            this.f41437c = function2;
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Throwable th, Continuation<? super Unit> continuation) {
            return invoke((j) ((j) obj), th, continuation);
        }

        @h
        public final Object invoke(@g j<? super Result<? extends Out>> jVar, @g Throwable th, @h Continuation<? super Unit> continuation) {
            b bVar = new b(this.f41437c, continuation);
            bVar.f41436b = th;
            return bVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41435a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Throwable th = (Throwable) this.f41436b;
                Function2<Result<? extends Out>, Continuation<? super Unit>, Object> function2 = this.f41437c;
                if (function2 != null) {
                    Result<? extends Out> failure = Result.Companion.failure(th);
                    this.f41435a = 1;
                    if (function2.invoke(failure, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"In", "Out", "Lcom/im/freechat/shared/entities/Result;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.usecase.base.FlowUseCase$invoke$2$3", f = "FlowUseCase.kt", i = {}, l = {26}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<Result<? extends Out>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41438a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41439b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2<Result<? extends Out>, Continuation<? super Unit>, Object> f41440c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(Function2<? super Result<? extends Out>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f41440c = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            c cVar = new c(this.f41440c, continuation);
            cVar.f41439b = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        /* renamed from: h */
        public final Object invoke(@g Result<? extends Out> result, @h Continuation<? super Unit> continuation) {
            return ((c) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41438a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Result<? extends Out> result = (Result) this.f41439b;
                Function2<Result<? extends Out>, Continuation<? super Unit>, Object> function2 = this.f41440c;
                if (function2 != null) {
                    this.f41438a = 1;
                    if (function2.invoke(result, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object d(FlowUseCase flowUseCase, Object obj, Function2 function2, Continuation continuation, int i4, Object obj2) {
        if (obj2 == null) {
            if ((i4 & 2) != 0) {
                function2 = null;
            }
            return flowUseCase.c(obj, function2, continuation);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
    }

    @g
    public final Result<Out> a(Out out) {
        return Result.Companion.success(out);
    }

    @h
    protected abstract Object b(In in, @g Continuation<? super i<? extends Out>> continuation);

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:(3:11|12|13)(2:15|16))(2:17|18))(3:21|22|(1:24)(1:25))|19|12|13))|32|6|7|(0)(0)|19|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0091, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0092, code lost:
        r8.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0095, code lost:
        if (r9 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0097, code lost:
        r8 = com.im.freechat.shared.entities.Result.Companion.failure(r8);
        r0.f41429a = null;
        r0.f41430b = null;
        r0.f41431c = null;
        r0.f41434f = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a9, code lost:
        if (r9.invoke(r8, r0) == r1) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ab, code lost:
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(In r8, @m8.h kotlin.jvm.functions.Function2<? super com.im.freechat.shared.entities.Result<? extends Out>, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r9, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.im.freechat.domain.usecase.base.FlowUseCase.a
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.domain.usecase.base.FlowUseCase$a r0 = (com.im.freechat.domain.usecase.base.FlowUseCase.a) r0
            int r1 = r0.f41434f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41434f = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.base.FlowUseCase$a r0 = new com.im.freechat.domain.usecase.base.FlowUseCase$a
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.f41432d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41434f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L46
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            kotlin.ResultKt.throwOnFailure(r10)
            goto Lac
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            java.lang.Object r8 = r0.f41431c
            kotlinx.coroutines.s0 r8 = (kotlinx.coroutines.s0) r8
            java.lang.Object r9 = r0.f41430b
            kotlin.jvm.functions.Function2 r9 = (kotlin.jvm.functions.Function2) r9
            java.lang.Object r2 = r0.f41429a
            com.im.freechat.domain.usecase.base.FlowUseCase r2 = (com.im.freechat.domain.usecase.base.FlowUseCase) r2
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L91
            goto L64
        L46:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlin.coroutines.CoroutineContext r10 = r0.getContext()     // Catch: java.lang.Exception -> L91
            kotlinx.coroutines.s0 r10 = kotlinx.coroutines.t0.a(r10)     // Catch: java.lang.Exception -> L91
            r0.f41429a = r7     // Catch: java.lang.Exception -> L91
            r0.f41430b = r9     // Catch: java.lang.Exception -> L91
            r0.f41431c = r10     // Catch: java.lang.Exception -> L91
            r0.f41434f = r4     // Catch: java.lang.Exception -> L91
            java.lang.Object r8 = r7.b(r8, r0)     // Catch: java.lang.Exception -> L91
            if (r8 != r1) goto L60
            return r1
        L60:
            r2 = r7
            r6 = r10
            r10 = r8
            r8 = r6
        L64:
            kotlinx.coroutines.flow.i r10 = (kotlinx.coroutines.flow.i) r10     // Catch: java.lang.Exception -> L91
            com.im.freechat.domain.usecase.base.FlowUseCase$invoke$lambda-1$$inlined$map$1 r4 = new com.im.freechat.domain.usecase.base.FlowUseCase$invoke$lambda-1$$inlined$map$1     // Catch: java.lang.Exception -> L91
            r4.<init>()     // Catch: java.lang.Exception -> L91
            com.im.freechat.domain.usecase.base.FlowUseCase$b r10 = new com.im.freechat.domain.usecase.base.FlowUseCase$b     // Catch: java.lang.Exception -> L91
            r10.<init>(r9, r5)     // Catch: java.lang.Exception -> L91
            kotlinx.coroutines.flow.i r10 = kotlinx.coroutines.flow.k.u(r4, r10)     // Catch: java.lang.Exception -> L91
            kotlinx.coroutines.n0 r2 = kotlinx.coroutines.i1.c()     // Catch: java.lang.Exception -> L91
            kotlinx.coroutines.flow.i r10 = kotlinx.coroutines.flow.k.N0(r10, r2)     // Catch: java.lang.Exception -> L91
            com.im.freechat.domain.usecase.base.FlowUseCase$c r2 = new com.im.freechat.domain.usecase.base.FlowUseCase$c     // Catch: java.lang.Exception -> L91
            r2.<init>(r9, r5)     // Catch: java.lang.Exception -> L91
            kotlinx.coroutines.flow.i r10 = kotlinx.coroutines.flow.k.e1(r10, r2)     // Catch: java.lang.Exception -> L91
            kotlinx.coroutines.u2 r2 = kotlinx.coroutines.i1.e()     // Catch: java.lang.Exception -> L91
            kotlinx.coroutines.flow.i r10 = kotlinx.coroutines.flow.k.N0(r10, r2)     // Catch: java.lang.Exception -> L91
            kotlinx.coroutines.flow.k.U0(r10, r8)     // Catch: java.lang.Exception -> L91
            goto Lac
        L91:
            r8 = move-exception
            r8.printStackTrace()
            if (r9 == 0) goto Lac
            com.im.freechat.shared.entities.Result$Companion r10 = com.im.freechat.shared.entities.Result.Companion
            com.im.freechat.shared.entities.Result r8 = r10.failure(r8)
            r0.f41429a = r5
            r0.f41430b = r5
            r0.f41431c = r5
            r0.f41434f = r3
            java.lang.Object r8 = r9.invoke(r8, r0)
            if (r8 != r1) goto Lac
            return r1
        Lac:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.base.FlowUseCase.c(java.lang.Object, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
