package kotlinx.coroutines.selects;

import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.selects.a;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: P
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: SelectUnbiased.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0004\b)\u0010*J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0001J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0001J5\u0010\f\u001a\u00020\u0005*\u00020\b2\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\tH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJG\u0010\u0011\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u00028\u00010\u000f2\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0010H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J[\u0010\u0016\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u0013\"\u0004\b\u0002\u0010\u000e*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u00012\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0010H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J8\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\tH\u0016ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bR\u001d\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R3\u0010'\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050#0\"j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050#`$8\u0006¢\u0006\f\n\u0004\b\u001f\u0010%\u001a\u0004\b\u001d\u0010&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Lkotlinx/coroutines/selects/j;", "R", "Lkotlinx/coroutines/selects/a;", "", "e", "", "d", "", "Lkotlinx/coroutines/selects/c;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "block", "c", "(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/d;", "Lkotlin/Function2;", y.b.f83920h, "(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/e;", com.alipay.sdk.authjs.a.f6841l, "g", "(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "timeMillis", "n", "(JLkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/selects/b;", "a", "Lkotlinx/coroutines/selects/b;", "b", "()Lkotlinx/coroutines/selects/b;", "instance", "Ljava/util/ArrayList;", "Lkotlin/Function0;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "()Ljava/util/ArrayList;", "clauses", "uCont", "<init>", "(Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@PublishedApi
/* loaded from: classes4.dex */
public final class j<R> implements kotlinx.coroutines.selects.a<R> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final kotlinx.coroutines.selects.b<R> f86727a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<Function0<Unit>> f86728b = new ArrayList<>();

    /* compiled from: SelectUnbiased.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002 \u0000H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "R", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class a extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.selects.c f86729a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j<R> f86730b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<Continuation<? super R>, Object> f86731c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.selects.c cVar, j<? super R> jVar, Function1<? super Continuation<? super R>, ? extends Object> function1) {
            super(0);
            this.f86729a = cVar;
            this.f86730b = jVar;
            this.f86731c = function1;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f86729a.f(this.f86730b.b(), this.f86731c);
        }
    }

    /* compiled from: SelectUnbiased.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u0000H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "Q", "R", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.selects.d<Q> f86732a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j<R> f86733b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2<Q, Continuation<? super R>, Object> f86734c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(kotlinx.coroutines.selects.d<? extends Q> dVar, j<? super R> jVar, Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
            super(0);
            this.f86732a = dVar;
            this.f86733b = jVar;
            this.f86734c = function2;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f86732a.c(this.f86733b.b(), this.f86734c);
        }
    }

    /* compiled from: SelectUnbiased.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0006\b\u0002\u0010\u0004 \u0000H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "P", "Q", "R", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e<P, Q> f86735a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j<R> f86736b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ P f86737c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function2<Q, Continuation<? super R>, Object> f86738d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(e<? super P, ? extends Q> eVar, j<? super R> jVar, P p9, Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
            super(0);
            this.f86735a = eVar;
            this.f86736b = jVar;
            this.f86737c = p9;
            this.f86738d = function2;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f86735a.n(this.f86736b.b(), this.f86737c, this.f86738d);
        }
    }

    /* compiled from: SelectUnbiased.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002 \u0000H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "R", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class d extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j<R> f86739a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f86740b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<Continuation<? super R>, Object> f86741c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        d(j<? super R> jVar, long j4, Function1<? super Continuation<? super R>, ? extends Object> function1) {
            super(0);
            this.f86739a = jVar;
            this.f86740b = j4;
            this.f86741c = function1;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f86739a.b().n(this.f86740b, this.f86741c);
        }
    }

    public j(@m8.g Continuation<? super R> continuation) {
        this.f86727a = new kotlinx.coroutines.selects.b<>(continuation);
    }

    @m8.g
    public final ArrayList<Function0<Unit>> a() {
        return this.f86728b;
    }

    @m8.g
    public final kotlinx.coroutines.selects.b<R> b() {
        return this.f86727a;
    }

    @Override // kotlinx.coroutines.selects.a
    public void c(@m8.g kotlinx.coroutines.selects.c cVar, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1) {
        this.f86728b.add(new a(cVar, this, function1));
    }

    @PublishedApi
    public final void d(@m8.g Throwable th) {
        this.f86727a.p0(th);
    }

    @m8.h
    @PublishedApi
    public final Object e() {
        if (!this.f86727a.h()) {
            try {
                Collections.shuffle(this.f86728b);
                Iterator<T> it = this.f86728b.iterator();
                while (it.hasNext()) {
                    ((Function0) it.next()).invoke();
                }
            } catch (Throwable th) {
                this.f86727a.p0(th);
            }
        }
        return this.f86727a.o0();
    }

    @Override // kotlinx.coroutines.selects.a
    public <P, Q> void g(@m8.g e<? super P, ? extends Q> eVar, P p9, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        this.f86728b.add(new c(eVar, this, p9, function2));
    }

    @Override // kotlinx.coroutines.selects.a
    public void n(long j4, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1) {
        this.f86728b.add(new d(this, j4, function1));
    }

    @Override // kotlinx.coroutines.selects.a
    public <P, Q> void s(@m8.g e<? super P, ? extends Q> eVar, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        a.C0764a.a(this, eVar, function2);
    }

    @Override // kotlinx.coroutines.selects.a
    public <Q> void y(@m8.g kotlinx.coroutines.selects.d<? extends Q> dVar, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        this.f86728b.add(new b(dVar, this, function2));
    }
}
