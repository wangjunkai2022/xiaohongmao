package io.reactivex.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.VolatileSizeArrayList;
import io.reactivex.observers.BaseTestConsumer;
import io.reactivex.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import n7.r;

/* loaded from: classes4.dex */
public abstract class BaseTestConsumer<T, U extends BaseTestConsumer<T, U>> implements io.reactivex.disposables.c {

    /* renamed from: d  reason: collision with root package name */
    protected long f75938d;

    /* renamed from: e  reason: collision with root package name */
    protected Thread f75939e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f75940f;

    /* renamed from: g  reason: collision with root package name */
    protected int f75941g;

    /* renamed from: h  reason: collision with root package name */
    protected int f75942h;

    /* renamed from: i  reason: collision with root package name */
    protected CharSequence f75943i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f75944j;

    /* renamed from: b  reason: collision with root package name */
    protected final List<T> f75936b = new VolatileSizeArrayList();

    /* renamed from: c  reason: collision with root package name */
    protected final List<Throwable> f75937c = new VolatileSizeArrayList();

    /* renamed from: a  reason: collision with root package name */
    protected final CountDownLatch f75935a = new CountDownLatch(1);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static abstract class TestWaitStrategy implements Runnable {
        public static final TestWaitStrategy SLEEP_1000MS;
        public static final TestWaitStrategy SLEEP_100MS;
        public static final TestWaitStrategy SLEEP_10MS;
        public static final TestWaitStrategy SLEEP_1MS;
        public static final TestWaitStrategy SPIN;
        public static final TestWaitStrategy YIELD;

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ TestWaitStrategy[] f75945a;

        /* loaded from: classes4.dex */
        enum a extends TestWaitStrategy {
            a(String str, int i4) {
                super(str, i4);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
            }
        }

        /* loaded from: classes4.dex */
        enum b extends TestWaitStrategy {
            b(String str, int i4) {
                super(str, i4);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                Thread.yield();
            }
        }

        /* loaded from: classes4.dex */
        enum c extends TestWaitStrategy {
            c(String str, int i4) {
                super(str, i4);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.a(1);
            }
        }

        /* loaded from: classes4.dex */
        enum d extends TestWaitStrategy {
            d(String str, int i4) {
                super(str, i4);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.a(10);
            }
        }

        /* loaded from: classes4.dex */
        enum e extends TestWaitStrategy {
            e(String str, int i4) {
                super(str, i4);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.a(100);
            }
        }

        /* loaded from: classes4.dex */
        enum f extends TestWaitStrategy {
            f(String str, int i4) {
                super(str, i4);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.a(1000);
            }
        }

        static {
            a aVar = new a("SPIN", 0);
            SPIN = aVar;
            b bVar = new b("YIELD", 1);
            YIELD = bVar;
            c cVar = new c("SLEEP_1MS", 2);
            SLEEP_1MS = cVar;
            d dVar = new d("SLEEP_10MS", 3);
            SLEEP_10MS = dVar;
            e eVar = new e("SLEEP_100MS", 4);
            SLEEP_100MS = eVar;
            f fVar = new f("SLEEP_1000MS", 5);
            SLEEP_1000MS = fVar;
            f75945a = new TestWaitStrategy[]{aVar, bVar, cVar, dVar, eVar, fVar};
        }

        private TestWaitStrategy(String str, int i4) {
        }

        static void a(int i4) {
            try {
                Thread.sleep(i4);
            } catch (InterruptedException e4) {
                throw new RuntimeException(e4);
            }
        }

        public static TestWaitStrategy valueOf(String str) {
            return (TestWaitStrategy) Enum.valueOf(TestWaitStrategy.class, str);
        }

        public static TestWaitStrategy[] values() {
            return (TestWaitStrategy[]) f75945a.clone();
        }

        @Override // java.lang.Runnable
        public abstract void run();
    }

