package com.im.freechat.domain.usecase.base;

import com.ksyun.media.player.d.d;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: In
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: SuspendUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u0005\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00028\u0000H¤@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J*\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00072\u0006\u0010\u0004\u001a\u00028\u0000H\u0086Bø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/domain/usecase/base/a;", "In", "Out", "", "params", "b", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Result;", "a", "<init>", "()V", d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class a<In, Out> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SuspendUseCase.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.base.SuspendUseCase", f = "SuspendUseCase.kt", i = {}, l = {16}, m = "invoke-gIAlu-s", n = {}, s = {})
    /* renamed from: com.im.freechat.domain.usecase.base.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0318a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41441a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a<In, Out> f41442b;

        /* renamed from: c  reason: collision with root package name */
        int f41443c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0318a(a<In, Out> aVar, Continuation<? super C0318a> continuation) {
            super(continuation);
            this.f41442b = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            this.f41441a = obj;
            this.f41443c |= Integer.MIN_VALUE;
            Object a10 = this.f41442b.a(null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return a10 == coroutine_suspended ? a10 : Result.m69boximpl(a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SuspendUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"In", "Out", "Lkotlinx/coroutines/s0;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.usecase.base.SuspendUseCase$invoke$result$1", f = "SuspendUseCase.kt", i = {}, l = {17}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Out>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41444a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a<In, Out> f41445b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ In f41446c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(a<In, Out> aVar, In in, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f41445b = aVar;
            this.f41446c = in;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new b(this.f41445b, this.f41446c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Object obj) {
            return invoke(s0Var, (Continuation) ((Continuation) obj));
        }

        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Out> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41444a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a<In, Out> aVar = this.f41445b;
                In in = this.f41446c;
                this.f41444a = 1;
                obj = aVar.b(in, this);
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

    public a() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(In r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<? extends Out>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.im.freechat.domain.usecase.base.a.C0318a
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.domain.usecase.base.a$a r0 = (com.im.freechat.domain.usecase.base.a.C0318a) r0
            int r1 = r0.f41443c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41443c = r1
            goto L18
        L13:
            com.im.freechat.domain.usecase.base.a$a r0 = new com.im.freechat.domain.usecase.base.a$a
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f41441a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41443c
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L29
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
            kotlinx.coroutines.n0 r7 = kotlinx.coroutines.i1.c()     // Catch: java.lang.Exception -> L29
            com.im.freechat.domain.usecase.base.a$b r2 = new com.im.freechat.domain.usecase.base.a$b     // Catch: java.lang.Exception -> L29
            r4 = 0
            r2.<init>(r5, r6, r4)     // Catch: java.lang.Exception -> L29
            r0.f41443c = r3     // Catch: java.lang.Exception -> L29
            java.lang.Object r7 = kotlinx.coroutines.j.h(r7, r2, r0)     // Catch: java.lang.Exception -> L29
            if (r7 != r1) goto L49
            return r1
        L49:
            kotlin.Result$Companion r6 = kotlin.Result.Companion     // Catch: java.lang.Exception -> L29
            java.lang.Object r6 = kotlin.Result.m70constructorimpl(r7)     // Catch: java.lang.Exception -> L29
            return r6
        L50:
            r6.printStackTrace()
            kotlin.Result$Companion r7 = kotlin.Result.Companion
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r6)
            java.lang.Object r6 = kotlin.Result.m70constructorimpl(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.base.a.a(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @h
    protected abstract Object b(In in, @g Continuation<? super Out> continuation);
}
