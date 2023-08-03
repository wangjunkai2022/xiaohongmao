package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.c
@h3.a
/* loaded from: classes2.dex */
public class TreeRangeSet<C extends Comparable<?>> extends k<C> implements Serializable {
    @h3.d

    /* renamed from: a  reason: collision with root package name */
    final NavigableMap<k0<C>, Range<C>> f32983a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient Set<Range<C>> f32984b;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    private transient Set<Range<C>> f32985c;
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    private transient y3<C> f32986d;

    /* loaded from: classes2.dex */
    final class b extends e1<Range<C>> implements Set<Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        final Collection<Range<C>> f32987a;

        b(Collection<Range<C>> collection) {
            this.f32987a = collection;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.e1, com.google.common.collect.v1
        /* renamed from: M */
        public Collection<Range<C>> L() {
            return this.f32987a;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return o4.g(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return o4.k(this);
        }
    }

    /* loaded from: classes2.dex */
    private final class c extends TreeRangeSet<C> {
        c() {
            super(new d(TreeRangeSet.this.f32983a));
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.y3
        public y3<C> complement() {
            return TreeRangeSet.this;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        public boolean contains(C c10) {
            return !TreeRangeSet.this.contains(c10);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d<C extends Comparable<?>> extends j<k0<C>, Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        private final NavigableMap<k0<C>, Range<C>> f32990a;

        /* renamed from: b  reason: collision with root package name */
        private final NavigableMap<k0<C>, Range<C>> f32991b;

        /* renamed from: c  reason: collision with root package name */
        private final Range<k0<C>> f32992c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<Map.Entry<k0<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            k0<C> f32993c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ k0 f32994d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ t3 f32995e;

            a(k0 k0Var, t3 t3Var) {
                this.f32994d = k0Var;
                this.f32995e = t3Var;
                this.f32993c = k0Var;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<k0<C>, Range<C>> a() {
                Range c10;
                if (!d.this.f32992c.f32935b.n(this.f32993c) && this.f32993c != k0.a()) {
                    if (this.f32995e.hasNext()) {
                        Range range = (Range) this.f32995e.next();
                        c10 = Range.c(this.f32993c, range.f32934a);
                        this.f32993c = range.f32935b;
                    } else {
                        c10 = Range.c(this.f32993c, k0.a());
                        this.f32993c = k0.a();
                    }
                    return f3.O(c10.f32934a, c10);
                }
                return (Map.Entry) b();
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.c<Map.Entry<k0<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            k0<C> f32997c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ k0 f32998d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ t3 f32999e;

            b(k0 k0Var, t3 t3Var) {
                this.f32998d = k0Var;
                this.f32999e = t3Var;
                this.f32997c = k0Var;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<k0<C>, Range<C>> a() {
                if (this.f32997c == k0.c()) {
                    return (Map.Entry) b();
                }
                if (this.f32999e.hasNext()) {
                    Range range = (Range) this.f32999e.next();
                    Range c10 = Range.c(range.f32935b, this.f32997c);
                    this.f32997c = range.f32934a;
                    if (d.this.f32992c.f32934a.n(c10.f32934a)) {
                        return f3.O(c10.f32934a, c10);
                    }
                } else if (d.this.f32992c.f32934a.n(k0.c())) {
                    Range c11 = Range.c(k0.c(), this.f32997c);
                    this.f32997c = k0.c();
                    return f3.O(k0.c(), c11);
                }
                return (Map.Entry) b();
            }
        }

        d(NavigableMap<k0<C>, Range<C>> navigableMap) {
            this(navigableMap, Range.all());
        }

        private NavigableMap<k0<C>, Range<C>> g(Range<k0<C>> range) {
            if (!this.f32992c.isConnected(range)) {
                return ImmutableSortedMap.of();
            }
            return new d(this.f32990a, range.intersection(this.f32992c));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<k0<C>, Range<C>>> a() {
            Collection<Range<C>> values;
            k0 k0Var;
            if (this.f32992c.hasLowerBound()) {
                values = this.f32991b.tailMap(this.f32992c.lowerEndpoint(), this.f32992c.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                values = this.f32991b.values();
            }
            t3 T = x2.T(values.iterator());
            if (this.f32992c.contains(k0.c()) && (!T.hasNext() || ((Range) T.peek()).f32934a != k0.c())) {
                k0Var = k0.c();
            } else if (T.hasNext()) {
                k0Var = ((Range) T.next()).f32935b;
            } else {
                return x2.u();
            }
            return new a(k0Var, T);
        }

        @Override // com.google.common.collect.j
        Iterator<Map.Entry<k0<C>, Range<C>>> b() {
            k0<C> a10;
            k0<C> higherKey;
            if (this.f32992c.hasUpperBound()) {
                a10 = this.f32992c.upperEndpoint();
            } else {
                a10 = k0.a();
            }
            t3 T = x2.T(this.f32991b.headMap(a10, this.f32992c.hasUpperBound() && this.f32992c.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (T.hasNext()) {
                if (((Range) T.peek()).f32935b == k0.a()) {
                    higherKey = ((Range) T.next()).f32934a;
                } else {
                    higherKey = this.f32990a.higherKey(((Range) T.peek()).f32935b);
                }
            } else if (this.f32992c.contains(k0.c()) && !this.f32990a.containsKey(k0.c())) {
                higherKey = this.f32990a.higherKey(k0.c());
            } else {
                return x2.u();
            }
            return new b((k0) com.google.common.base.v.a(higherKey, k0.a()), T);
        }

        @Override // java.util.SortedMap
        public Comparator<? super k0<C>> comparator() {
            return s3.B();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.j, java.util.AbstractMap, java.util.Map
        @NullableDecl
        /* renamed from: d */
        public Range<C> get(Object obj) {
            if (obj instanceof k0) {
                try {
                    k0<C> k0Var = (k0) obj;
                    Map.Entry<k0<C>, Range<C>> firstEntry = tailMap(k0Var, true).firstEntry();
                    if (firstEntry != null && firstEntry.getKey().equals(k0Var)) {
                        return firstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: e */
        public NavigableMap<k0<C>, Range<C>> headMap(k0<C> k0Var, boolean z9) {
            return g(Range.upTo(k0Var, BoundType.b(z9)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: f */
        public NavigableMap<k0<C>, Range<C>> subMap(k0<C> k0Var, boolean z9, k0<C> k0Var2, boolean z10) {
            return g(Range.range(k0Var, BoundType.b(z9), k0Var2, BoundType.b(z10)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: h */
        public NavigableMap<k0<C>, Range<C>> tailMap(k0<C> k0Var, boolean z9) {
            return g(Range.downTo(k0Var, BoundType.b(z9)));
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            return x2.Z(a());
        }

        private d(NavigableMap<k0<C>, Range<C>> navigableMap, Range<k0<C>> range) {
            this.f32990a = navigableMap;
            this.f32991b = new e(navigableMap);
            this.f32992c = range;
        }
    }

    /* loaded from: classes2.dex */
    private final class f extends TreeRangeSet<C> {

        /* renamed from: e  reason: collision with root package name */
        private final Range<C> f33007e;

        f(Range<C> range) {
            super(new g(Range.all(), range, TreeRangeSet.this.f32983a));
            this.f33007e = range;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        public void add(Range<C> range) {
            com.google.common.base.a0.y(this.f33007e.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.f33007e);
            super.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        public void clear() {
            TreeRangeSet.this.remove(this.f33007e);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        public boolean contains(C c10) {
            return this.f33007e.contains(c10) && TreeRangeSet.this.contains(c10);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        public boolean encloses(Range<C> range) {
            Range b10;
            return (this.f33007e.isEmpty() || !this.f33007e.encloses(range) || (b10 = TreeRangeSet.this.b(range)) == null || b10.intersection(this.f33007e).isEmpty()) ? false : true;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        @NullableDecl
        public Range<C> rangeContaining(C c10) {
            Range<C> rangeContaining;
            if (this.f33007e.contains(c10) && (rangeContaining = TreeRangeSet.this.rangeContaining(c10)) != null) {
                return rangeContaining.intersection(this.f33007e);
            }
            return null;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.k, com.google.common.collect.y3
        public void remove(Range<C> range) {
            if (range.isConnected(this.f33007e)) {
                TreeRangeSet.this.remove(range.intersection(this.f33007e));
            }
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.y3
        public y3<C> subRangeSet(Range<C> range) {
            if (range.encloses(this.f33007e)) {
                return this;
            }
            if (range.isConnected(this.f33007e)) {
                return new f(this.f33007e.intersection(range));
            }
            return ImmutableRangeSet.of();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<C extends Comparable<?>> extends j<k0<C>, Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        private final Range<k0<C>> f33009a;

        /* renamed from: b  reason: collision with root package name */
        private final Range<C> f33010b;

        /* renamed from: c  reason: collision with root package name */
        private final NavigableMap<k0<C>, Range<C>> f33011c;

        /* renamed from: d  reason: collision with root package name */
        private final NavigableMap<k0<C>, Range<C>> f33012d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<Map.Entry<k0<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33013c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ k0 f33014d;

            a(Iterator it, k0 k0Var) {
                this.f33013c = it;
                this.f33014d = k0Var;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<k0<C>, Range<C>> a() {
                if (!this.f33013c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f33013c.next();
                if (this.f33014d.n(range.f32934a)) {
                    return (Map.Entry) b();
                }
                Range intersection = range.intersection(g.this.f33010b);
                return f3.O(intersection.f32934a, intersection);
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.c<Map.Entry<k0<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33016c;

            b(Iterator it) {
                this.f33016c = it;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<k0<C>, Range<C>> a() {
                if (!this.f33016c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f33016c.next();
                if (g.this.f33010b.f32934a.compareTo(range.f32935b) >= 0) {
                    return (Map.Entry) b();
                }
                Range intersection = range.intersection(g.this.f33010b);
                if (g.this.f33009a.contains(intersection.f32934a)) {
                    return f3.O(intersection.f32934a, intersection);
                }
                return (Map.Entry) b();
            }
        }

        private NavigableMap<k0<C>, Range<C>> h(Range<k0<C>> range) {
            if (!range.isConnected(this.f33009a)) {
                return ImmutableSortedMap.of();
            }
            return new g(this.f33009a.intersection(range), this.f33010b, this.f33011c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<k0<C>, Range<C>>> a() {
            Iterator<Range<C>> it;
            if (this.f33010b.isEmpty()) {
                return x2.u();
            }
            if (this.f33009a.f32935b.n(this.f33010b.f32934a)) {
                return x2.u();
            }
            if (this.f33009a.f32934a.n(this.f33010b.f32934a)) {
                it = this.f33012d.tailMap(this.f33010b.f32934a, false).values().iterator();
            } else {
                it = this.f33011c.tailMap(this.f33009a.f32934a.l(), this.f33009a.lowerBoundType() == BoundType.CLOSED).values().iterator();
            }
            return new a(it, (k0) s3.B().y(this.f33009a.f32935b, k0.d(this.f33010b.f32935b)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j
        Iterator<Map.Entry<k0<C>, Range<C>>> b() {
            if (this.f33010b.isEmpty()) {
                return x2.u();
            }
            k0 k0Var = (k0) s3.B().y(this.f33009a.f32935b, k0.d(this.f33010b.f32935b));
            return new b(this.f33011c.headMap(k0Var.l(), k0Var.q() == BoundType.CLOSED).descendingMap().values().iterator());
        }

        @Override // java.util.SortedMap
        public Comparator<? super k0<C>> comparator() {
            return s3.B();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.j, java.util.AbstractMap, java.util.Map
        @NullableDecl
        /* renamed from: e */
        public Range<C> get(@NullableDecl Object obj) {
            if (obj instanceof k0) {
                try {
                    k0<C> k0Var = (k0) obj;
                    if (this.f33009a.contains(k0Var) && k0Var.compareTo(this.f33010b.f32934a) >= 0 && k0Var.compareTo(this.f33010b.f32935b) < 0) {
                        if (k0Var.equals(this.f33010b.f32934a)) {
                            Range range = (Range) f3.P0(this.f33011c.floorEntry(k0Var));
                            if (range != null && range.f32935b.compareTo(this.f33010b.f32934a) > 0) {
                                return range.intersection(this.f33010b);
                            }
                        } else {
                            Range range2 = (Range) this.f33011c.get(k0Var);
                            if (range2 != null) {
                                return range2.intersection(this.f33010b);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: f */
        public NavigableMap<k0<C>, Range<C>> headMap(k0<C> k0Var, boolean z9) {
            return h(Range.upTo(k0Var, BoundType.b(z9)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: g */
        public NavigableMap<k0<C>, Range<C>> subMap(k0<C> k0Var, boolean z9, k0<C> k0Var2, boolean z10) {
            return h(Range.range(k0Var, BoundType.b(z9), k0Var2, BoundType.b(z10)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: i */
        public NavigableMap<k0<C>, Range<C>> tailMap(k0<C> k0Var, boolean z9) {
            return h(Range.downTo(k0Var, BoundType.b(z9)));
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            return x2.Z(a());
        }

        private g(Range<k0<C>> range, Range<C> range2, NavigableMap<k0<C>, Range<C>> navigableMap) {
            this.f33009a = (Range) com.google.common.base.a0.E(range);
            this.f33010b = (Range) com.google.common.base.a0.E(range2);
            this.f33011c = (NavigableMap) com.google.common.base.a0.E(navigableMap);
            this.f33012d = new e(navigableMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NullableDecl
    public Range<C> b(Range<C> range) {
        com.google.common.base.a0.E(range);
        Map.Entry<k0<C>, Range<C>> floorEntry = this.f32983a.floorEntry(range.f32934a);
        if (floorEntry == null || !floorEntry.getValue().encloses(range)) {
            return null;
        }
        return floorEntry.getValue();
    }

    private void c(Range<C> range) {
        if (range.isEmpty()) {
            this.f32983a.remove(range.f32934a);
        } else {
            this.f32983a.put(range.f32934a, range);
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public void add(Range<C> range) {
        com.google.common.base.a0.E(range);
        if (range.isEmpty()) {
            return;
        }
        k0<C> k0Var = range.f32934a;
        k0<C> k0Var2 = range.f32935b;
        Map.Entry<k0<C>, Range<C>> lowerEntry = this.f32983a.lowerEntry(k0Var);
        if (lowerEntry != null) {
            Range<C> value = lowerEntry.getValue();
            if (value.f32935b.compareTo(k0Var) >= 0) {
                if (value.f32935b.compareTo(k0Var2) >= 0) {
                    k0Var2 = value.f32935b;
                }
                k0Var = value.f32934a;
            }
        }
        Map.Entry<k0<C>, Range<C>> floorEntry = this.f32983a.floorEntry(k0Var2);
        if (floorEntry != null) {
            Range<C> value2 = floorEntry.getValue();
            if (value2.f32935b.compareTo(k0Var2) >= 0) {
                k0Var2 = value2.f32935b;
            }
        }
        this.f32983a.subMap(k0Var, k0Var2).clear();
        c(Range.c(k0Var, k0Var2));
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ void addAll(y3 y3Var) {
        super.addAll(y3Var);
    }

    @Override // com.google.common.collect.y3
    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.f32985c;
        if (set == null) {
            b bVar = new b(this.f32983a.descendingMap().values());
            this.f32985c = bVar;
            return bVar;
        }
        return set;
    }

    @Override // com.google.common.collect.y3
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.f32984b;
        if (set == null) {
            b bVar = new b(this.f32983a.values());
            this.f32984b = bVar;
            return bVar;
        }
        return set;
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.y3
    public y3<C> complement() {
        y3<C> y3Var = this.f32986d;
        if (y3Var == null) {
            c cVar = new c();
            this.f32986d = cVar;
            return cVar;
        }
        return y3Var;
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public boolean encloses(Range<C> range) {
        com.google.common.base.a0.E(range);
        Map.Entry<k0<C>, Range<C>> floorEntry = this.f32983a.floorEntry(range.f32934a);
        return floorEntry != null && floorEntry.getValue().encloses(range);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean enclosesAll(y3 y3Var) {
        return super.enclosesAll(y3Var);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public boolean intersects(Range<C> range) {
        com.google.common.base.a0.E(range);
        Map.Entry<k0<C>, Range<C>> ceilingEntry = this.f32983a.ceilingEntry(range.f32934a);
        if (ceilingEntry == null || !ceilingEntry.getValue().isConnected(range) || ceilingEntry.getValue().intersection(range).isEmpty()) {
            Map.Entry<k0<C>, Range<C>> lowerEntry = this.f32983a.lowerEntry(range.f32934a);
            return (lowerEntry == null || !lowerEntry.getValue().isConnected(range) || lowerEntry.getValue().intersection(range).isEmpty()) ? false : true;
        }
        return true;
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    @NullableDecl
    public Range<C> rangeContaining(C c10) {
        com.google.common.base.a0.E(c10);
        Map.Entry<k0<C>, Range<C>> floorEntry = this.f32983a.floorEntry(k0.d(c10));
        if (floorEntry == null || !floorEntry.getValue().contains(c10)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public void remove(Range<C> range) {
        com.google.common.base.a0.E(range);
        if (range.isEmpty()) {
            return;
        }
        Map.Entry<k0<C>, Range<C>> lowerEntry = this.f32983a.lowerEntry(range.f32934a);
        if (lowerEntry != null) {
            Range<C> value = lowerEntry.getValue();
            if (value.f32935b.compareTo(range.f32934a) >= 0) {
                if (range.hasUpperBound() && value.f32935b.compareTo(range.f32935b) >= 0) {
                    c(Range.c(range.f32935b, value.f32935b));
                }
                c(Range.c(value.f32934a, range.f32934a));
            }
        }
        Map.Entry<k0<C>, Range<C>> floorEntry = this.f32983a.floorEntry(range.f32935b);
        if (floorEntry != null) {
            Range<C> value2 = floorEntry.getValue();
            if (range.hasUpperBound() && value2.f32935b.compareTo(range.f32935b) >= 0) {
                c(Range.c(range.f32935b, value2.f32935b));
            }
        }
        this.f32983a.subMap(range.f32934a, range.f32935b).clear();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ void removeAll(y3 y3Var) {
        super.removeAll(y3Var);
    }

    @Override // com.google.common.collect.y3
    public Range<C> span() {
        Map.Entry<k0<C>, Range<C>> firstEntry = this.f32983a.firstEntry();
        Map.Entry<k0<C>, Range<C>> lastEntry = this.f32983a.lastEntry();
        if (firstEntry != null) {
            return Range.c(firstEntry.getValue().f32934a, lastEntry.getValue().f32935b);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.y3
    public y3<C> subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new f(range);
    }

    private TreeRangeSet(NavigableMap<k0<C>, Range<C>> navigableMap) {
        this.f32983a = navigableMap;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(y3<C> y3Var) {
        TreeRangeSet<C> create = create();
        create.addAll(y3Var);
        return create;
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ void addAll(Iterable iterable) {
        super.addAll(iterable);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ void removeAll(Iterable iterable) {
        super.removeAll(iterable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.d
    /* loaded from: classes2.dex */
    public static final class e<C extends Comparable<?>> extends j<k0<C>, Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        private final NavigableMap<k0<C>, Range<C>> f33001a;

        /* renamed from: b  reason: collision with root package name */
        private final Range<k0<C>> f33002b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<Map.Entry<k0<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33003c;

            a(Iterator it) {
                this.f33003c = it;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<k0<C>, Range<C>> a() {
                if (!this.f33003c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f33003c.next();
                if (e.this.f33002b.f32935b.n(range.f32935b)) {
                    return (Map.Entry) b();
                }
                return f3.O(range.f32935b, range);
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.c<Map.Entry<k0<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ t3 f33005c;

            b(t3 t3Var) {
                this.f33005c = t3Var;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<k0<C>, Range<C>> a() {
                if (!this.f33005c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f33005c.next();
                if (e.this.f33002b.f32934a.n(range.f32935b)) {
                    return f3.O(range.f32935b, range);
                }
                return (Map.Entry) b();
            }
        }

        e(NavigableMap<k0<C>, Range<C>> navigableMap) {
            this.f33001a = navigableMap;
            this.f33002b = Range.all();
        }

        private NavigableMap<k0<C>, Range<C>> g(Range<k0<C>> range) {
            if (range.isConnected(this.f33002b)) {
                return new e(this.f33001a, range.intersection(this.f33002b));
            }
            return ImmutableSortedMap.of();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<k0<C>, Range<C>>> a() {
            Iterator<Range<C>> it;
            if (!this.f33002b.hasLowerBound()) {
                it = this.f33001a.values().iterator();
            } else {
                Map.Entry<k0<C>, Range<C>> lowerEntry = this.f33001a.lowerEntry(this.f33002b.lowerEndpoint());
                if (lowerEntry == null) {
                    it = this.f33001a.values().iterator();
                } else if (this.f33002b.f32934a.n(lowerEntry.getValue().f32935b)) {
                    it = this.f33001a.tailMap(lowerEntry.getKey(), true).values().iterator();
                } else {
                    it = this.f33001a.tailMap(this.f33002b.lowerEndpoint(), true).values().iterator();
                }
            }
            return new a(it);
        }

        @Override // com.google.common.collect.j
        Iterator<Map.Entry<k0<C>, Range<C>>> b() {
            Collection<Range<C>> values;
            if (this.f33002b.hasUpperBound()) {
                values = this.f33001a.headMap(this.f33002b.upperEndpoint(), false).descendingMap().values();
            } else {
                values = this.f33001a.descendingMap().values();
            }
            t3 T = x2.T(values.iterator());
            if (T.hasNext() && this.f33002b.f32935b.n(((Range) T.peek()).f32935b)) {
                T.next();
            }
            return new b(T);
        }

        @Override // java.util.SortedMap
        public Comparator<? super k0<C>> comparator() {
            return s3.B();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.j, java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Range<C> get(@NullableDecl Object obj) {
            Map.Entry<k0<C>, Range<C>> lowerEntry;
            if (obj instanceof k0) {
                try {
                    k0<C> k0Var = (k0) obj;
                    if (this.f33002b.contains(k0Var) && (lowerEntry = this.f33001a.lowerEntry(k0Var)) != null && lowerEntry.getValue().f32935b.equals(k0Var)) {
                        return lowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: e */
        public NavigableMap<k0<C>, Range<C>> headMap(k0<C> k0Var, boolean z9) {
            return g(Range.upTo(k0Var, BoundType.b(z9)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: f */
        public NavigableMap<k0<C>, Range<C>> subMap(k0<C> k0Var, boolean z9, k0<C> k0Var2, boolean z10) {
            return g(Range.range(k0Var, BoundType.b(z9), k0Var2, BoundType.b(z10)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: h */
        public NavigableMap<k0<C>, Range<C>> tailMap(k0<C> k0Var, boolean z9) {
            return g(Range.downTo(k0Var, BoundType.b(z9)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            if (this.f33002b.equals(Range.all())) {
                return this.f33001a.isEmpty();
            }
            return !a().hasNext();
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            if (this.f33002b.equals(Range.all())) {
                return this.f33001a.size();
            }
            return x2.Z(a());
        }

        private e(NavigableMap<k0<C>, Range<C>> navigableMap, Range<k0<C>> range) {
            this.f33001a = navigableMap;
            this.f33002b = range;
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> create = create();
        create.addAll(iterable);
        return create;
    }
}
