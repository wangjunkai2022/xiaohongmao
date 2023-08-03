package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Set;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public abstract class zzx extends zzq implements Set {
    @r7.a

    /* renamed from: b  reason: collision with root package name */
    private transient zzu f31073b;

    zzu e() {
        return zzu.e(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@r7.a Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return f.a(this);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzd */
    public abstract g iterator();

    public final zzu zzf() {
        zzu zzuVar = this.f31073b;
        if (zzuVar == null) {
            zzu e4 = e();
            this.f31073b = e4;
            return e4;
        }
        return zzuVar;
    }
}
