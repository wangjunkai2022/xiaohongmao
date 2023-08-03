package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Arrays;
import java.util.Objects;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
class ab extends bb {

    /* renamed from: a  reason: collision with root package name */
    Object[] f30333a = new Object[4];

    /* renamed from: b  reason: collision with root package name */
    int f30334b = 0;

    /* renamed from: c  reason: collision with root package name */
    boolean f30335c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(int i4) {
    }

    private final void b(int i4) {
        Object[] objArr = this.f30333a;
        int length = objArr.length;
        if (length >= i4) {
            if (this.f30335c) {
                this.f30333a = (Object[]) objArr.clone();
                this.f30335c = false;
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
        this.f30333a = Arrays.copyOf(objArr, i10);
        this.f30335c = false;
    }

    public final ab a(Object obj) {
        Objects.requireNonNull(obj);
        b(this.f30334b + 1);
        Object[] objArr = this.f30333a;
        int i4 = this.f30334b;
        this.f30334b = i4 + 1;
        objArr[i4] = obj;
        return this;
    }
}
