package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.NonNull;
import java.io.OutputStream;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class e0 extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f29575a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a() {
        return this.f29575a;
    }

    @Override // java.io.OutputStream
    public final void write(int i4) {
        this.f29575a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f29575a += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(@NonNull byte[] bArr, int i4, int i10) {
        int length;
        int i11;
        if (i4 >= 0 && i4 <= (length = bArr.length) && i10 >= 0 && (i11 = i4 + i10) <= length && i11 >= 0) {
            this.f29575a += i10;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