    public static String Y(Object obj) {
        if (obj != null) {
            return obj + " (class: " + obj.getClass().getSimpleName() + ")";
        }
        return "null";
    }

    public final U A(int i4) {
        int size = this.f75936b.size();
        if (size == i4) {
            return this;
        }
        throw T("Value counts differ; expected: " + i4 + " but was: " + size);
    }

    public final U B(Iterable<? extends T> iterable) {
        boolean hasNext;
        boolean hasNext2;
        Iterator<T> it = this.f75936b.iterator();
        Iterator<? extends T> it2 = iterable.iterator();
        int i4 = 0;
        while (true) {
            hasNext = it2.hasNext();
            hasNext2 = it.hasNext();
            if (!hasNext2 || !hasNext) {
                break;
            }
            T next = it2.next();
            T next2 = it.next();
            if (!io.reactivex.internal.functions.b.c(next, next2)) {
                throw T("Values at position " + i4 + " differ; expected: " + Y(next) + " but was: " + Y(next2));
            }
            i4++;
        }
        if (hasNext2) {
            throw T("More values received than expected (" + i4 + ")");
        } else if (hasNext) {
            throw T("Fewer values received than expected (" + i4 + ")");
        } else {
            return this;
        }
    }

    public final U C(Iterable<? extends T> iterable) {
        return (U) t().B(iterable).m().p();
    }

    public final U D(Collection<? extends T> collection) {
        if (collection.isEmpty()) {
            o();
            return this;
        }
        for (T t9 : this.f75936b) {
            if (!collection.contains(t9)) {
                throw T("Value not in the expected collection: " + Y(t9));
            }
        }
        return this;
    }

    public final U E(Collection<? extends T> collection) {
        return (U) t().D(collection).m().p();
    }

    public final U F(T... tArr) {
        int size = this.f75936b.size();
        if (size != tArr.length) {
            throw T("Value count differs; expected: " + tArr.length + " " + Arrays.toString(tArr) + " but was: " + size + " " + this.f75936b);
        }
        for (int i4 = 0; i4 < size; i4++) {
            T t9 = this.f75936b.get(i4);
            T t10 = tArr[i4];
            if (!io.reactivex.internal.functions.b.c(t10, t9)) {
                throw T("Values at position " + i4 + " differ; expected: " + Y(t10) + " but was: " + Y(t9));
            }
        }
        return this;
    }

    public final U G(T... tArr) {
        return (U) t().F(tArr).m().p();
    }

    public final U H() throws InterruptedException {
        if (this.f75935a.getCount() == 0) {
            return this;
        }
        this.f75935a.await();
        return this;
    }

    public final boolean I(long j4, TimeUnit timeUnit) throws InterruptedException {
        boolean z9 = this.f75935a.getCount() == 0 || this.f75935a.await(j4, timeUnit);
        this.f75944j = !z9;
        return z9;
    }

    public final U J(int i4) {
        return L(i4, TestWaitStrategy.SLEEP_10MS, 5000L);
    }

    public final U K(int i4, Runnable runnable) {
        return L(i4, runnable, 5000L);
    }

    public final U L(int i4, Runnable runnable, long j4) {
        long currentTimeMillis = System.currentTimeMillis();
        while (true) {
            if (j4 > 0 && System.currentTimeMillis() - currentTimeMillis >= j4) {
                this.f75944j = true;
                break;
            } else if (this.f75935a.getCount() == 0 || this.f75936b.size() >= i4) {
                break;
            } else {
                runnable.run();
            }
        }
        return this;
    }

    public final U M(long j4, TimeUnit timeUnit) {
        try {
            if (!this.f75935a.await(j4, timeUnit)) {
                this.f75944j = true;
                dispose();
            }
            return this;
        } catch (InterruptedException e4) {
            dispose();
            throw io.reactivex.internal.util.g.f(e4);
        }
    }

