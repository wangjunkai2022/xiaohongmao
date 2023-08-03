package io.reactivex.internal.util;

import n7.r;

/* compiled from: AppendOnlyLinkedArrayList.java */
/* loaded from: classes4.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f75910a;

    /* renamed from: b  reason: collision with root package name */
    final Object[] f75911b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f75912c;

    /* renamed from: d  reason: collision with root package name */
    int f75913d;

    /* compiled from: AppendOnlyLinkedArrayList.java */
    /* renamed from: io.reactivex.internal.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0614a<T> extends r<T> {
        @Override // n7.r
        boolean test(T t9);
    }

    public a(int i4) {
        this.f75910a = i4;
        Object[] objArr = new Object[i4 + 1];
        this.f75911b = objArr;
        this.f75912c = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0019, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <U> boolean a(io.reactivex.g0<? super U> r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f75911b
            int r1 = r4.f75910a
        L4:
            r2 = 0
            if (r0 == 0) goto L1e
        L7:
            if (r2 >= r1) goto L19
            r3 = r0[r2]
            if (r3 != 0) goto Le
            goto L19
        Le:
            boolean r3 = io.reactivex.internal.util.NotificationLite.acceptFull(r3, r5)
            if (r3 == 0) goto L16
            r5 = 1
            return r5
        L16:
            int r2 = r2 + 1
            goto L7
        L19:
            r0 = r0[r1]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.a(io.reactivex.g0):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0019, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <U> boolean b(org.reactivestreams.d<? super U> r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f75911b
            int r1 = r4.f75910a
        L4:
            r2 = 0
            if (r0 == 0) goto L1e
        L7:
            if (r2 >= r1) goto L19
            r3 = r0[r2]
            if (r3 != 0) goto Le
            goto L19
        Le:
            boolean r3 = io.reactivex.internal.util.NotificationLite.acceptFull(r3, r5)
            if (r3 == 0) goto L16
            r5 = 1
            return r5
        L16:
            int r2 = r2 + 1
            goto L7
        L19:
            r0 = r0[r1]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.b(org.reactivestreams.d):boolean");
    }

    public void c(T t9) {
        int i4 = this.f75910a;
        int i10 = this.f75913d;
        if (i10 == i4) {
            Object[] objArr = new Object[i4 + 1];
            this.f75912c[i4] = objArr;
            this.f75912c = objArr;
            i10 = 0;
        }
        this.f75912c[i10] = t9;
        this.f75913d = i10 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0018, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(io.reactivex.internal.util.a.InterfaceC0614a<? super T> r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f75911b
            int r1 = r4.f75910a
        L4:
            if (r0 == 0) goto L1d
            r2 = 0
        L7:
            if (r2 >= r1) goto L18
            r3 = r0[r2]
            if (r3 != 0) goto Le
            goto L18
        Le:
            boolean r3 = r5.test(r3)
            if (r3 == 0) goto L15
            return
        L15:
            int r2 = r2 + 1
            goto L7
        L18:
            r0 = r0[r1]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.d(io.reactivex.internal.util.a$a):void");
    }

    public <S> void e(S s9, n7.d<? super S, ? super T> dVar) throws Exception {
        Object[] objArr = this.f75911b;
        int i4 = this.f75910a;
        while (true) {
            for (int i10 = 0; i10 < i4; i10++) {
                Object obj = objArr[i10];
                if (obj == null || dVar.a(s9, obj)) {
                    return;
                }
            }
            objArr = objArr[i4];
        }
    }

    public void f(T t9) {
        this.f75911b[0] = t9;
    }
}
