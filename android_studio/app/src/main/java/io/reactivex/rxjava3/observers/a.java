package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.util.VolatileSizeArrayList;
import io.reactivex.rxjava3.observers.a;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import q7.r;

/* compiled from: BaseTestConsumer.java */
/* loaded from: classes4.dex */
public abstract class a<T, U extends a<T, U>> {

    /* renamed from: d  reason: collision with root package name */
    protected long f81352d;

    /* renamed from: e  reason: collision with root package name */
    protected Thread f81353e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f81354f;

    /* renamed from: g  reason: collision with root package name */
    protected CharSequence f81355g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f81356h;

    /* renamed from: b  reason: collision with root package name */
    protected final List<T> f81350b = new VolatileSizeArrayList();

    /* renamed from: c  reason: collision with root package name */
    protected final List<Throwable> f81351c = new VolatileSizeArrayList();

    /* renamed from: a  reason: collision with root package name */
    protected final CountDownLatch f81349a = new CountDownLatch(1);

    @p7.e
    public static String z(@p7.f Object o9) {
        if (o9 != null) {
            return o9 + " (class: " + o9.getClass().getSimpleName() + ")";
        }
        return "null";
    }

    @p7.e
    public final List<T> A() {
        return this.f81350b;
    }

    @p7.e
    public final U B(@p7.f CharSequence tag) {
        this.f81355g = tag;
        return this;
    }

    @p7.e
    public final U a() {
        long j4 = this.f81352d;
        if (j4 != 0) {
            if (j4 <= 1) {
                return this;
            }
            throw y("Multiple completions: " + j4);
        }
        throw y("Not completed");
    }

    @p7.e
    public final U b() {
        return (U) l().i().g().j();
    }

    @p7.e
    public final U c(@p7.e Class<? extends Throwable> errorClass) {
        return e(io.reactivex.rxjava3.internal.functions.a.l(errorClass));
    }

    @p7.e
    public final U d(@p7.e Throwable error) {
        return e(io.reactivex.rxjava3.internal.functions.a.i(error));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void dispose();

    @p7.e
    public final U e(@p7.e r<Throwable> errorPredicate) {
        int size = this.f81351c.size();
        if (size != 0) {
            boolean z9 = false;
            Iterator<Throwable> it = this.f81351c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                try {
                    if (errorPredicate.test(it.next())) {
                        z9 = true;
                        break;
                    }
                } catch (Throwable th) {
                    throw io.reactivex.rxjava3.internal.util.g.i(th);
                }
            }
            if (z9) {
                if (size == 1) {
                    return this;
                }
                throw y("Error present but other errors as well");
            }
            throw y("Error not present");
        }
        throw y("No errors");
    }

    @SafeVarargs
    @p7.e
    public final U f(@p7.e Class<? extends Throwable> error, @p7.e T... values) {
        return (U) l().s(values).c(error).j();
    }

    @p7.e
    public final U g() {
        if (this.f81351c.size() == 0) {
            return this;
        }
        throw y("Error(s) present: " + this.f81351c);
    }