    public final boolean N() {
        try {
            H();
            return true;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final boolean O(long j4, TimeUnit timeUnit) {
        try {
            return I(j4, timeUnit);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final U P() {
        this.f75944j = false;
        return this;
    }

    public final long Q() {
        return this.f75938d;
    }

    public final int R() {
        return this.f75937c.size();
    }

    public final List<Throwable> S() {
        return this.f75937c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AssertionError T(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 64);
        sb.append(str);
        sb.append(" (");
        sb.append("latch = ");
        sb.append(this.f75935a.getCount());
        sb.append(", ");
        sb.append("values = ");
        sb.append(this.f75936b.size());
        sb.append(", ");
        sb.append("errors = ");
        sb.append(this.f75937c.size());
        sb.append(", ");
        sb.append("completions = ");
        sb.append(this.f75938d);
        if (this.f75944j) {
            sb.append(", timeout!");
        }
        if (isDisposed()) {
            sb.append(", disposed!");
        }
        CharSequence charSequence = this.f75943i;
        if (charSequence != null) {
            sb.append(", tag = ");
            sb.append(charSequence);
        }
        sb.append(')');
        AssertionError assertionError = new AssertionError(sb.toString());
        if (!this.f75937c.isEmpty()) {
            if (this.f75937c.size() == 1) {
                assertionError.initCause(this.f75937c.get(0));
            } else {
                assertionError.initCause(new CompositeException(this.f75937c));
            }
        }
        return assertionError;
    }

    public final List<List<Object>> U() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(a0());
        arrayList.add(S());
        ArrayList arrayList2 = new ArrayList();
        for (long j4 = 0; j4 < this.f75938d; j4++) {
            arrayList2.add(y.a());
        }
        arrayList.add(arrayList2);
        return arrayList;
    }

    public final boolean V() {
        return this.f75935a.getCount() == 0;
    }

    public final boolean W() {
        return this.f75944j;
    }

    public final Thread X() {
        return this.f75939e;
    }

    public final int Z() {
        return this.f75936b.size();
    }

    public final U a() {
        long j4 = this.f75938d;
        if (j4 != 0) {
            if (j4 <= 1) {
                return this;
            }
            throw T("Multiple completions: " + j4);
        }
        throw T("Not completed");
    }

    public final List<T> a0() {
        return this.f75936b;
    }

    public final U b() {
        return (U) t().o().m().p();
    }

    public final U b0(CharSequence charSequence) {
        this.f75943i = charSequence;
        return this;
    }

    public final U c(Class<? extends Throwable> cls) {
        return e(io.reactivex.internal.functions.a.l(cls));
    }

    public final U d(Throwable th) {
        return e(io.reactivex.internal.functions.a.i(th));
    }

    public final U e(r<Throwable> rVar) {
        int size = this.f75937c.size();
        if (size != 0) {
            boolean z9 = false;
            Iterator<Throwable> it = this.f75937c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                try {
                    if (rVar.test(it.next())) {
                        z9 = true;
                        break;
                    }
                } catch (Exception e4) {
                    throw io.reactivex.internal.util.g.f(e4);
                }
            }
            if (z9) {
                if (size == 1) {
                    return this;
                }
                throw T("Error present but other errors as well");
            }
            throw T("Error not present");
        }
        throw T("No errors");
    }

    public final U f(String str) {
        int size = this.f75937c.size();
        if (size != 0) {
            if (size == 1) {
                String message = this.f75937c.get(0).getMessage();
                if (io.reactivex.internal.functions.b.c(str, message)) {
                    return this;
                }
                throw T("Error message differs; exptected: " + str + " but was: " + message);
            }
            throw T("Multiple errors");
        }
        throw T("No errors");
    }

    public final U g(Class<? extends Throwable> cls, T... tArr) {
        return (U) t().F(tArr).c(cls).p();
    }

    public final U i(r<Throwable> rVar, T... tArr) {
        return (U) t().F(tArr).e(rVar).p();
    }

    public final U j(Class<? extends Throwable> cls, String str, T... tArr) {
        return (U) t().F(tArr).c(cls).f(str).p();
    }

    public final U k(T t9) {
        int size = this.f75936b.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (io.reactivex.internal.functions.b.c(this.f75936b.get(i4), t9)) {
                throw T("Value at position " + i4 + " is equal to " + Y(t9) + "; Expected them to be different");
            }
        }
        return this;
    }

    public final U l(r<? super T> rVar) {
        int size = this.f75936b.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                if (rVar.test((T) this.f75936b.get(i4))) {
                    throw T("Value at position " + i4 + " matches predicate " + rVar.toString() + ", which was not expected.");
                }
            } catch (Exception e4) {
                throw io.reactivex.internal.util.g.f(e4);
            }
        }
        return this;
    }

    public final U m() {
        if (this.f75937c.size() == 0) {
            return this;
        }
        throw T("Error(s) present: " + this.f75937c);
    }

    public final U n() {
        if (this.f75944j) {
            throw T("Timeout?!");
        }
        return this;
    }

    public final U o() {
        return A(0);
    }

    public final U p() {
        long j4 = this.f75938d;
        int i4 = (j4 > 1L ? 1 : (j4 == 1L ? 0 : -1));
        if (i4 != 0) {
            if (i4 <= 0) {
                return this;
            }
            throw T("Multiple completions: " + j4);
        }
        throw T("Completed!");
    }

    public abstract U q();

    public final U r() {
        if (this.f75935a.getCount() != 0) {
            return this;
        }
        throw T("Subscriber terminated!");
    }

    public final U s(T... tArr) {
        return (U) t().F(tArr).m().a();
    }

    public abstract U t();

    public final U u() {
        if (this.f75935a.getCount() == 0) {
            long j4 = this.f75938d;
            if (j4 <= 1) {
                int size = this.f75937c.size();
                if (size > 1) {
                    throw T("Terminated with multiple errors: " + size);
                } else if (j4 == 0 || size == 0) {
                    return this;
                } else {
                    throw T("Terminated with multiple completions and errors: " + j4);
                }
            }
            throw T("Terminated with multiple completions: " + j4);
        }
        throw T("Subscriber still running!");
    }

    public final U v() {
        if (this.f75944j) {
            return this;
        }
        throw T("No timeout?!");
    }

    public final U w(T t9) {
        if (this.f75936b.size() == 1) {
            T t10 = this.f75936b.get(0);
            if (io.reactivex.internal.functions.b.c(t9, t10)) {
                return this;
            }
            throw T("expected: " + Y(t9) + " but was: " + Y(t10));
        }
        throw T("expected: " + Y(t9) + " but was: " + this.f75936b);
    }

    public final U x(r<T> rVar) {
        z(0, rVar);
        if (this.f75936b.size() <= 1) {
            return this;
        }
        throw T("Value present but other values as well");
    }

    public final U y(int i4, T t9) {
        int size = this.f75936b.size();
        if (size != 0) {
            if (i4 < size) {
                T t10 = this.f75936b.get(i4);
                if (io.reactivex.internal.functions.b.c(t9, t10)) {
                    return this;
                }
                throw T("expected: " + Y(t9) + " but was: " + Y(t10));
            }
            throw T("Invalid index: " + i4);
        }
        throw T("No values");
    }

    public final U z(int i4, r<T> rVar) {
        if (this.f75936b.size() != 0) {
            if (i4 < this.f75936b.size()) {
                try {
                    if (rVar.test(this.f75936b.get(i4))) {
                        return this;
                    }
                    throw T("Value not present");
                } catch (Exception e4) {
                    throw io.reactivex.internal.util.g.f(e4);
                }
            }
            throw T("Invalid index: " + i4);
        }
        throw T("No values");
    }
}
