package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Joiner.java */
@h3.b
/* loaded from: classes2.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    private final String f32309a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Joiner.java */
    /* loaded from: classes2.dex */
    public class a extends u {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f32310b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(u uVar, String str) {
            super(uVar, null);
            this.f32310b = str;
        }

        @Override // com.google.common.base.u
        public u q() {
            throw new UnsupportedOperationException("already specified useForNull");
        }

        @Override // com.google.common.base.u
        CharSequence r(@NullableDecl Object obj) {
            return obj == null ? this.f32310b : u.this.r(obj);
        }

        @Override // com.google.common.base.u
        public u s(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    /* compiled from: Joiner.java */
    /* loaded from: classes2.dex */
    class b extends u {
        b(u uVar) {
            super(uVar, null);
        }

        @Override // com.google.common.base.u
        public <A extends Appendable> A d(A a10, Iterator<?> it) throws IOException {
            a0.F(a10, "appendable");
            a0.F(it, "parts");
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (next != null) {
                    a10.append(u.this.r(next));
                    break;
                }
            }
            while (it.hasNext()) {
                Object next2 = it.next();
                if (next2 != null) {
                    a10.append(u.this.f32309a);
                    a10.append(u.this.r(next2));
                }
            }
            return a10;
        }

        @Override // com.google.common.base.u
        public u s(String str) {
            throw new UnsupportedOperationException("already specified skipNulls");
        }

        @Override // com.google.common.base.u
        public d u(String str) {
            throw new UnsupportedOperationException("can't use .skipNulls() with maps");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Joiner.java */
    /* loaded from: classes2.dex */
    public static class c extends AbstractList<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object[] f32313a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f32314b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f32315c;

        c(Object[] objArr, Object obj, Object obj2) {
            this.f32313a = objArr;
            this.f32314b = obj;
            this.f32315c = obj2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i4) {
            if (i4 != 0) {
                if (i4 != 1) {
                    return this.f32313a[i4 - 2];
                }
                return this.f32315c;
            }
            return this.f32314b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f32313a.length + 2;
        }
    }

    /* compiled from: Joiner.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final u f32316a;

        /* renamed from: b  reason: collision with root package name */
        private final String f32317b;

        /* synthetic */ d(u uVar, String str, a aVar) {
            this(uVar, str);
        }

        @CanIgnoreReturnValue
        @h3.a
        public <A extends Appendable> A a(A a10, Iterable<? extends Map.Entry<?, ?>> iterable) throws IOException {
            return (A) b(a10, iterable.iterator());
        }

        @CanIgnoreReturnValue
        @h3.a
        public <A extends Appendable> A b(A a10, Iterator<? extends Map.Entry<?, ?>> it) throws IOException {
            a0.E(a10);
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                a10.append(this.f32316a.r(next.getKey()));
                a10.append(this.f32317b);
                a10.append(this.f32316a.r(next.getValue()));
                while (it.hasNext()) {
                    a10.append(this.f32316a.f32309a);
                    Map.Entry<?, ?> next2 = it.next();
                    a10.append(this.f32316a.r(next2.getKey()));
                    a10.append(this.f32317b);
                    a10.append(this.f32316a.r(next2.getValue()));
                }
            }
            return a10;
        }

        @CanIgnoreReturnValue
        public <A extends Appendable> A c(A a10, Map<?, ?> map) throws IOException {
            return (A) a(a10, map.entrySet());
        }

        @CanIgnoreReturnValue
        @h3.a
        public StringBuilder d(StringBuilder sb, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return e(sb, iterable.iterator());
        }

        @CanIgnoreReturnValue
        @h3.a
        public StringBuilder e(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
            try {
                b(sb, it);
                return sb;
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }

        @CanIgnoreReturnValue
        public StringBuilder f(StringBuilder sb, Map<?, ?> map) {
            return d(sb, map.entrySet());
        }

        @h3.a
        public String g(Iterable<? extends Map.Entry<?, ?>> iterable) {
            return h(iterable.iterator());
        }

        @h3.a
        public String h(Iterator<? extends Map.Entry<?, ?>> it) {
            return e(new StringBuilder(), it).toString();
        }

        public String i(Map<?, ?> map) {
            return g(map.entrySet());
        }

        public d j(String str) {
            return new d(this.f32316a.s(str), this.f32317b);
        }

        private d(u uVar, String str) {
            this.f32316a = uVar;
            this.f32317b = (String) a0.E(str);
        }
    }

    /* synthetic */ u(u uVar, a aVar) {
        this(uVar);
    }

    private static Iterable<Object> j(Object obj, Object obj2, Object[] objArr) {
        a0.E(objArr);
        return new c(objArr, obj, obj2);
    }

    public static u o(char c10) {
        return new u(String.valueOf(c10));
    }

    public static u p(String str) {
        return new u(str);
    }

    @CanIgnoreReturnValue
    public <A extends Appendable> A b(A a10, Iterable<?> iterable) throws IOException {
        return (A) d(a10, iterable.iterator());
    }

    @CanIgnoreReturnValue
    public final <A extends Appendable> A c(A a10, @NullableDecl Object obj, @NullableDecl Object obj2, Object... objArr) throws IOException {
        return (A) b(a10, j(obj, obj2, objArr));
    }

    @CanIgnoreReturnValue
    public <A extends Appendable> A d(A a10, Iterator<?> it) throws IOException {
        a0.E(a10);
        if (it.hasNext()) {
            a10.append(r(it.next()));
            while (it.hasNext()) {
                a10.append(this.f32309a);
                a10.append(r(it.next()));
            }
        }
        return a10;
    }

    @CanIgnoreReturnValue
    public final <A extends Appendable> A e(A a10, Object[] objArr) throws IOException {
        return (A) b(a10, Arrays.asList(objArr));
    }

    @CanIgnoreReturnValue
    public final StringBuilder f(StringBuilder sb, Iterable<?> iterable) {
        return h(sb, iterable.iterator());
    }

    @CanIgnoreReturnValue
    public final StringBuilder g(StringBuilder sb, @NullableDecl Object obj, @NullableDecl Object obj2, Object... objArr) {
        return f(sb, j(obj, obj2, objArr));
    }

    @CanIgnoreReturnValue
    public final StringBuilder h(StringBuilder sb, Iterator<?> it) {
        try {
            d(sb, it);
            return sb;
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    @CanIgnoreReturnValue
    public final StringBuilder i(StringBuilder sb, Object[] objArr) {
        return f(sb, Arrays.asList(objArr));
    }

    public final String k(Iterable<?> iterable) {
        return m(iterable.iterator());
    }

    public final String l(@NullableDecl Object obj, @NullableDecl Object obj2, Object... objArr) {
        return k(j(obj, obj2, objArr));
    }

    public final String m(Iterator<?> it) {
        return h(new StringBuilder(), it).toString();
    }

    public final String n(Object[] objArr) {
        return k(Arrays.asList(objArr));
    }

    public u q() {
        return new b(this);
    }

    CharSequence r(Object obj) {
        a0.E(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public u s(String str) {
        a0.E(str);
        return new a(this, str);
    }

    public d t(char c10) {
        return u(String.valueOf(c10));
    }

    public d u(String str) {
        return new d(this, str, null);
    }

    private u(String str) {
        this.f32309a = (String) a0.E(str);
    }

    private u(u uVar) {
        this.f32309a = uVar.f32309a;
    }
}
