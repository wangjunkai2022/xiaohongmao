package kotlinx.coroutines.test;

import androidx.exifinterface.media.ExifInterface;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import io.sentry.h4;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.internal.y0;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.p1;
import kotlinx.coroutines.q;
import kotlinx.coroutines.v0;
import m8.g;
import m8.h;

/* compiled from: TestCoroutineContext.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "This API has been deprecated to integrate with Structured Concurrency.", replaceWith = @ReplaceWith(expression = "TestCoroutineScope", imports = {"kotlin.coroutines.test"}))
@Metadata(bv = {}, d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u0001:\u0001-B\u0013\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010!¢\u0006\u0004\bH\u0010IJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0002J\u001c\u0010\n\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0002J7\u0010\u0012\u001a\u00028\u0000\"\u0004\b\u0000\u0010\r2\u0006\u0010\u000e\u001a\u00028\u00002\u0018\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u00000\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J*\u0010\u0017\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0014*\u00020\u00102\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0014\u0010\u0019\u001a\u00020\u00012\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u0015H\u0016J\u0010\u0010\u001c\u001a\u00020\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010\u001d\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010\u001e\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020\u0005J$\u0010'\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020!2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#J$\u0010(\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020!2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#J$\u0010)\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020!2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#J*\u0010+\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020!2\u0018\u0010&\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0*\u0012\u0004\u0012\u00020%0#J\b\u0010,\u001a\u00020!H\u0016R\u0016\u0010/\u001a\u0004\u0018\u00010!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020$008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u000604R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020\t0<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010B\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010AR\u0017\u0010G\u001a\b\u0012\u0004\u0012\u00020$0*8F¢\u0006\u0006\u001a\u0004\bE\u0010F¨\u0006J"}, d2 = {"Lkotlinx/coroutines/test/a;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "C", "", "delayTime", "Lkotlinx/coroutines/test/c;", "O", "P", "targetTime", "R", "initial", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "Ljava/util/concurrent/TimeUnit;", "unit", "I", "k", "m", "Q", "B", "", "message", "Lkotlin/Function1;", "", "", "predicate", y.b.f83919g, "o", "t", "", "v", "toString", "a", "Ljava/lang/String;", "name", "", "b", "Ljava/util/List;", "uncaughtExceptions", "Lkotlinx/coroutines/test/a$a;", "c", "Lkotlinx/coroutines/test/a$a;", "ctxDispatcher", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "d", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "ctxHandler", "Lkotlinx/coroutines/internal/y0;", "e", "Lkotlinx/coroutines/internal/y0;", "queue", "f", "J", "counter", "g", j.f47980a, "F", "()Ljava/util/List;", "exceptions", "<init>", "(Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class a implements CoroutineContext {
    @h

    /* renamed from: a  reason: collision with root package name */
    private final String f86809a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final List<Throwable> f86810b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final C0768a f86811c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final CoroutineExceptionHandler f86812d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final y0<c> f86813e;

    /* renamed from: f  reason: collision with root package name */
    private long f86814f;

    /* renamed from: g  reason: collision with root package name */
    private long f86815g;

    /* compiled from: TestCoroutineContext.kt */
    @Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u001c\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u000eH\u0016J$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\f2\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0013\u001a\u00020\fH\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/test/a$a;", "Lkotlinx/coroutines/p1;", "Lkotlinx/coroutines/a1;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "", "B0", "", "timeMillis", "Lkotlinx/coroutines/q;", "continuation", "r", "Lkotlinx/coroutines/l1;", "I", "z0", "", "toString", "<init>", "(Lkotlinx/coroutines/test/a;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* renamed from: kotlinx.coroutines.test.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private final class C0768a extends p1 implements a1 {

        /* compiled from: TestCoroutineContext.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"kotlinx/coroutines/test/a$a$a", "Lkotlinx/coroutines/l1;", "", "dispose", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.test.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0769a implements l1 {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a f86817a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ c f86818b;

            C0769a(a aVar, c cVar) {
                this.f86817a = aVar;
                this.f86818b = cVar;
            }

            @Override // kotlinx.coroutines.l1
            public void dispose() {
                this.f86817a.f86813e.j(this.f86818b);
            }
        }

        /* compiled from: Runnable.kt */
        @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"", "run", "()V", "kotlinx/coroutines/f3$a", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.test.a$a$b */
        /* loaded from: classes4.dex */
        public static final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ q f86819a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ C0768a f86820b;

            public b(q qVar, C0768a c0768a) {
                this.f86819a = qVar;
                this.f86820b = c0768a;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f86819a.B(this.f86820b, Unit.INSTANCE);
            }
        }

        public C0768a() {
            p1.v0(this, false, 1, null);
        }

        @Override // kotlinx.coroutines.p1
        public boolean B0() {
            return true;
        }

        @Override // kotlinx.coroutines.a1
        @g
        public l1 I(long j4, @g Runnable runnable, @g CoroutineContext coroutineContext) {
            return new C0769a(a.this, a.this.O(runnable, j4));
        }

        @Override // kotlinx.coroutines.n0
        public void dispatch(@g CoroutineContext coroutineContext, @g Runnable runnable) {
            a.this.C(runnable);
        }

        @Override // kotlinx.coroutines.a1
        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
        @h
        public Object g0(long j4, @g Continuation<? super Unit> continuation) {
            return a1.a.a(this, j4, continuation);
        }

        @Override // kotlinx.coroutines.a1
        public void r(long j4, @g q<? super Unit> qVar) {
            a.this.O(new b(qVar, this), j4);
        }

        @Override // kotlinx.coroutines.n0
        @g
        public String toString() {
            return "Dispatcher(" + a.this + ')';
        }

        @Override // kotlinx.coroutines.p1
        public long z0() {
            return a.this.P();
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\t¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/p0$a", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext;", "context", "", h4.b.f83287e, "", "handleException", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f86821a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(CoroutineExceptionHandler.b bVar, a aVar) {
            super(bVar);
            this.f86821a = aVar;
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(@g CoroutineContext coroutineContext, @g Throwable th) {
            this.f86821a.f86810b.add(th);
        }
    }

    public a() {
        this(null, 1, null);
    }

    public a(@h String str) {
        this.f86809a = str;
        this.f86810b = new ArrayList();
        this.f86811c = new C0768a();
        this.f86812d = new b(CoroutineExceptionHandler.f84777j2, this);
        this.f86813e = new y0<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(Runnable runnable) {
        y0<c> y0Var = this.f86813e;
        long j4 = this.f86814f;
        this.f86814f = 1 + j4;
        y0Var.b(new c(runnable, j4, 0L, 4, null));
    }

    public static /* synthetic */ long N(a aVar, TimeUnit timeUnit, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        return aVar.I(timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final c O(Runnable runnable, long j4) {
        long j10 = this.f86814f;
        this.f86814f = 1 + j10;
        c cVar = new c(runnable, j10, this.f86815g + TimeUnit.MILLISECONDS.toNanos(j4));
        this.f86813e.b(cVar);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long P() {
        c h4 = this.f86813e.h();
        if (h4 != null) {
            R(h4.f86824c);
        }
        return this.f86813e.g() ? Long.MAX_VALUE : 0L;
    }

    private final void R(long j4) {
        c cVar;
        while (true) {
            y0<c> y0Var = this.f86813e;
            synchronized (y0Var) {
                c e4 = y0Var.e();
                if (e4 != null) {
                    cVar = (e4.f86824c > j4 ? 1 : (e4.f86824c == j4 ? 0 : -1)) <= 0 ? y0Var.k(0) : null;
                }
            }
            c cVar2 = cVar;
            if (cVar2 == null) {
                return;
            }
            long j10 = cVar2.f86824c;
            if (j10 != 0) {
                this.f86815g = j10;
            }
            cVar2.run();
        }
    }

    public static /* synthetic */ long l(a aVar, long j4, TimeUnit timeUnit, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        return aVar.k(j4, timeUnit);
    }

    public static /* synthetic */ void n(a aVar, long j4, TimeUnit timeUnit, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        aVar.m(j4, timeUnit);
    }

    public static /* synthetic */ void r(a aVar, String str, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = "";
        }
        aVar.o(str, function1);
    }

    public static /* synthetic */ void u(a aVar, String str, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = "";
        }
        aVar.t(str, function1);
    }

    public static /* synthetic */ void w(a aVar, String str, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = "";
        }
        aVar.v(str, function1);
    }

    public static /* synthetic */ void z(a aVar, String str, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = "";
        }
        aVar.x(str, function1);
    }

    public final void B() {
        if (this.f86813e.g()) {
            return;
        }
        this.f86813e.d();
    }

    @g
    public final List<Throwable> F() {
        return this.f86810b;
    }

    public final long I(@g TimeUnit timeUnit) {
        return timeUnit.convert(this.f86815g, TimeUnit.NANOSECONDS);
    }

    public final void Q() {
        R(this.f86815g);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r9, @g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return function2.invoke((R) function2.invoke(r9, this.f86811c), this.f86812d);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @h
    public <E extends CoroutineContext.Element> E get(@g CoroutineContext.Key<E> key) {
        if (key == ContinuationInterceptor.Key) {
            return this.f86811c;
        }
        if (key == CoroutineExceptionHandler.f84777j2) {
            return this.f86812d;
        }
        return null;
    }

    public final long k(long j4, @g TimeUnit timeUnit) {
        long j10 = this.f86815g;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        m(timeUnit.toNanos(j4) + j10, timeUnit2);
        return timeUnit.convert(this.f86815g - j10, timeUnit2);
    }

    public final void m(long j4, @g TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j4);
        R(nanos);
        if (nanos > this.f86815g) {
            this.f86815g = nanos;
        }
    }

    @Override // kotlin.coroutines.CoroutineContext
    @g
    public CoroutineContext minusKey(@g CoroutineContext.Key<?> key) {
        return key == ContinuationInterceptor.Key ? this.f86812d : key == CoroutineExceptionHandler.f84777j2 ? this.f86811c : this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void o(@g String str, @g Function1<? super Throwable, Boolean> function1) {
        List<Throwable> list = this.f86810b;
        boolean z9 = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (!function1.invoke(it.next()).booleanValue()) {
                    z9 = false;
                    break;
                }
            }
        }
        if (z9) {
            this.f86810b.clear();
            return;
        }
        throw new AssertionError(str);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @g
    public CoroutineContext plus(@g CoroutineContext coroutineContext) {
        return CoroutineContext.DefaultImpls.plus(this, coroutineContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t(@g String str, @g Function1<? super Throwable, Boolean> function1) {
        List<Throwable> list = this.f86810b;
        boolean z9 = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (function1.invoke(it.next()).booleanValue()) {
                    z9 = true;
                    break;
                }
            }
        }
        if (z9) {
            this.f86810b.clear();
            return;
        }
        throw new AssertionError(str);
    }

    @g
    public String toString() {
        String str = this.f86809a;
        return str == null ? Intrinsics.stringPlus("TestCoroutineContext@", v0.b(this)) : str;
    }

    public final void v(@g String str, @g Function1<? super List<? extends Throwable>, Boolean> function1) {
        if (function1.invoke(this.f86810b).booleanValue()) {
            this.f86810b.clear();
            return;
        }
        throw new AssertionError(str);
    }

    public final void x(@g String str, @g Function1<? super Throwable, Boolean> function1) {
        if (this.f86810b.size() == 1 && function1.invoke(this.f86810b.get(0)).booleanValue()) {
            this.f86810b.clear();
            return;
        }
        throw new AssertionError(str);
    }

    public /* synthetic */ a(String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str);
    }
}
