package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import com.google.android.gms.common.data.d;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class e implements d, d.a {

    /* renamed from: a  reason: collision with root package name */
    private HashSet<d> f28981a = new HashSet<>();

    @Override // com.google.android.gms.common.data.d
    public void a(int i4, int i10) {
        Iterator<d> it = this.f28981a.iterator();
        while (it.hasNext()) {
            it.next().a(i4, i10);
        }
    }

    @Override // com.google.android.gms.common.data.d
    public void b(int i4, int i10) {
        Iterator<d> it = this.f28981a.iterator();
        while (it.hasNext()) {
            it.next().b(i4, i10);
        }
    }

    @Override // com.google.android.gms.common.data.d.a
    public void c(@NonNull d dVar) {
        this.f28981a.remove(dVar);
    }

    @Override // com.google.android.gms.common.data.d.a
    public void d(@NonNull d dVar) {
        this.f28981a.add(dVar);
    }

    @Override // com.google.android.gms.common.data.d
    public void e(int i4, int i10, int i11) {
        Iterator<d> it = this.f28981a.iterator();
        while (it.hasNext()) {
            it.next().e(i4, i10, i11);
        }
    }

    @Override // com.google.android.gms.common.data.d
    public void f(int i4, int i10) {
        Iterator<d> it = this.f28981a.iterator();
        while (it.hasNext()) {
            it.next().f(i4, i10);
        }
    }

    @Override // com.google.android.gms.common.data.d
    public void g() {
        Iterator<d> it = this.f28981a.iterator();
        while (it.hasNext()) {
            it.next().g();
        }
    }

    public void h() {
        this.f28981a.clear();
    }

    public boolean i() {
        return !this.f28981a.isEmpty();
    }
}
