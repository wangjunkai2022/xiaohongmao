package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.dynamic.c;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class h extends c.a {

    /* renamed from: c  reason: collision with root package name */
    private Fragment f29312c;

    private h(Fragment fragment) {
        this.f29312c = fragment;
    }

    @Nullable
    @u2.a
    public static h z(@Nullable Fragment fragment) {
        if (fragment != null) {
            return new h(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.c
    @Nullable
    public final String A0() {
        return this.f29312c.getTag();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void B1(boolean z9) {
        this.f29312c.setUserVisibleHint(z9);
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean C() {
        return this.f29312c.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.c
    @NonNull
    public final d D() {
        return f.n1(this.f29312c.getResources());
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean H1() {
        return this.f29312c.isVisible();
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean I1() {
        return this.f29312c.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean M() {
        return this.f29312c.isResumed();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void O0(boolean z9) {
        this.f29312c.setHasOptionsMenu(z9);
    }

    @Override // com.google.android.gms.dynamic.c
    @NonNull
    public final d Q() {
        return f.n1(this.f29312c.getView());
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean U() {
        return this.f29312c.isHidden();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void U0(boolean z9) {
        this.f29312c.setMenuVisibility(z9);
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean a0() {
        return this.f29312c.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.c
    @Nullable
    public final Bundle b() {
        return this.f29312c.getArguments();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void b1(boolean z9) {
        this.f29312c.setRetainInstance(z9);
    }

    @Override // com.google.android.gms.dynamic.c
    public final void d1(@NonNull Intent intent) {
        this.f29312c.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.c
    public final int e() {
        return this.f29312c.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void g1(@NonNull Intent intent, int i4) {
        this.f29312c.startActivityForResult(intent, i4);
    }

    @Override // com.google.android.gms.dynamic.c
    @Nullable
    public final c n() {
        return z(this.f29312c.getTargetFragment());
    }

    @Override // com.google.android.gms.dynamic.c
    @NonNull
    public final d o() {
        return f.n1(this.f29312c.getActivity());
    }

    @Override // com.google.android.gms.dynamic.c
    public final void r0(@NonNull d dVar) {
        View view = (View) f.z(dVar);
        Fragment fragment = this.f29312c;
        u.k(view);
        fragment.unregisterForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.c
    public final void v1(@NonNull d dVar) {
        View view = (View) f.z(dVar);
        Fragment fragment = this.f29312c;
        u.k(view);
        fragment.registerForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean w1() {
        return this.f29312c.isAdded();
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean x1() {
        return this.f29312c.isDetached();
    }

    @Override // com.google.android.gms.dynamic.c
    @Nullable
    public final c y1() {
        return z(this.f29312c.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean z1() {
        return this.f29312c.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.c
    public final int zzb() {
        return this.f29312c.getId();
    }
}
