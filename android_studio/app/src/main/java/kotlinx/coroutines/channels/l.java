package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.q2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.z2;

/* compiled from: Broadcast.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a2\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007\u001a \u0001\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042-\b\u0002\u0010\u0012\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u00112/\b\u0001\u0010\u0018\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0013¢\u0006\u0002\b\u0017H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/f0;", "", "capacity", "Lkotlinx/coroutines/CoroutineStart;", com.google.android.exoplayer2.text.ttml.d.f25725o0, "Lkotlinx/coroutines/channels/i;", "b", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "onCompletion", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/d0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "a", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/i;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class l {

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\t¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/p0$a", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext;", "context", "", h4.b.f83287e, "", "handleException", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
        public a(CoroutineExceptionHandler.b bVar) {
            super(bVar);
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(@m8.g CoroutineContext coroutineContext, @m8.g Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Broadcast.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class b extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f0<E> f84870a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(f0<? extends E> f0Var) {
            super(1);
            this.f84870a = f0Var;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h Throwable th) {
            r.b(this.f84870a, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Broadcast.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastKt$broadcast$2", f = "Broadcast.kt", i = {0, 1}, l = {53, 54}, m = "invokeSuspend", n = {"$this$broadcast", "$this$broadcast"}, s = {"L$0", "L$0"})
    /* loaded from: classes4.dex */
    public static final class c extends SuspendLambda implements Function2<d0<? super E>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f84871a;

        /* renamed from: b  reason: collision with root package name */
        int f84872b;

        /* renamed from: c  reason: collision with root package name */
        private /* synthetic */ Object f84873c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f0<E> f84874d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(f0<? extends E> f0Var, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f84874d = f0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            c cVar = new c(this.f84874d, continuation);
            cVar.f84873c = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g d0<? super E> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
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
                int r1 = r7.f84872b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L30
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1b
                java.lang.Object r1 = r7.f84871a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r4 = r7.f84873c
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
                java.lang.Object r1 = r7.f84871a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r4 = r7.f84873c
                kotlinx.coroutines.channels.d0 r4 = (kotlinx.coroutines.channels.d0) r4
                kotlin.ResultKt.throwOnFailure(r8)
                r5 = r7
                goto L4f
            L30:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f84873c
                kotlinx.coroutines.channels.d0 r8 = (kotlinx.coroutines.channels.d0) r8
                kotlinx.coroutines.channels.f0<E> r1 = r7.f84874d
                kotlinx.coroutines.channels.o r1 = r1.iterator()
            L3d:
                r4 = r7
            L3e:
                r4.f84873c = r8
                r4.f84871a = r1
                r4.f84872b = r3
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
                r5.f84873c = r4
                r5.f84871a = r1
                r5.f84872b = r2
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
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @z2
    @m8.g
    public static final <E> i<E> a(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, int i4, @m8.g CoroutineStart coroutineStart, @m8.h Function1<? super Throwable, Unit> function1, @BuilderInference @m8.g Function2<? super d0<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        k kVar;
        CoroutineContext e4 = kotlinx.coroutines.m0.e(s0Var, coroutineContext);
        i a10 = j.a(i4);
        if (coroutineStart.isLazy()) {
            kVar = new z(e4, a10, function2);
        } else {
            kVar = new k(e4, a10, true);
        }
        if (function1 != null) {
            ((q2) kVar).H(function1);
        }
        ((kotlinx.coroutines.a) kVar).o1(coroutineStart, kVar, function2);
        return kVar;
    }

    @z2
    @m8.g
    public static final <E> i<E> b(@m8.g f0<? extends E> f0Var, int i4, @m8.g CoroutineStart coroutineStart) {
        return c(t0.m(t0.m(a2.f84781a, i1.g()), new a(CoroutineExceptionHandler.f84777j2)), null, i4, coroutineStart, new b(f0Var), new c(f0Var, null), 1, null);
    }

    public static /* synthetic */ i c(s0 s0Var, CoroutineContext coroutineContext, int i4, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i11 = (i10 & 2) != 0 ? 1 : i4;
        if ((i10 & 4) != 0) {
            coroutineStart = CoroutineStart.LAZY;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i10 & 8) != 0) {
            function1 = null;
        }
        return a(s0Var, coroutineContext2, i11, coroutineStart2, function1, function2);
    }

    public static /* synthetic */ i d(f0 f0Var, int i4, CoroutineStart coroutineStart, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 1;
        }
        if ((i10 & 2) != 0) {
            coroutineStart = CoroutineStart.LAZY;
        }
        return b(f0Var, i4, coroutineStart);
    }
}
