package io.reactivex.internal.util;

import java.util.Comparator;
import java.util.List;

/* compiled from: MergerBiFunction.java */
/* loaded from: classes4.dex */
public final class j<T> implements n7.c<List<T>, List<T>, List<T>> {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<? super T> f75923a;

    public j(Comparator<? super T> comparator) {
        this.f75923a = comparator;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0043 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0036 -> B:14:0x0037). Please submit an issue!!! */
    @Override // n7.c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<T> apply(java.util.List<T> r6, java.util.List<T> r7) throws java.lang.Exception {
        /*
            r5 = this;
            int r0 = r6.size()
            int r1 = r7.size()
            int r0 = r0 + r1
            if (r0 != 0) goto L11
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            return r6
        L11:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>(r0)
            java.util.Iterator r6 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
            boolean r0 = r6.hasNext()
            r2 = 0
            if (r0 == 0) goto L2a
            java.lang.Object r0 = r6.next()
            goto L2b
        L2a:
            r0 = r2
        L2b:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L36
            java.lang.Object r3 = r7.next()
            goto L37
        L36:
            r3 = r2
        L37:
            if (r0 == 0) goto L61
            if (r3 == 0) goto L61
            java.util.Comparator<? super T> r4 = r5.f75923a
            int r4 = r4.compare(r0, r3)
            if (r4 >= 0) goto L53
            r1.add(r0)
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L51
            java.lang.Object r0 = r6.next()
            goto L37
        L51:
            r0 = r2
            goto L37
        L53:
            r1.add(r3)
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L36
            java.lang.Object r3 = r7.next()
            goto L37
        L61:
            if (r0 == 0) goto L74
            r1.add(r0)
        L66:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L85
            java.lang.Object r7 = r6.next()
            r1.add(r7)
            goto L66
        L74:
            r1.add(r3)
        L77:
            boolean r6 = r7.hasNext()
            if (r6 == 0) goto L85
            java.lang.Object r6 = r7.next()
            r1.add(r6)
            goto L77
        L85:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.j.apply(java.util.List, java.util.List):java.util.List");
    }
}
