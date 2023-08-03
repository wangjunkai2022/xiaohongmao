package com.google.common.collect;

import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: SortedLists.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
final class t4 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: SortedLists.java */
    /* loaded from: classes2.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f33881a;

        /* renamed from: b  reason: collision with root package name */
        public static final b f33882b;

        /* renamed from: c  reason: collision with root package name */
        public static final b f33883c;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ b[] f33884d;

        /* compiled from: SortedLists.java */
        /* loaded from: classes2.dex */
        enum a extends b {
            a(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.collect.t4.b
            int a(int i4) {
                return i4 - 1;
            }
        }

        /* compiled from: SortedLists.java */
        /* renamed from: com.google.common.collect.t4$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0237b extends b {
            C0237b(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.collect.t4.b
            public int a(int i4) {
                return i4;
            }
        }

        /* compiled from: SortedLists.java */
        /* loaded from: classes2.dex */
        enum c extends b {
            c(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.collect.t4.b
            public int a(int i4) {
                return ~i4;
            }
        }

        static {
            a aVar = new a("NEXT_LOWER", 0);
            f33881a = aVar;
            C0237b c0237b = new C0237b("NEXT_HIGHER", 1);
            f33882b = c0237b;
            c cVar = new c("INVERTED_INSERTION_INDEX", 2);
            f33883c = cVar;
            f33884d = new b[]{aVar, c0237b, cVar};
        }

        private b(String str, int i4) {
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f33884d.clone();
        }

        abstract int a(int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: SortedLists.java */
    /* loaded from: classes2.dex */
    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f33885a;

        /* renamed from: b  reason: collision with root package name */
        public static final c f33886b;

        /* renamed from: c  reason: collision with root package name */
        public static final c f33887c;

        /* renamed from: d  reason: collision with root package name */
        public static final c f33888d;

        /* renamed from: e  reason: collision with root package name */
        public static final c f33889e;

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ c[] f33890f;

        /* compiled from: SortedLists.java */
        /* loaded from: classes2.dex */
        enum a extends c {
            a(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.collect.t4.c
            <E> int a(Comparator<? super E> comparator, E e4, List<? extends E> list, int i4) {
                return i4;
            }
        }

        /* compiled from: SortedLists.java */
        /* loaded from: classes2.dex */
        enum b extends c {
            b(String str, int i4) {
                super(str, i4);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.t4.c
            <E> int a(Comparator<? super E> comparator, E e4, List<? extends E> list, int i4) {
                int size = list.size() - 1;
                while (i4 < size) {
                    int i10 = ((i4 + size) + 1) >>> 1;
                    if (comparator.compare((E) list.get(i10), e4) > 0) {
                        size = i10 - 1;
                    } else {
                        i4 = i10;
                    }
                }
                return i4;
            }
        }

        /* compiled from: SortedLists.java */
        /* renamed from: com.google.common.collect.t4$c$c  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0238c extends c {
            C0238c(String str, int i4) {
                super(str, i4);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.t4.c
            <E> int a(Comparator<? super E> comparator, E e4, List<? extends E> list, int i4) {
                int i10 = 0;
                while (i10 < i4) {
                    int i11 = (i10 + i4) >>> 1;
                    if (comparator.compare((E) list.get(i11), e4) < 0) {
                        i10 = i11 + 1;
                    } else {
                        i4 = i11;
                    }
                }
                return i10;
            }
        }

        /* compiled from: SortedLists.java */
        /* loaded from: classes2.dex */
        enum d extends c {
            d(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.collect.t4.c
            public <E> int a(Comparator<? super E> comparator, E e4, List<? extends E> list, int i4) {
                return c.f33886b.a(comparator, e4, list, i4) + 1;
            }
        }

        /* compiled from: SortedLists.java */
        /* loaded from: classes2.dex */
        enum e extends c {
            e(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.collect.t4.c
            public <E> int a(Comparator<? super E> comparator, E e4, List<? extends E> list, int i4) {
                return c.f33887c.a(comparator, e4, list, i4) - 1;
            }
        }

        static {
            a aVar = new a("ANY_PRESENT", 0);
            f33885a = aVar;
            b bVar = new b("LAST_PRESENT", 1);
            f33886b = bVar;
            C0238c c0238c = new C0238c("FIRST_PRESENT", 2);
            f33887c = c0238c;
            d dVar = new d("FIRST_AFTER", 3);
            f33888d = dVar;
            e eVar = new e("LAST_BEFORE", 4);
            f33889e = eVar;
            f33890f = new c[]{aVar, bVar, c0238c, dVar, eVar};
        }

        private c(String str, int i4) {
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f33890f.clone();
        }

        abstract <E> int a(Comparator<? super E> comparator, E e4, List<? extends E> list, int i4);
    }

    private t4() {
    }

    public static <E, K extends Comparable> int a(List<E> list, com.google.common.base.q<? super E, K> qVar, @NullableDecl K k10, c cVar, b bVar) {
        return b(list, qVar, k10, s3.B(), cVar, bVar);
    }

    public static <E, K> int b(List<E> list, com.google.common.base.q<? super E, K> qVar, @NullableDecl K k10, Comparator<? super K> comparator, c cVar, b bVar) {
        return d(b3.D(list, qVar), k10, comparator, cVar, bVar);
    }

    public static <E extends Comparable> int c(List<? extends E> list, E e4, c cVar, b bVar) {
        com.google.common.base.a0.E(e4);
        return d(list, e4, s3.B(), cVar, bVar);
    }

    public static <E> int d(List<? extends E> list, @NullableDecl E e4, Comparator<? super E> comparator, c cVar, b bVar) {
        com.google.common.base.a0.E(comparator);
        com.google.common.base.a0.E(list);
        com.google.common.base.a0.E(cVar);
        com.google.common.base.a0.E(bVar);
        if (!(list instanceof RandomAccess)) {
            list = b3.r(list);
        }
        int i4 = 0;
        int size = list.size() - 1;
        while (i4 <= size) {
            int i10 = (i4 + size) >>> 1;
            int compare = comparator.compare(e4, (E) list.get(i10));
            if (compare < 0) {
                size = i10 - 1;
            } else if (compare <= 0) {
                return i4 + cVar.a(comparator, e4, list.subList(i4, size + 1), i10 - i4);
            } else {
                i4 = i10 + 1;
            }
        }
        return bVar.a(i4);
    }
}
