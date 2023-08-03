package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.v0;

/* compiled from: ChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b*\u0010+J\u0010\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0016J&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J&\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH$J!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH¤@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u000e\u001a\u00020\u0012H\u0016J!\u0010\u0017\u001a\u00020\u000f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014J\b\u0010\u001b\u001a\u00020\u0019H\u0016R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001cR\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R9\u0010&\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\"\u0012\u0006\u0012\u0004\u0018\u00010#0!8@X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0014\u0010)\u001a\u00020\u00078@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"Lkotlinx/coroutines/flow/internal/d;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/p;", "Lkotlinx/coroutines/flow/i;", "j", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "a", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/channels/d0;", "scope", "", "h", "(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/channels/f0;", "m", "Lkotlinx/coroutines/flow/j;", "collector", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "f", "toString", "Lkotlin/coroutines/CoroutineContext;", "b", "I", "c", "Lkotlinx/coroutines/channels/BufferOverflow;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "k", "()Lkotlin/jvm/functions/Function2;", "collectToFun", "l", "()I", "produceCapacity", "<init>", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public abstract class d<T> implements p<T> {
    @JvmField
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public final CoroutineContext f85910a;
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final int f85911b;
    @JvmField
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public final BufferOverflow f85912c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChannelFlow.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", i = {}, l = {123}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85913a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f85914b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.j<T> f85915c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ d<T> f85916d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.flow.j<? super T> jVar, d<T> dVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f85915c = jVar;
            this.f85916d = dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f85915c, this.f85916d, continuation);
            aVar.f85914b = obj;
            return aVar;
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
            int i4 = this.f85913a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.j<T> jVar = this.f85915c;
                f0<T> m9 = this.f85916d.m((s0) this.f85914b);
                this.f85913a = 1;
                if (kotlinx.coroutines.flow.k.l0(jVar, m9, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChannelFlow.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/d0;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class b extends SuspendLambda implements Function2<d0<? super T>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85917a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85918b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d<T> f85919c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(d<T> dVar, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f85919c = dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f85919c, continuation);
            bVar.f85918b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
            return invoke((d0) ((d0) obj), continuation);
        }

        @m8.h
        public final Object invoke(@m8.g d0<? super T> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f85917a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                d<T> dVar = this.f85919c;
                this.f85917a = 1;
                if (dVar.h((d0) this.f85918b, this) == coroutine_suspended) {
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

    public d(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        this.f85910a = coroutineContext;
        this.f85911b = i4;
        this.f85912c = bufferOverflow;
    }

    static /* synthetic */ Object g(d dVar, kotlinx.coroutines.flow.j jVar, Continuation continuation) {
        Object coroutine_suspended;
        Object g4 = t0.g(new a(jVar, dVar, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.p
    @m8.g
    public kotlinx.coroutines.flow.i<T> a(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        CoroutineContext plus = coroutineContext.plus(this.f85910a);
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            int i10 = this.f85911b;
            if (i10 != -3) {
                if (i4 != -3) {
                    if (i10 != -2) {
                        if (i4 != -2 && (i10 = i10 + i4) < 0) {
                            i4 = Integer.MAX_VALUE;
                        }
                    }
                }
                i4 = i10;
            }
            bufferOverflow = this.f85912c;
        }
        return (Intrinsics.areEqual(plus, this.f85910a) && i4 == this.f85911b && bufferOverflow == this.f85912c) ? this : i(plus, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.i
    @m8.h
    public Object collect(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
        return g(this, jVar, continuation);
    }

    @m8.h
    protected String f() {
        return null;
    }

    @m8.h
    protected abstract Object h(@m8.g d0<? super T> d0Var, @m8.g Continuation<? super Unit> continuation);

    @m8.g
    protected abstract d<T> i(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow);

    @m8.h
    public kotlinx.coroutines.flow.i<T> j() {
        return null;
    }

    @m8.g
    public final Function2<d0<? super T>, Continuation<? super Unit>, Object> k() {
        return new b(this, null);
    }

    public final int l() {
        int i4 = this.f85911b;
        if (i4 == -3) {
            return -2;
        }
        return i4;
    }

    @m8.g
    public f0<T> m(@m8.g s0 s0Var) {
        return b0.h(s0Var, this.f85910a, l(), this.f85912c, CoroutineStart.ATOMIC, null, k(), 16, null);
    }

    @m8.g
    public String toString() {
        String joinToString$default;
        ArrayList arrayList = new ArrayList(4);
        String f10 = f();
        if (f10 != null) {
            arrayList.add(f10);
        }
        CoroutineContext coroutineContext = this.f85910a;
        if (coroutineContext != EmptyCoroutineContext.INSTANCE) {
            arrayList.add(Intrinsics.stringPlus("context=", coroutineContext));
        }
        int i4 = this.f85911b;
        if (i4 != -3) {
            arrayList.add(Intrinsics.stringPlus("capacity=", Integer.valueOf(i4)));
        }
        BufferOverflow bufferOverflow = this.f85912c;
        if (bufferOverflow != BufferOverflow.SUSPEND) {
            arrayList.add(Intrinsics.stringPlus("onBufferOverflow=", bufferOverflow));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(v0.a(this));
        sb.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null);
        sb.append(joinToString$default);
        sb.append(']');
        return sb.toString();
    }
}
