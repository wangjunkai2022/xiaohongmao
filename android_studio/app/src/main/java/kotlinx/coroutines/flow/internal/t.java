package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: SafeCollector.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\"D\u0010\t\u001a,\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00008\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lkotlin/Function3;", "Lkotlinx/coroutines/flow/j;", "", "Lkotlin/coroutines/Continuation;", "", "a", "Lkotlin/jvm/functions/Function3;", "getEmitFun$annotations", "()V", "emitFun", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class t {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final Function3<kotlinx.coroutines.flow.j<Object>, Object, Continuation<? super Unit>, Object> f86034a = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(a.f86035a, 3);

    /* compiled from: SafeCollector.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    /* synthetic */ class a extends FunctionReferenceImpl implements Function3<kotlinx.coroutines.flow.j<? super Object>, Object, Unit>, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        public static final a f86035a = new a();

        a() {
            super(3, kotlinx.coroutines.flow.j.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: a */
        public final Object invoke(@m8.g kotlinx.coroutines.flow.j<Object> jVar, @m8.h Object obj, @m8.g Continuation<? super Unit> continuation) {
            return jVar.emit(obj, continuation);
        }
    }

    public static final /* synthetic */ Function3 a() {
        return f86034a;
    }

    private static /* synthetic */ void b() {
    }
}
