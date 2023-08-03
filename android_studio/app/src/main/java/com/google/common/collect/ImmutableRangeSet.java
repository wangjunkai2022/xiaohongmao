package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.t4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class ImmutableRangeSet<C extends Comparable> extends k<C> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final ImmutableRangeSet<Comparable<?>> f32784c = new ImmutableRangeSet<>(ImmutableList.of());

    /* renamed from: d  reason: collision with root package name */
    private static final ImmutableRangeSet<Comparable<?>> f32785d = new ImmutableRangeSet<>(ImmutableList.of(Range.all()));

    /* renamed from: a  reason: collision with root package name */
    private final transient ImmutableList<Range<C>> f32786a;
    @LazyInit

    /* renamed from: b  reason: collision with root package name */
    private transient ImmutableRangeSet<C> f32787b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends ImmutableList<Range<C>> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f32788c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f32789d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Range f32790e;

        a(int i4, int i10, Range range) {
            this.f32788c = i4;
            this.f32789d = i10;
            this.f32790e = range;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.List
        /* renamed from: o */
        public Range<C> get(int i4) {
            com.google.common.base.a0.C(i4, this.f32788c);
            if (i4 != 0 && i4 != this.f32788c - 1) {
                return (Range) ImmutableRangeSet.this.f32786a.get(i4 + this.f32789d);
            }
            return ((Range) ImmutableRangeSet.this.f32786a.get(i4 + this.f32789d)).intersection(this.f32790e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f32788c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b extends ImmutableSortedSet<C> {

        /* renamed from: h  reason: collision with root package name */
        private final p0<C> f32792h;
        @MonotonicNonNullDecl

        /* renamed from: i  reason: collision with root package name */
        private transient Integer f32793i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<C> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<Range<C>> f32795c;

            /* renamed from: d  reason: collision with root package name */
            Iterator<C> f32796d = x2.u();

            a() {
                this.f32795c = ImmutableRangeSet.this.f32786a.iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public C a() {
                while (!this.f32796d.hasNext()) {
                    if (this.f32795c.hasNext()) {
                        this.f32796d = ContiguousSet.create(this.f32795c.next(), b.this.f32792h).iterator();
                    } else {
                        return (C) b();
                    }
                }
                return this.f32796d.next();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.ImmutableRangeSet$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0215b extends com.google.common.collect.c<C> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<Range<C>> f32798c;

            /* renamed from: d  reason: collision with root package name */
            Iterator<C> f32799d = x2.u();

            C0215b() {
                this.f32798c = ImmutableRangeSet.this.f32786a.reverse().iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public C a() {
                while (!this.f32799d.hasNext()) {
                    if (this.f32798c.hasNext()) {
                        this.f32799d = ContiguousSet.create(this.f32798c.next(), b.this.f32792h).descendingIterator();
                    } else {
                        return (C) b();
                    }
                }
                return this.f32799d.next();
            }
        }

        b(p0<C> p0Var) {
            super(s3.B());
            this.f32792h = p0Var;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        /* renamed from: D */
        public ImmutableSortedSet<C> t(C c10, boolean z9) {
            return E(Range.upTo(c10, BoundType.b(z9)));
        }

        ImmutableSortedSet<C> E(Range<C> range) {
            return ImmutableRangeSet.this.subRangeSet((Range) range).asSet(this.f32792h);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        /* renamed from: F */
        public ImmutableSortedSet<C> v(C c10, boolean z9, C c11, boolean z10) {
            if (!z9 && !z10 && Range.b(c10, c11) == 0) {
                return ImmutableSortedSet.of();
            }
            return E(Range.range(c10, BoundType.b(z9), c11, BoundType.b(z10)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        /* renamed from: G */
        public ImmutableSortedSet<C> w(C c10, boolean z9) {
            return E(Range.downTo(c10, BoundType.b(z9)));
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return ImmutableRangeSet.this.contains((Comparable) obj);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return ImmutableRangeSet.this.f32786a.e();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object h() {
            return new c(ImmutableRangeSet.this.f32786a, this.f32792h);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableSortedSet
        public int indexOf(Object obj) {
            if (contains(obj)) {
                Comparable comparable = (Comparable) obj;
                long j4 = 0;
                k5 it = ImmutableRangeSet.this.f32786a.iterator();
                while (it.hasNext()) {
                    Range range = (Range) it.next();
                    if (range.contains(comparable)) {
                        return com.google.common.primitives.f.x(j4 + ContiguousSet.create(range, this.f32792h).indexOf(comparable));
                    }
                    j4 += ContiguousSet.create(range, this.f32792h).size();
                }
                throw new AssertionError("impossible");
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        ImmutableSortedSet<C> r() {
            return new n0(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Integer num = this.f32793i;
            if (num == null) {
                long j4 = 0;
                k5 it = ImmutableRangeSet.this.f32786a.iterator();
                while (it.hasNext()) {
                    j4 += ContiguousSet.create((Range) it.next(), this.f32792h).size();
                    if (j4 >= 2147483647L) {
                        break;
                    }
                }
                num = Integer.valueOf(com.google.common.primitives.f.x(j4));
                this.f32793i = num;
            }
            return num.intValue();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return ImmutableRangeSet.this.f32786a.toString();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
        @h3.c("NavigableSet")
        public k5<C> descendingIterator() {
            return new C0215b();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public k5<C> iterator() {
            return new a();
        }
    }

    /* loaded from: classes2.dex */
    private static class c<C extends Comparable> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableList<Range<C>> f32801a;

        /* renamed from: b  reason: collision with root package name */
        private final p0<C> f32802b;

        c(ImmutableList<Range<C>> immutableList, p0<C> p0Var) {
            this.f32801a = immutableList;
            this.f32802b = p0Var;
        }

        Object a() {
            return new ImmutableRangeSet(this.f32801a).asSet(this.f32802b);
        }
    }

    /* loaded from: classes2.dex */
    public static class d<C extends Comparable<?>> {

        /* renamed from: a  reason: collision with root package name */
        private final List<Range<C>> f32803a = b3.q();

        @CanIgnoreReturnValue
        public d<C> a(Range<C> range) {
            com.google.common.base.a0.u(!range.isEmpty(), "range must not be empty, but was %s", range);
            this.f32803a.add(range);
            return this;
        }

        @CanIgnoreReturnValue
        public d<C> b(y3<C> y3Var) {
            return c(y3Var.asRanges());
        }

        @CanIgnoreReturnValue
        public d<C> c(Iterable<Range<C>> iterable) {
            for (Range<C> range : iterable) {
                a(range);
            }
            return this;
        }

        public ImmutableRangeSet<C> d() {
            ImmutableList.a aVar = new ImmutableList.a(this.f32803a.size());
            Collections.sort(this.f32803a, Range.e());
            t3 T = x2.T(this.f32803a.iterator());
            while (T.hasNext()) {
                Range range = (Range) T.next();
                while (T.hasNext()) {
                    Range<C> range2 = (Range) T.peek();
                    if (range.isConnected(range2)) {
                        com.google.common.base.a0.y(range.intersection(range2).isEmpty(), "Overlapping ranges not permitted but found %s overlapping %s", range, range2);
                        range = range.span((Range) T.next());
                    }
                }
                aVar.g(range);
            }
            ImmutableList e4 = aVar.e();
            if (e4.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            if (e4.size() == 1 && ((Range) w2.z(e4)).equals(Range.all())) {
                return ImmutableRangeSet.b();
            }
            return new ImmutableRangeSet<>(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class e extends ImmutableList<Range<C>> {

        /* renamed from: c  reason: collision with root package name */
        private final boolean f32804c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f32805d;

        /* renamed from: e  reason: collision with root package name */
        private final int f32806e;

        e() {
            boolean hasLowerBound = ((Range) ImmutableRangeSet.this.f32786a.get(0)).hasLowerBound();
            this.f32804c = hasLowerBound;
            boolean hasUpperBound = ((Range) w2.w(ImmutableRangeSet.this.f32786a)).hasUpperBound();
            this.f32805d = hasUpperBound;
            int size = ImmutableRangeSet.this.f32786a.size() - 1;
            size = hasLowerBound ? size + 1 : size;
            this.f32806e = hasUpperBound ? size + 1 : size;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.List
        /* renamed from: o */
        public Range<C> get(int i4) {
            k0<C> k0Var;
            k0<C> k0Var2;
            com.google.common.base.a0.C(i4, this.f32806e);
            if (this.f32804c) {
                k0Var = i4 == 0 ? k0.c() : ((Range) ImmutableRangeSet.this.f32786a.get(i4 - 1)).f32935b;
            } else {
                k0Var = ((Range) ImmutableRangeSet.this.f32786a.get(i4)).f32935b;
            }
            if (this.f32805d && i4 == this.f32806e - 1) {
                k0Var2 = k0.a();
            } else {
                k0Var2 = ((Range) ImmutableRangeSet.this.f32786a.get(i4 + (!this.f32804c ? 1 : 0))).f32934a;
            }
            return Range.c(k0Var, k0Var2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f32806e;
        }
    }

    /* loaded from: classes2.dex */
    private static final class f<C extends Comparable> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableList<Range<C>> f32808a;

        f(ImmutableList<Range<C>> immutableList) {
            this.f32808a = immutableList;
        }

        Object a() {
            if (this.f32808a.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            if (this.f32808a.equals(ImmutableList.of(Range.all()))) {
                return ImmutableRangeSet.b();
            }
            return new ImmutableRangeSet(this.f32808a);
        }
    }

    ImmutableRangeSet(ImmutableList<Range<C>> immutableList) {
        this.f32786a = immutableList;
    }

    static <C extends Comparable> ImmutableRangeSet<C> b() {
        return f32785d;
    }

    public static <C extends Comparable<?>> d<C> builder() {
        return new d<>();
    }

    private ImmutableList<Range<C>> c(Range<C> range) {
        int size;
        if (!this.f32786a.isEmpty() && !range.isEmpty()) {
            if (range.encloses(span())) {
                return this.f32786a;
            }
            int a10 = range.hasLowerBound() ? t4.a(this.f32786a, Range.j(), range.f32934a, t4.c.f33888d, t4.b.f33882b) : 0;
            if (range.hasUpperBound()) {
                size = t4.a(this.f32786a, Range.d(), range.f32935b, t4.c.f33887c, t4.b.f33882b);
            } else {
                size = this.f32786a.size();
            }
            int i4 = size - a10;
            if (i4 == 0) {
                return ImmutableList.of();
            }
            return new a(i4, a10, range);
        }
        return ImmutableList.of();
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(y3<C> y3Var) {
        com.google.common.base.a0.E(y3Var);
        if (y3Var.isEmpty()) {
            return of();
        }
        if (y3Var.encloses(Range.all())) {
            return b();
        }
        if (y3Var instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) y3Var;
            if (!immutableRangeSet.d()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) y3Var.asRanges()));
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of() {
        return f32784c;
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> unionOf(Iterable<Range<C>> iterable) {
        return copyOf(TreeRangeSet.create(iterable));
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    @Deprecated
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    @Deprecated
    public void addAll(y3<C> y3Var) {
        throw new UnsupportedOperationException();
    }

    public ImmutableSortedSet<C> asSet(p0<C> p0Var) {
        com.google.common.base.a0.E(p0Var);
        if (isEmpty()) {
            return ImmutableSortedSet.of();
        }
        Range<C> canonical = span().canonical(p0Var);
        if (canonical.hasLowerBound()) {
            if (!canonical.hasUpperBound()) {
                try {
                    p0Var.e();
                } catch (NoSuchElementException unused) {
                    throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
                }
            }
            return new b(p0Var);
        }
        throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    boolean d() {
        return this.f32786a.e();
    }

    public ImmutableRangeSet<C> difference(y3<C> y3Var) {
        TreeRangeSet create = TreeRangeSet.create(this);
        create.removeAll(y3Var);
        return copyOf(create);
    }

    Object e() {
        return new f(this.f32786a);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public boolean encloses(Range<C> range) {
        int b10 = t4.b(this.f32786a, Range.d(), range.f32934a, s3.B(), t4.c.f33885a, t4.b.f33881a);
        return b10 != -1 && this.f32786a.get(b10).encloses(range);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean enclosesAll(y3 y3Var) {
        return super.enclosesAll(y3Var);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    public ImmutableRangeSet<C> intersection(y3<C> y3Var) {
        TreeRangeSet create = TreeRangeSet.create(this);
        create.removeAll(y3Var.complement());
        return copyOf(create);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public boolean intersects(Range<C> range) {
        int b10 = t4.b(this.f32786a, Range.d(), range.f32934a, s3.B(), t4.c.f33885a, t4.b.f33882b);
        if (b10 >= this.f32786a.size() || !this.f32786a.get(b10).isConnected(range) || this.f32786a.get(b10).intersection(range).isEmpty()) {
            if (b10 > 0) {
                int i4 = b10 - 1;
                if (this.f32786a.get(i4).isConnected(range) && !this.f32786a.get(i4).intersection(range).isEmpty()) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public boolean isEmpty() {
        return this.f32786a.isEmpty();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public Range<C> rangeContaining(C c10) {
        int b10 = t4.b(this.f32786a, Range.d(), k0.d(c10), s3.B(), t4.c.f33885a, t4.b.f33881a);
        if (b10 != -1) {
            Range<C> range = this.f32786a.get(b10);
            if (range.contains(c10)) {
                return range;
            }
            return null;
        }
        return null;
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    @Deprecated
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    @Deprecated
    public void removeAll(y3<C> y3Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y3
    public Range<C> span() {
        if (!this.f32786a.isEmpty()) {
            k0<C> k0Var = this.f32786a.get(0).f32934a;
            ImmutableList<Range<C>> immutableList = this.f32786a;
            return Range.c(k0Var, immutableList.get(immutableList.size() - 1).f32935b);
        }
        throw new NoSuchElementException();
    }

    public ImmutableRangeSet<C> union(y3<C> y3Var) {
        return unionOf(w2.f(asRanges(), y3Var.asRanges()));
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of(Range<C> range) {
        com.google.common.base.a0.E(range);
        if (range.isEmpty()) {
            return of();
        }
        if (range.equals(Range.all())) {
            return b();
        }
        return new ImmutableRangeSet<>(ImmutableList.of(range));
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    @Deprecated
    public void addAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y3
    public ImmutableSet<Range<C>> asDescendingSetOfRanges() {
        if (this.f32786a.isEmpty()) {
            return ImmutableSet.of();
        }
        return new h4(this.f32786a.reverse(), Range.e().G());
    }

    @Override // com.google.common.collect.y3
    public ImmutableSet<Range<C>> asRanges() {
        if (this.f32786a.isEmpty()) {
            return ImmutableSet.of();
        }
        return new h4(this.f32786a, Range.e());
    }

    @Override // com.google.common.collect.y3
    public ImmutableRangeSet<C> complement() {
        ImmutableRangeSet<C> immutableRangeSet = this.f32787b;
        if (immutableRangeSet != null) {
            return immutableRangeSet;
        }
        if (this.f32786a.isEmpty()) {
            ImmutableRangeSet<C> b10 = b();
            this.f32787b = b10;
            return b10;
        } else if (this.f32786a.size() == 1 && this.f32786a.get(0).equals(Range.all())) {
            ImmutableRangeSet<C> of = of();
            this.f32787b = of;
            return of;
        } else {
            ImmutableRangeSet<C> immutableRangeSet2 = new ImmutableRangeSet<>(new e(), this);
            this.f32787b = immutableRangeSet2;
            return immutableRangeSet2;
        }
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    @Deprecated
    public void removeAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y3
    public ImmutableRangeSet<C> subRangeSet(Range<C> range) {
        if (!isEmpty()) {
            Range<C> span = span();
            if (range.encloses(span)) {
                return this;
            }
            if (range.isConnected(span)) {
                return new ImmutableRangeSet<>(c(range));
            }
        }
        return of();
    }

    private ImmutableRangeSet(ImmutableList<Range<C>> immutableList, ImmutableRangeSet<C> immutableRangeSet) {
        this.f32786a = immutableList;
        this.f32787b = immutableRangeSet;
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> copyOf(Iterable<Range<C>> iterable) {
        return new d().c(iterable).d();
    }
}
