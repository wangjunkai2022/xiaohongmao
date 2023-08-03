package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.l3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class TreeMultiset<E> extends o<E> implements Serializable {
    @h3.c

    /* renamed from: h  reason: collision with root package name */
    private static final long f32957h = 1;

    /* renamed from: e  reason: collision with root package name */
    private final transient g<f<E>> f32958e;

    /* renamed from: f  reason: collision with root package name */
    private final transient e2<E> f32959f;

    /* renamed from: g  reason: collision with root package name */
    private final transient f<E> f32960g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends l3.f<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f32961a;

        a(f fVar) {
            this.f32961a = fVar;
        }

        @Override // com.google.common.collect.k3.a
        public int getCount() {
            int x9 = this.f32961a.x();
            return x9 == 0 ? TreeMultiset.this.count(getElement()) : x9;
        }

        @Override // com.google.common.collect.k3.a
        public E getElement() {
            return (E) this.f32961a.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Iterator<k3.a<E>> {

        /* renamed from: a  reason: collision with root package name */
        f<E> f32963a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        k3.a<E> f32964b;

        b() {
            this.f32963a = TreeMultiset.this.v();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public k3.a<E> next() {
            if (hasNext()) {
                k3.a<E> D = TreeMultiset.this.D(this.f32963a);
                this.f32964b = D;
                if (((f) this.f32963a).f32981i == TreeMultiset.this.f32960g) {
                    this.f32963a = null;
                } else {
                    this.f32963a = ((f) this.f32963a).f32981i;
                }
                return D;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f32963a == null) {
                return false;
            }
            if (TreeMultiset.this.f32959f.r(this.f32963a.y())) {
                this.f32963a = null;
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(this.f32964b != null);
            TreeMultiset.this.setCount(this.f32964b.getElement(), 0);
            this.f32964b = null;
        }
    }

    /* loaded from: classes2.dex */
    class c implements Iterator<k3.a<E>> {

        /* renamed from: a  reason: collision with root package name */
        f<E> f32966a;

        /* renamed from: b  reason: collision with root package name */
        k3.a<E> f32967b = null;

        c() {
            this.f32966a = TreeMultiset.this.w();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public k3.a<E> next() {
            if (hasNext()) {
                k3.a<E> D = TreeMultiset.this.D(this.f32966a);
                this.f32967b = D;
                if (((f) this.f32966a).f32980h == TreeMultiset.this.f32960g) {
                    this.f32966a = null;
                } else {
                    this.f32966a = ((f) this.f32966a).f32980h;
                }
                return D;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f32966a == null) {
                return false;
            }
            if (TreeMultiset.this.f32959f.s(this.f32966a.y())) {
                this.f32966a = null;
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(this.f32967b != null);
            TreeMultiset.this.setCount(this.f32967b.getElement(), 0);
            this.f32967b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32969a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f32969a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32969a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f32970a;

        /* renamed from: b  reason: collision with root package name */
        public static final e f32971b;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ e[] f32972c;

        /* loaded from: classes2.dex */
        enum a extends e {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.collect.TreeMultiset.e
            int a(f<?> fVar) {
                return ((f) fVar).f32974b;
            }

            @Override // com.google.common.collect.TreeMultiset.e
            long b(@NullableDecl f<?> fVar) {
                if (fVar == null) {
                    return 0L;
                }
                return ((f) fVar).f32976d;
            }
        }

        /* loaded from: classes2.dex */
        enum b extends e {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.collect.TreeMultiset.e
            int a(f<?> fVar) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.e
            long b(@NullableDecl f<?> fVar) {
                if (fVar == null) {
                    return 0L;
                }
                return ((f) fVar).f32975c;
            }
        }

        static {
            a aVar = new a("SIZE", 0);
            f32970a = aVar;
            b bVar = new b("DISTINCT", 1);
            f32971b = bVar;
            f32972c = new e[]{aVar, bVar};
        }

        private e(String str, int i4) {
        }

        public static e valueOf(String str) {
            return (e) Enum.valueOf(e.class, str);
        }

        public static e[] values() {
            return (e[]) f32972c.clone();
        }

        abstract int a(f<?> fVar);

        abstract long b(@NullableDecl f<?> fVar);

        /* synthetic */ e(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class f<E> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private final E f32973a;

        /* renamed from: b  reason: collision with root package name */
        private int f32974b;

        /* renamed from: c  reason: collision with root package name */
        private int f32975c;

        /* renamed from: d  reason: collision with root package name */
        private long f32976d;

        /* renamed from: e  reason: collision with root package name */
        private int f32977e;
        @NullableDecl

        /* renamed from: f  reason: collision with root package name */
        private f<E> f32978f;
        @NullableDecl

        /* renamed from: g  reason: collision with root package name */
        private f<E> f32979g;
        @NullableDecl

        /* renamed from: h  reason: collision with root package name */
        private f<E> f32980h;
        @NullableDecl

        /* renamed from: i  reason: collision with root package name */
        private f<E> f32981i;

        f(@NullableDecl E e4, int i4) {
            com.google.common.base.a0.d(i4 > 0);
            this.f32973a = e4;
            this.f32974b = i4;
            this.f32976d = i4;
            this.f32975c = 1;
            this.f32977e = 1;
            this.f32978f = null;
            this.f32979g = null;
        }

        private f<E> A() {
            int s9 = s();
            if (s9 == -2) {
                if (this.f32979g.s() > 0) {
                    this.f32979g = this.f32979g.I();
                }
                return H();
            } else if (s9 != 2) {
                C();
                return this;
            } else {
                if (this.f32978f.s() < 0) {
                    this.f32978f = this.f32978f.H();
                }
                return I();
            }
        }

        private void B() {
            D();
            C();
        }

        private void C() {
            this.f32977e = Math.max(z(this.f32978f), z(this.f32979g)) + 1;
        }

        private void D() {
            this.f32975c = TreeMultiset.u(this.f32978f) + 1 + TreeMultiset.u(this.f32979g);
            this.f32976d = this.f32974b + L(this.f32978f) + L(this.f32979g);
        }

        private f<E> F(f<E> fVar) {
            f<E> fVar2 = this.f32979g;
            if (fVar2 == null) {
                return this.f32978f;
            }
            this.f32979g = fVar2.F(fVar);
            this.f32975c--;
            this.f32976d -= fVar.f32974b;
            return A();
        }

        private f<E> G(f<E> fVar) {
            f<E> fVar2 = this.f32978f;
            if (fVar2 == null) {
                return this.f32979g;
            }
            this.f32978f = fVar2.G(fVar);
            this.f32975c--;
            this.f32976d -= fVar.f32974b;
            return A();
        }

        private f<E> H() {
            com.google.common.base.a0.g0(this.f32979g != null);
            f<E> fVar = this.f32979g;
            this.f32979g = fVar.f32978f;
            fVar.f32978f = this;
            fVar.f32976d = this.f32976d;
            fVar.f32975c = this.f32975c;
            B();
            fVar.C();
            return fVar;
        }

        private f<E> I() {
            com.google.common.base.a0.g0(this.f32978f != null);
            f<E> fVar = this.f32978f;
            this.f32978f = fVar.f32979g;
            fVar.f32979g = this;
            fVar.f32976d = this.f32976d;
            fVar.f32975c = this.f32975c;
            B();
            fVar.C();
            return fVar;
        }

        private static long L(@NullableDecl f<?> fVar) {
            if (fVar == null) {
                return 0L;
            }
            return ((f) fVar).f32976d;
        }

        private f<E> q(E e4, int i4) {
            f<E> fVar = new f<>(e4, i4);
            this.f32978f = fVar;
            TreeMultiset.C(this.f32980h, fVar, this);
            this.f32977e = Math.max(2, this.f32977e);
            this.f32975c++;
            this.f32976d += i4;
            return this;
        }

        private f<E> r(E e4, int i4) {
            f<E> fVar = new f<>(e4, i4);
            this.f32979g = fVar;
            TreeMultiset.C(this, fVar, this.f32981i);
            this.f32977e = Math.max(2, this.f32977e);
            this.f32975c++;
            this.f32976d += i4;
            return this;
        }

        private int s() {
            return z(this.f32978f) - z(this.f32979g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @NullableDecl
        public f<E> t(Comparator<? super E> comparator, E e4) {
            int compare = comparator.compare(e4, (E) this.f32973a);
            if (compare < 0) {
                f<E> fVar = this.f32978f;
                return fVar == null ? this : (f) com.google.common.base.v.a(fVar.t(comparator, e4), this);
            } else if (compare == 0) {
                return this;
            } else {
                f<E> fVar2 = this.f32979g;
                if (fVar2 == null) {
                    return null;
                }
                return fVar2.t(comparator, e4);
            }
        }

        private f<E> v() {
            int i4 = this.f32974b;
            this.f32974b = 0;
            TreeMultiset.B(this.f32980h, this.f32981i);
            f<E> fVar = this.f32978f;
            if (fVar == null) {
                return this.f32979g;
            }
            f<E> fVar2 = this.f32979g;
            if (fVar2 == null) {
                return fVar;
            }
            if (fVar.f32977e >= fVar2.f32977e) {
                f<E> fVar3 = this.f32980h;
                fVar3.f32978f = fVar.F(fVar3);
                fVar3.f32979g = this.f32979g;
                fVar3.f32975c = this.f32975c - 1;
                fVar3.f32976d = this.f32976d - i4;
                return fVar3.A();
            }
            f<E> fVar4 = this.f32981i;
            fVar4.f32979g = fVar2.G(fVar4);
            fVar4.f32978f = this.f32978f;
            fVar4.f32975c = this.f32975c - 1;
            fVar4.f32976d = this.f32976d - i4;
            return fVar4.A();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @NullableDecl
        public f<E> w(Comparator<? super E> comparator, E e4) {
            int compare = comparator.compare(e4, (E) this.f32973a);
            if (compare > 0) {
                f<E> fVar = this.f32979g;
                return fVar == null ? this : (f) com.google.common.base.v.a(fVar.w(comparator, e4), this);
            } else if (compare == 0) {
                return this;
            } else {
                f<E> fVar2 = this.f32978f;
                if (fVar2 == null) {
                    return null;
                }
                return fVar2.w(comparator, e4);
            }
        }

        private static int z(@NullableDecl f<?> fVar) {
            if (fVar == null) {
                return 0;
            }
            return ((f) fVar).f32977e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        f<E> E(Comparator<? super E> comparator, @NullableDecl E e4, int i4, int[] iArr) {
            int compare = comparator.compare(e4, (E) this.f32973a);
            if (compare < 0) {
                f<E> fVar = this.f32978f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f32978f = fVar.E(comparator, e4, i4, iArr);
                if (iArr[0] > 0) {
                    if (i4 >= iArr[0]) {
                        this.f32975c--;
                        this.f32976d -= iArr[0];
                    } else {
                        this.f32976d -= i4;
                    }
                }
                return iArr[0] == 0 ? this : A();
            } else if (compare > 0) {
                f<E> fVar2 = this.f32979g;
                if (fVar2 == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f32979g = fVar2.E(comparator, e4, i4, iArr);
                if (iArr[0] > 0) {
                    if (i4 >= iArr[0]) {
                        this.f32975c--;
                        this.f32976d -= iArr[0];
                    } else {
                        this.f32976d -= i4;
                    }
                }
                return A();
            } else {
                int i10 = this.f32974b;
                iArr[0] = i10;
                if (i4 >= i10) {
                    return v();
                }
                this.f32974b = i10 - i4;
                this.f32976d -= i4;
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        f<E> J(Comparator<? super E> comparator, @NullableDecl E e4, int i4, int i10, int[] iArr) {
            int compare = comparator.compare(e4, (E) this.f32973a);
            if (compare < 0) {
                f<E> fVar = this.f32978f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return (i4 != 0 || i10 <= 0) ? this : q(e4, i10);
                }
                this.f32978f = fVar.J(comparator, e4, i4, i10, iArr);
                if (iArr[0] == i4) {
                    if (i10 == 0 && iArr[0] != 0) {
                        this.f32975c--;
                    } else if (i10 > 0 && iArr[0] == 0) {
                        this.f32975c++;
                    }
                    this.f32976d += i10 - iArr[0];
                }
                return A();
            } else if (compare > 0) {
                f<E> fVar2 = this.f32979g;
                if (fVar2 == null) {
                    iArr[0] = 0;
                    return (i4 != 0 || i10 <= 0) ? this : r(e4, i10);
                }
                this.f32979g = fVar2.J(comparator, e4, i4, i10, iArr);
                if (iArr[0] == i4) {
                    if (i10 == 0 && iArr[0] != 0) {
                        this.f32975c--;
                    } else if (i10 > 0 && iArr[0] == 0) {
                        this.f32975c++;
                    }
                    this.f32976d += i10 - iArr[0];
                }
                return A();
            } else {
                int i11 = this.f32974b;
                iArr[0] = i11;
                if (i4 == i11) {
                    if (i10 == 0) {
                        return v();
                    }
                    this.f32976d += i10 - i11;
                    this.f32974b = i10;
                }
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        f<E> K(Comparator<? super E> comparator, @NullableDecl E e4, int i4, int[] iArr) {
            int i10;
            int compare = comparator.compare(e4, (E) this.f32973a);
            if (compare < 0) {
                f<E> fVar = this.f32978f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return i4 > 0 ? q(e4, i4) : this;
                }
                this.f32978f = fVar.K(comparator, e4, i4, iArr);
                if (i4 == 0 && iArr[0] != 0) {
                    this.f32975c--;
                } else if (i4 > 0 && iArr[0] == 0) {
                    this.f32975c++;
                }
                this.f32976d += i4 - iArr[0];
                return A();
            } else if (compare > 0) {
                f<E> fVar2 = this.f32979g;
                if (fVar2 == null) {
                    iArr[0] = 0;
                    return i4 > 0 ? r(e4, i4) : this;
                }
                this.f32979g = fVar2.K(comparator, e4, i4, iArr);
                if (i4 == 0 && iArr[0] != 0) {
                    this.f32975c--;
                } else if (i4 > 0 && iArr[0] == 0) {
                    this.f32975c++;
                }
                this.f32976d += i4 - iArr[0];
                return A();
            } else {
                iArr[0] = this.f32974b;
                if (i4 == 0) {
                    return v();
                }
                this.f32976d += i4 - i10;
                this.f32974b = i4;
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        f<E> p(Comparator<? super E> comparator, @NullableDecl E e4, int i4, int[] iArr) {
            int compare = comparator.compare(e4, (E) this.f32973a);
            if (compare < 0) {
                f<E> fVar = this.f32978f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return q(e4, i4);
                }
                int i10 = fVar.f32977e;
                f<E> p9 = fVar.p(comparator, e4, i4, iArr);
                this.f32978f = p9;
                if (iArr[0] == 0) {
                    this.f32975c++;
                }
                this.f32976d += i4;
                return p9.f32977e == i10 ? this : A();
            } else if (compare > 0) {
                f<E> fVar2 = this.f32979g;
                if (fVar2 == null) {
                    iArr[0] = 0;
                    return r(e4, i4);
                }
                int i11 = fVar2.f32977e;
                f<E> p10 = fVar2.p(comparator, e4, i4, iArr);
                this.f32979g = p10;
                if (iArr[0] == 0) {
                    this.f32975c++;
                }
                this.f32976d += i4;
                return p10.f32977e == i11 ? this : A();
            } else {
                int i12 = this.f32974b;
                iArr[0] = i12;
                long j4 = i4;
                com.google.common.base.a0.d(((long) i12) + j4 <= 2147483647L);
                this.f32974b += i4;
                this.f32976d += j4;
                return this;
            }
        }

        public String toString() {
            return l3.k(y(), x()).toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int u(Comparator<? super E> comparator, E e4) {
            int compare = comparator.compare(e4, (E) this.f32973a);
            if (compare < 0) {
                f<E> fVar = this.f32978f;
                if (fVar == null) {
                    return 0;
                }
                return fVar.u(comparator, e4);
            } else if (compare > 0) {
                f<E> fVar2 = this.f32979g;
                if (fVar2 == null) {
                    return 0;
                }
                return fVar2.u(comparator, e4);
            } else {
                return this.f32974b;
            }
        }

        int x() {
            return this.f32974b;
        }

        E y() {
            return this.f32973a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<T> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private T f32982a;

        private g() {
        }

        public void a(@NullableDecl T t9, T t10) {
            if (this.f32982a == t9) {
                this.f32982a = t10;
                return;
            }
            throw new ConcurrentModificationException();
        }

        void b() {
            this.f32982a = null;
        }

        @NullableDecl
        public T c() {
            return this.f32982a;
        }

        /* synthetic */ g(a aVar) {
            this();
        }
    }

    TreeMultiset(g<f<E>> gVar, e2<E> e2Var, f<E> fVar) {
        super(e2Var.b());
        this.f32958e = gVar;
        this.f32959f = e2Var;
        this.f32960g = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void B(f<T> fVar, f<T> fVar2) {
        ((f) fVar).f32981i = fVar2;
        ((f) fVar2).f32980h = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void C(f<T> fVar, f<T> fVar2, f<T> fVar3) {
        B(fVar, fVar2);
        B(fVar2, fVar3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k3.a<E> D(f<E> fVar) {
        return new a(fVar);
    }

    @h3.c
    private void E(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        m4.k(this, objectOutputStream);
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(s3.B());
    }

    private long r(e eVar, @NullableDecl f<E> fVar) {
        long b10;
        long r9;
        if (fVar == null) {
            return 0L;
        }
        int compare = comparator().compare(this.f32959f.k(), ((f) fVar).f32973a);
        if (compare > 0) {
            return r(eVar, ((f) fVar).f32979g);
        }
        if (compare == 0) {
            int i4 = d.f32969a[this.f32959f.j().ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    return eVar.b(((f) fVar).f32979g);
                }
                throw new AssertionError();
            }
            b10 = eVar.a(fVar);
            r9 = eVar.b(((f) fVar).f32979g);
        } else {
            b10 = eVar.b(((f) fVar).f32979g) + eVar.a(fVar);
            r9 = r(eVar, ((f) fVar).f32978f);
        }
        return b10 + r9;
    }

    private long s(e eVar, @NullableDecl f<E> fVar) {
        long b10;
        long s9;
        if (fVar == null) {
            return 0L;
        }
        int compare = comparator().compare(this.f32959f.i(), ((f) fVar).f32973a);
        if (compare < 0) {
            return s(eVar, ((f) fVar).f32978f);
        }
        if (compare == 0) {
            int i4 = d.f32969a[this.f32959f.h().ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    return eVar.b(((f) fVar).f32978f);
                }
                throw new AssertionError();
            }
            b10 = eVar.a(fVar);
            s9 = eVar.b(((f) fVar).f32978f);
        } else {
            b10 = eVar.b(((f) fVar).f32978f) + eVar.a(fVar);
            s9 = s(eVar, ((f) fVar).f32979g);
        }
        return b10 + s9;
    }

    private long t(e eVar) {
        f<E> c10 = this.f32958e.c();
        long b10 = eVar.b(c10);
        if (this.f32959f.l()) {
            b10 -= s(eVar, c10);
        }
        return this.f32959f.m() ? b10 - r(eVar, c10) : b10;
    }

    static int u(@NullableDecl f<?> fVar) {
        if (fVar == null) {
            return 0;
        }
        return ((f) fVar).f32975c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NullableDecl
    public f<E> v() {
        f<E> fVar;
        if (this.f32958e.c() == null) {
            return null;
        }
        if (this.f32959f.l()) {
            E i4 = this.f32959f.i();
            fVar = this.f32958e.c().t(comparator(), i4);
            if (fVar == null) {
                return null;
            }
            if (this.f32959f.h() == BoundType.OPEN && comparator().compare(i4, fVar.y()) == 0) {
                fVar = ((f) fVar).f32981i;
            }
        } else {
            fVar = ((f) this.f32960g).f32981i;
        }
        if (fVar == this.f32960g || !this.f32959f.c(fVar.y())) {
            return null;
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NullableDecl
    public f<E> w() {
        f<E> fVar;
        if (this.f32958e.c() == null) {
            return null;
        }
        if (this.f32959f.m()) {
            E k10 = this.f32959f.k();
            fVar = this.f32958e.c().w(comparator(), k10);
            if (fVar == null) {
                return null;
            }
            if (this.f32959f.j() == BoundType.OPEN && comparator().compare(k10, fVar.y()) == 0) {
                fVar = ((f) fVar).f32980h;
            }
        } else {
            fVar = ((f) this.f32960g).f32980h;
        }
        if (fVar == this.f32960g || !this.f32959f.c(fVar.y())) {
            return null;
        }
        return fVar;
    }

    @h3.c
    private void z(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        m4.a(o.class, "comparator").b(this, comparator);
        m4.a(TreeMultiset.class, "range").b(this, e2.a(comparator));
        m4.a(TreeMultiset.class, "rootReference").b(this, new g(null));
        f fVar = new f(null, 1);
        m4.a(TreeMultiset.class, "header").b(this, fVar);
        B(fVar, fVar);
        m4.f(this, objectInputStream);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public int add(@NullableDecl E e4, int i4) {
        y.b(i4, "occurrences");
        if (i4 == 0) {
            return count(e4);
        }
        com.google.common.base.a0.d(this.f32959f.c(e4));
        f<E> c10 = this.f32958e.c();
        if (c10 == null) {
            comparator().compare(e4, e4);
            f<E> fVar = new f<>(e4, i4);
            f<E> fVar2 = this.f32960g;
            C(fVar2, fVar, fVar2);
            this.f32958e.a(c10, fVar);
            return 0;
        }
        int[] iArr = new int[1];
        this.f32958e.a(c10, c10.p(comparator(), e4, i4, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.i
    int b() {
        return com.google.common.primitives.f.x(t(e.f32971b));
    }

    @Override // com.google.common.collect.i
    Iterator<E> c() {
        return l3.h(d());
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        if (this.f32959f.l() || this.f32959f.m()) {
            x2.h(d());
            return;
        }
        f<E> fVar = ((f) this.f32960g).f32981i;
        while (true) {
            f<E> fVar2 = this.f32960g;
            if (fVar != fVar2) {
                f<E> fVar3 = ((f) fVar).f32981i;
                ((f) fVar).f32974b = 0;
                ((f) fVar).f32978f = null;
                ((f) fVar).f32979g = null;
                ((f) fVar).f32980h = null;
                ((f) fVar).f32981i = null;
                fVar = fVar3;
            } else {
                B(fVar2, fVar2);
                this.f32958e.b();
                return;
            }
        }
    }

    @Override // com.google.common.collect.o, com.google.common.collect.v4, com.google.common.collect.r4
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.k3
    public int count(@NullableDecl Object obj) {
        try {
            f<E> c10 = this.f32958e.c();
            if (this.f32959f.c(obj) && c10 != null) {
                return c10.u(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.i
    public Iterator<k3.a<E>> d() {
        return new b();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ k3.a firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.v4
    public v4<E> headMultiset(@NullableDecl E e4, BoundType boundType) {
        return new TreeMultiset(this.f32958e, this.f32959f.n(e2.t(comparator(), e4, boundType)), this.f32960g);
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.k3
    public Iterator<E> iterator() {
        return l3.n(this);
    }

    @Override // com.google.common.collect.o
    Iterator<k3.a<E>> j() {
        return new c();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ k3.a lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ k3.a pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ k3.a pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj, int i4) {
        y.b(i4, "occurrences");
        if (i4 == 0) {
            return count(obj);
        }
        f<E> c10 = this.f32958e.c();
        int[] iArr = new int[1];
        try {
            if (this.f32959f.c(obj) && c10 != null) {
                this.f32958e.a(c10, c10.E(comparator(), obj, i4, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public int setCount(@NullableDecl E e4, int i4) {
        y.b(i4, "count");
        if (!this.f32959f.c(e4)) {
            com.google.common.base.a0.d(i4 == 0);
            return 0;
        }
        f<E> c10 = this.f32958e.c();
        if (c10 == null) {
            if (i4 > 0) {
                add(e4, i4);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.f32958e.a(c10, c10.K(comparator(), e4, i4, iArr));
        return iArr[0];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public int size() {
        return com.google.common.primitives.f.x(t(e.f32970a));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 subMultiset(@NullableDecl Object obj, BoundType boundType, @NullableDecl Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override // com.google.common.collect.v4
    public v4<E> tailMultiset(@NullableDecl E e4, BoundType boundType) {
        return new TreeMultiset(this.f32958e, this.f32959f.n(e2.d(comparator(), e4, boundType)), this.f32960g);
    }

    public static <E> TreeMultiset<E> create(@NullableDecl Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(s3.B()) : new TreeMultiset<>(comparator);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> create = create();
        w2.a(create, iterable);
        return create;
    }

    TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.f32959f = e2.a(comparator);
        f<E> fVar = new f<>(null, 1);
        this.f32960g = fVar;
        B(fVar, fVar);
        this.f32958e = new g<>(null);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public boolean setCount(@NullableDecl E e4, int i4, int i10) {
        y.b(i10, "newCount");
        y.b(i4, "oldCount");
        com.google.common.base.a0.d(this.f32959f.c(e4));
        f<E> c10 = this.f32958e.c();
        if (c10 != null) {
            int[] iArr = new int[1];
            this.f32958e.a(c10, c10.J(comparator(), e4, i4, i10, iArr));
            return iArr[0] == i4;
        } else if (i4 == 0) {
            if (i10 > 0) {
                add(e4, i10);
            }
            return true;
        } else {
            return false;
        }
    }
}
