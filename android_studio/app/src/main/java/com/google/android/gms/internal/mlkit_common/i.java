package com.google.android.gms.internal.mlkit_common;

import java.util.Arrays;
import java.util.Objects;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
class i extends j {

    /* renamed from: a  reason: collision with root package name */
    Object[] f29694a = new Object[4];

    /* renamed from: b  reason: collision with root package name */
    int f29695b = 0;

    /* renamed from: c  reason: collision with root package name */
    boolean f29696c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(int i4) {
    }

    private final void b(int i4) {
        Object[] objArr = this.f29694a;
        int length = objArr.length;
        if (length >= i4) {
            if (this.f29696c) {
                this.f29694a = (Object[]) objArr.clone();
                this.f29696c = false;
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
        this.f29694a = Arrays.copyOf(objArr, i10);
        this.f29696c = false;
    }

    public final i a(Object obj) {
        Objects.requireNonNull(obj);
        b(this.f29695b + 1);
        Object[] objArr = this.f29694a;
        int i4 = this.f29695b;
        this.f29695b = i4 + 1;
        objArr[i4] = obj;
        return this;
    }
}
