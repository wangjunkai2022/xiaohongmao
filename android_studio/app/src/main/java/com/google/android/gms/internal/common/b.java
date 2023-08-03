package com.google.android.gms.internal.common;

import java.util.Arrays;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
class b<E> extends c<E> {

    /* renamed from: a  reason: collision with root package name */
    Object[] f29382a = new Object[4];

    /* renamed from: b  reason: collision with root package name */
    int f29383b = 0;

    /* renamed from: c  reason: collision with root package name */
    boolean f29384c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i4) {
    }

    private final void b(int i4) {
        Object[] objArr = this.f29382a;
        int length = objArr.length;
        if (length >= i4) {
            if (this.f29384c) {
                this.f29382a = (Object[]) objArr.clone();
                this.f29384c = false;
                return;
            }
            return;
        }
        int i10 = length + (length >> 1) + 1;
        if (i10 < i4) {
            int highestOneBit = Integer.highestOneBit(i4 - 1);
            i10 = highestOneBit + highestOneBit;
        }
        if (i10 < 0) {
            i10 = Integer.MAX_VALUE;
        }
        this.f29382a = Arrays.copyOf(objArr, i10);
        this.f29384c = false;
    }

    public final b<E> a(E e4) {
        Objects.requireNonNull(e4);
        b(this.f29383b + 1);
        Object[] objArr = this.f29382a;
        int i4 = this.f29383b;
        this.f29383b = i4 + 1;
        objArr[i4] = e4;
        return this;
    }
}