    @p7.e
    public final U i() {
        return q(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean isDisposed();

    @p7.e
    public final U j() {
        long j4 = this.f81352d;
        int i4 = (j4 > 1L ? 1 : (j4 == 1L ? 0 : -1));
        if (i4 != 0) {
            if (i4 <= 0) {
                return this;
            }
            throw y("Multiple completions: " + j4);
        }
        throw y("Completed!");
    }

    @SafeVarargs
    @p7.e
    public final U k(@p7.e T... values) {
        return (U) l().s(values).g().a();
    }

    @p7.e
    protected abstract U l();

    @p7.e
    public final U m(@p7.e T value) {
        if (this.f81350b.size() == 1) {
            T t9 = this.f81350b.get(0);
            if (Objects.equals(value, t9)) {
                return this;
            }
            throw y("expected: " + z(value) + " but was: " + z(t9));
        }
        throw y("expected: " + z(value) + " but was: " + this.f81350b);
    }

    @p7.e
    public final U n(@p7.e r<T> valuePredicate) {
        p(0, valuePredicate);
        if (this.f81350b.size() <= 1) {
            return this;
        }
        throw y("Value present but other values as well");
    }

    @p7.e
    public final U o(int index, @p7.e T value) {
        int size = this.f81350b.size();
        if (size != 0) {
            if (index < size) {
                T t9 = this.f81350b.get(index);
                if (Objects.equals(value, t9)) {
                    return this;
                }
                throw y("expected: " + z(value) + " but was: " + z(t9));
            }
            throw y("Invalid index: " + index);
        }
        throw y("No values");
    }

    @p7.e
    public final U p(int index, @p7.e r<T> valuePredicate) {
        if (this.f81350b.size() != 0) {
            if (index < this.f81350b.size()) {
                try {
                    if (valuePredicate.test(this.f81350b.get(index))) {
                        return this;
                    }
                    throw y("Value not present");
                } catch (Throwable th) {
                    throw io.reactivex.rxjava3.internal.util.g.i(th);
                }
            }
            throw y("Invalid index: " + index);
        }
        throw y("No values");
    }

    @p7.e
    public final U q(int count) {
        int size = this.f81350b.size();
        if (size == count) {
            return this;
        }
        throw y("Value counts differ; expected: " + count + " but was: " + size);
    }

    @p7.e
    public final U r(@p7.e Iterable<? extends T> sequence) {
        boolean hasNext;
        boolean hasNext2;
        Iterator<T> it = this.f81350b.iterator();
        Iterator<? extends T> it2 = sequence.iterator();
        int i4 = 0;
        while (true) {
            hasNext = it2.hasNext();
            hasNext2 = it.hasNext();
            if (!hasNext2 || !hasNext) {
                break;
            }
            T next = it2.next();
            T next2 = it.next();
            if (!Objects.equals(next, next2)) {
                throw y("Values at position " + i4 + " differ; expected: " + z(next) + " but was: " + z(next2));
            }
            i4++;
        }
        if (hasNext2) {
            throw y("More values received than expected (" + i4 + ")");
        } else if (hasNext) {
            throw y("Fewer values received than expected (" + i4 + ")");
        } else {
            return this;
        }
    }

    @SafeVarargs
    @p7.e
    public final U s(@p7.e T... values) {
        int size = this.f81350b.size();
        if (size != values.length) {
            throw y("Value count differs; expected: " + values.length + " " + Arrays.toString(values) + " but was: " + size + " " + this.f81350b);
        }
        for (int i4 = 0; i4 < size; i4++) {
            T t9 = this.f81350b.get(i4);
            T t10 = values[i4];
            if (!Objects.equals(t10, t9)) {
                throw y("Values at position " + i4 + " differ; expected: " + z(t10) + " but was: " + z(t9));
            }
        }
        return this;
    }

    @SafeVarargs
    @p7.e
    public final U t(@p7.e T... values) {
        return (U) l().s(values).g().j();
    }

    @p7.e
    public final U u() throws InterruptedException {
        if (this.f81349a.getCount() == 0) {
            return this;
        }
        this.f81349a.await();
        return this;
    }

    public final boolean v(long time, @p7.e TimeUnit unit) throws InterruptedException {
        boolean z9 = this.f81349a.getCount() == 0 || this.f81349a.await(time, unit);
        this.f81356h = !z9;
        return z9;
    }

    @p7.e
    public final U w(int atLeast) {
        long currentTimeMillis = System.currentTimeMillis();
        while (true) {
            if (System.currentTimeMillis() - currentTimeMillis >= 5000) {
                this.f81356h = true;
                break;
            } else if (this.f81349a.getCount() == 0 || this.f81350b.size() >= atLeast) {
                break;
            } else {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }
        return this;
    }

    @p7.e
    public final U x(long time, @p7.e TimeUnit unit) {
        try {
            if (!this.f81349a.await(time, unit)) {
                this.f81356h = true;
                dispose();
            }
            return this;
        } catch (InterruptedException e4) {
            dispose();
            throw io.reactivex.rxjava3.internal.util.g.i(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @p7.e
    public final AssertionError y(@p7.e String message) {
        StringBuilder sb = new StringBuilder(message.length() + 64);
        sb.append(message);
        sb.append(" (");
        sb.append("latch = ");
        sb.append(this.f81349a.getCount());
        sb.append(", ");
        sb.append("values = ");
        sb.append(this.f81350b.size());
        sb.append(", ");
        sb.append("errors = ");
        sb.append(this.f81351c.size());
        sb.append(", ");
        sb.append("completions = ");
        sb.append(this.f81352d);
        if (this.f81356h) {
            sb.append(", timeout!");
        }
        if (isDisposed()) {
            sb.append(", disposed!");
        }
        CharSequence charSequence = this.f81355g;
        if (charSequence != null) {
            sb.append(", tag = ");
            sb.append(charSequence);
        }
        sb.append(')');
        AssertionError assertionError = new AssertionError(sb.toString());
        if (!this.f81351c.isEmpty()) {
            if (this.f81351c.size() == 1) {
                assertionError.initCause(this.f81351c.get(0));
            } else {
                assertionError.initCause(new CompositeException(this.f81351c));
            }
        }
        return assertionError;
    }
}
