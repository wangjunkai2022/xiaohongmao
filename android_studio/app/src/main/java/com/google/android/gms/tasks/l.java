package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public class l<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final q0<TResult> f31125a = new q0<>();

    public l() {
    }

    public l(@NonNull a aVar) {
        aVar.b(new m0(this));
    }

    @NonNull
    public k<TResult> a() {
        return this.f31125a;
    }

    public void b(@NonNull Exception exc) {
        this.f31125a.y(exc);
    }

    public void c(@Nullable TResult tresult) {
        this.f31125a.z(tresult);
    }

    public boolean d(@NonNull Exception exc) {
        return this.f31125a.B(exc);
    }

    public boolean e(@Nullable TResult tresult) {
        return this.f31125a.C(tresult);
    }
}
