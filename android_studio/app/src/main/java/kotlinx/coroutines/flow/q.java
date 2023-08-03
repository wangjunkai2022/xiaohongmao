package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Distinct.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\u001a\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001aT\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000126\u0010\t\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003\u001a6\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f\u001aw\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f2:\u0010\t\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003H\u0002¢\u0006\u0004\b\u0010\u0010\u0011\"*\u0010\u0015\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0002\u0010\u0012\u0012\u0004\b\u0013\u0010\u0014\"0\u0010\u0018\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\b0\u00038\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\n\u0010\u0016\u0012\u0004\b\u0017\u0010\u0014¨\u0006\u0019"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "a", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "old", "new", "", "areEquivalent", "b", "K", "Lkotlin/Function1;", "keySelector", "c", "", "d", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "Lkotlin/jvm/functions/Function1;", "getDefaultKeySelector$annotations$FlowKt__DistinctKt", "()V", "defaultKeySelector", "Lkotlin/jvm/functions/Function2;", "getDefaultAreEquivalent$annotations$FlowKt__DistinctKt", "defaultAreEquivalent", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class q {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final Function1<Object, Object> f86134a = b.f86137a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final Function2<Object, Object, Boolean> f86135b = a.f86136a;

    /* compiled from: Distinct.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "old", "new", "", "a", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class a extends Lambda implements Function2<Object, Object, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f86136a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final Boolean invoke(@m8.h Object obj, @m8.h Object obj2) {
            return Boolean.valueOf(Intrinsics.areEqual(obj, obj2));
        }
    }

    /* compiled from: Distinct.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "it", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class b extends Lambda implements Function1<Object, Object> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f86137a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m8.h
        public final Object invoke(@m8.h Object obj) {
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m8.g
    public static final <T> i<T> a(@m8.g i<? extends T> iVar) {
        return iVar instanceof h0 ? iVar : d(iVar, f86134a, f86135b);
    }

    @m8.g
    public static final <T> i<T> b(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super T, Boolean> function2) {
        return d(iVar, f86134a, (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2));
    }

    @m8.g
    public static final <T, K> i<T> c(@m8.g i<? extends T> iVar, @m8.g Function1<? super T, ? extends K> function1) {
        return d(iVar, function1, f86135b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> i<T> d(i<? extends T> iVar, Function1<? super T, ? extends Object> function1, Function2<Object, Object, Boolean> function2) {
        if (iVar instanceof g) {
            g gVar = (g) iVar;
            if (gVar.f85870b == function1 && gVar.f85871c == function2) {
                return iVar;
            }
        }
        return new g(iVar, function1, function2);
    }

    private static /* synthetic */ void e() {
    }

    private static /* synthetic */ void f() {
    }
}
