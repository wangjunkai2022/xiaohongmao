package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.internal.l0;
import kotlinx.coroutines.j2;

/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0018\u0010\u0004\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0001\u001a\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0080\u0010\u001aP\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\u0004\b\u0000\u0010\b2/\b\u0005\u0010\u000e\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\t¢\u0006\u0002\b\rH\u0081\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", "Lkotlin/coroutines/CoroutineContext;", "currentContext", "", "a", "Lkotlinx/coroutines/j2;", "collectJob", "b", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/j;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/flow/i;", "c", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class SafeCollector_commonKt {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "count", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "a", "(ILkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Integer;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a extends Lambda implements Function2<Integer, CoroutineContext.Element, Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SafeCollector<?> f85900a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(SafeCollector<?> safeCollector) {
            super(2);
            this.f85900a = safeCollector;
        }

        @m8.g
        public final Integer a(int i4, @m8.g CoroutineContext.Element element) {
            CoroutineContext.Key<?> key = element.getKey();
            CoroutineContext.Element element2 = this.f85900a.collectContext.get(key);
            if (key != j2.f86331k2) {
                return Integer.valueOf(element != element2 ? Integer.MIN_VALUE : i4 + 1);
            }
            j2 j2Var = (j2) element2;
            j2 b10 = SafeCollector_commonKt.b((j2) element, j2Var);
            if (b10 == j2Var) {
                if (j2Var != null) {
                    i4++;
                }
                return Integer.valueOf(i4);
            }
            throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + b10 + ", expected child of " + j2Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Integer invoke(Integer num, CoroutineContext.Element element) {
            return a(num.intValue(), element);
        }
    }

    @JvmName(name = "checkContext")
    public static final void a(@m8.g SafeCollector<?> safeCollector, @m8.g CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new a(safeCollector))).intValue() == safeCollector.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.collectContext + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    @m8.h
    public static final j2 b(@m8.h j2 j2Var, @m8.h j2 j2Var2) {
        while (j2Var != null) {
            if (j2Var == j2Var2 || !(j2Var instanceof l0)) {
                return j2Var;
            }
            j2Var = ((l0) j2Var).p1();
        }
        return null;
    }

    @PublishedApi
    @m8.g
    public static final <T> kotlinx.coroutines.flow.i<T> c(@BuilderInference @m8.g Function2<? super kotlinx.coroutines.flow.j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new SafeCollector_commonKt$unsafeFlow$1(function2);
    }
}
