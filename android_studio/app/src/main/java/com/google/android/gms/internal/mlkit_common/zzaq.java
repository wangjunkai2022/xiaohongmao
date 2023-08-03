package com.google.android.gms.internal.mlkit_common;

import java.util.Set;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public abstract class zzaq extends zzaj implements Set {
    @r7.a

    /* renamed from: b  reason: collision with root package name */
    private transient zzan f30261b;

    zzan e() {
        return zzan.e(toArray());
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
        return v.a(this);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzd */
    public abstract w iterator();

    public final zzan zzf() {
        zzan zzanVar = this.f30261b;
        if (zzanVar == null) {
            zzan e4 = e();
            this.f30261b = e4;
            return e4;
        }
        return zzanVar;
    }
}
