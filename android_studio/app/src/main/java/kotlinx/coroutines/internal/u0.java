package kotlinx.coroutines.internal;

import io.sentry.protocol.t;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.n3;

/* compiled from: ThreadContext.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0000\u001a\u001a\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0000\"\u0014\u0010\u000b\u001a\u00020\t8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\b\u0010\n\"*\u0010\u000f\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000e\"2\u0010\u0011\u001a \u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0010\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00100\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000e\"&\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00120\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000e¨\u0006\u0015"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "", "b", "countOrElement", "c", "oldState", "", "a", "Lkotlinx/coroutines/internal/p0;", "Lkotlinx/coroutines/internal/p0;", "NO_THREAD_ELEMENTS", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/jvm/functions/Function2;", "countAll", "Lkotlinx/coroutines/n3;", "findOne", "Lkotlinx/coroutines/internal/a1;", "d", "updateState", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class u0 {
    @JvmField
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final p0 f86295a = new p0("NO_THREAD_ELEMENTS");
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final Function2<Object, CoroutineContext.Element, Object> f86296b = a.f86299a;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final Function2<n3<?>, CoroutineContext.Element, n3<?>> f86297c = b.f86300a;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final Function2<a1, CoroutineContext.Element, a1> f86298d = c.f86301a;

    /* compiled from: ThreadContext.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00002\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "countOrElement", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "a", "(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class a extends Lambda implements Function2<Object, CoroutineContext.Element, Object> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f86299a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final Object invoke(@m8.h Object obj, @m8.g CoroutineContext.Element element) {
            if (element instanceof n3) {
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int intValue = num == null ? 1 : num.intValue();
                return intValue == 0 ? element : Integer.valueOf(intValue + 1);
            }
            return obj;
        }
    }

    /* compiled from: ThreadContext.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00002\f\u0010\u0001\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/n3;", "found", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "a", "(Lkotlinx/coroutines/n3;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/n3;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class b extends Lambda implements Function2<n3<?>, CoroutineContext.Element, n3<?>> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f86300a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final n3<?> invoke(@m8.h n3<?> n3Var, @m8.g CoroutineContext.Element element) {
            if (n3Var != null) {
                return n3Var;
            }
            if (element instanceof n3) {
                return (n3) element;
            }
            return null;
        }
    }

    /* compiled from: ThreadContext.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/internal/a1;", t.b.f83859d, "Lkotlin/coroutines/CoroutineContext$Element;", "element", "a", "(Lkotlinx/coroutines/internal/a1;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/a1;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class c extends Lambda implements Function2<a1, CoroutineContext.Element, a1> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f86301a = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final a1 invoke(@m8.g a1 a1Var, @m8.g CoroutineContext.Element element) {
            if (element instanceof n3) {
                n3<?> n3Var = (n3) element;
                a1Var.a(n3Var, n3Var.l0(a1Var.f86238a));
            }
            return a1Var;
        }
    }

    public static final void a(@m8.g CoroutineContext coroutineContext, @m8.h Object obj) {
        if (obj == f86295a) {
            return;
        }
        if (obj instanceof a1) {
            ((a1) obj).b(coroutineContext);
            return;
        }
        Object fold = coroutineContext.fold(null, f86297c);
        Objects.requireNonNull(fold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((n3) fold).K(coroutineContext, obj);
    }

    @m8.g
    public static final Object b(@m8.g CoroutineContext coroutineContext) {
        Object fold = coroutineContext.fold(0, f86296b);
        Intrinsics.checkNotNull(fold);
        return fold;
    }

    @m8.h
    public static final Object c(@m8.g CoroutineContext coroutineContext, @m8.h Object obj) {
        if (obj == null) {
            obj = b(coroutineContext);
        }
        if (obj == 0) {
            return f86295a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new a1(coroutineContext, ((Number) obj).intValue()), f86298d);
        }
        return ((n3) obj).l0(coroutineContext);
    }
}
