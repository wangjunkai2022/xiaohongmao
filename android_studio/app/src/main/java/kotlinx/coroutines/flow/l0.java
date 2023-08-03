package kotlinx.coroutines.flow;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;

/* compiled from: Share.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BG\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\u0011\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b¢\u0006\u0002\b\u000eø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u0004H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\tR>\u0010\u0011\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b¢\u0006\u0002\b\u000e8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/flow/l0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/j;", "collector", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "b", "Lkotlin/jvm/functions/Function2;", com.alipay.sdk.packet.d.f6907q, "<init>", "(Lkotlinx/coroutines/flow/j;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class l0<T> implements j<T> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final j<T> f86055a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function2<j<? super T>, Continuation<? super Unit>, Object> f86056b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Share.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", i = {0, 0}, l = {419, TypedValues.Cycle.TYPE_WAVE_PERIOD}, m = "onSubscription", n = {"this", "safeCollector"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86057a;

        /* renamed from: b  reason: collision with root package name */
        Object f86058b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f86059c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ l0<T> f86060d;

        /* renamed from: e  reason: collision with root package name */
        int f86061e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l0<T> l0Var, Continuation<? super a> continuation) {
            super(continuation);
            this.f86060d = l0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86059c = obj;
            this.f86061e |= Integer.MIN_VALUE;
            return this.f86060d.a(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l0(@m8.g j<? super T> jVar, @m8.g Function2<? super j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f86055a = jVar;
        this.f86056b = function2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007a  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(@m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.l0.a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.l0$a r0 = (kotlinx.coroutines.flow.l0.a) r0
            int r1 = r0.f86061e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86061e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.l0$a r0 = new kotlinx.coroutines.flow.l0$a
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f86059c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86061e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L77
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L34:
            java.lang.Object r2 = r0.f86058b
            kotlinx.coroutines.flow.internal.SafeCollector r2 = (kotlinx.coroutines.flow.internal.SafeCollector) r2
            java.lang.Object r4 = r0.f86057a
            kotlinx.coroutines.flow.l0 r4 = (kotlinx.coroutines.flow.l0) r4
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L7d
            goto L5e
        L40:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.flow.internal.SafeCollector r2 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlinx.coroutines.flow.j<T> r7 = r6.f86055a
            kotlin.coroutines.CoroutineContext r5 = r0.getContext()
            r2.<init>(r7, r5)
            kotlin.jvm.functions.Function2<kotlinx.coroutines.flow.j<? super T>, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r7 = r6.f86056b     // Catch: java.lang.Throwable -> L7d
            r0.f86057a = r6     // Catch: java.lang.Throwable -> L7d
            r0.f86058b = r2     // Catch: java.lang.Throwable -> L7d
            r0.f86061e = r4     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r7 = r7.invoke(r2, r0)     // Catch: java.lang.Throwable -> L7d
            if (r7 != r1) goto L5d
            return r1
        L5d:
            r4 = r6
        L5e:
            r2.releaseIntercepted()
            kotlinx.coroutines.flow.j<T> r7 = r4.f86055a
            boolean r2 = r7 instanceof kotlinx.coroutines.flow.l0
            if (r2 == 0) goto L7a
            kotlinx.coroutines.flow.l0 r7 = (kotlinx.coroutines.flow.l0) r7
            r2 = 0
            r0.f86057a = r2
            r0.f86058b = r2
            r0.f86061e = r3
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L77
            return r1
        L77:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L7a:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L7d:
            r7 = move-exception
            r2.releaseIntercepted()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.l0.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.j
    @m8.h
    public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
        return this.f86055a.emit(t9, continuation);
    }
}
