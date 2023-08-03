package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class s0 {

    /* renamed from: a  reason: collision with root package name */
    private final SparseIntArray f29186a;

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.gms.common.f f29187b;

    public s0() {
        this(com.google.android.gms.common.e.x());
    }

    public final int a(Context context, int i4) {
        return this.f29186a.get(i4, -1);
    }

    public final int b(@NonNull Context context, @NonNull a.f fVar) {
        u.k(context);
        u.k(fVar);
        int i4 = 0;
        if (fVar.j()) {
            int r9 = fVar.r();
            int a10 = a(context, r9);
            if (a10 == -1) {
                int i10 = 0;
                while (true) {
                    if (i10 >= this.f29186a.size()) {
                        i4 = -1;
                        break;
                    }
                    int keyAt = this.f29186a.keyAt(i10);
                    if (keyAt > r9 && this.f29186a.get(keyAt) == 0) {
                        break;
                    }
                    i10++;
                }
                a10 = i4 == -1 ? this.f29187b.k(context, r9) : i4;
                this.f29186a.put(r9, a10);
            }
            return a10;
        }
        return 0;
    }

    public final void c() {
        this.f29186a.clear();
    }

    public s0(@NonNull com.google.android.gms.common.f fVar) {
        this.f29186a = new SparseIntArray();
        u.k(fVar);
        this.f29187b = fVar;
    }
}
