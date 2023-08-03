package com.google.android.gms.dynamic;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.dynamic.c;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@SuppressLint({"NewApi"})
/* loaded from: classes2.dex */
public final class b extends c.a {

    /* renamed from: c  reason: collision with root package name */
    private Fragment f29310c;

    private b(Fragment fragment) {
        this.f29310c = fragment;
    }

    @Nullable
    @u2.a
    public static b z(@Nullable Fragment fragment) {
        if (fragment != null) {
            return new b(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.c
    @Nullable
    public final String A0() {
        return this.f29310c.getTag();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void B1(boolean z9) {
        this.f29310c.setUserVisibleHint(z9);
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean C() {
        return this.f29310c.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.c
    @NonNull
    public final d D() {
        return f.n1(this.f29310c.getResources());
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean H1() {
        return this.f29310c.isVisible();
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean I1() {
        return this.f29310c.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean M() {
        return this.f29310c.isResumed();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void O0(boolean z9) {
        this.f29310c.setHasOptionsMenu(z9);
    }

    @Override // com.google.android.gms.dynamic.c
    @NonNull
    public final d Q() {
        return f.n1(this.f29310c.getView());
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean U() {
        return this.f29310c.isHidden();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void U0(boolean z9) {
        this.f29310c.setMenuVisibility(z9);
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean a0() {
        return this.f29310c.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.c
    @Nullable
    public final Bundle b() {
        return this.f29310c.getArguments();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void b1(boolean z9) {
        this.f29310c.setRetainInstance(z9);
    }

    @Override // com.google.android.gms.dynamic.c
    public final void d1(@NonNull Intent intent) {
        this.f29310c.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.c
    public final int e() {
        return this.f29310c.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.c
    public final void g1(@NonNull Intent intent, int i4) {
        this.f29310c.startActivityForResult(intent, i4);
    }

    @Override // com.google.android.gms.dynamic.c
    @Nullable
    public final c n() {
        return z(this.f29310c.getTargetFragment());
    }

    @Override // com.google.android.gms.dynamic.c
    @NonNull
    public final d o() {
        return f.n1(this.f29310c.getActivity());
    }

    @Override // com.google.android.gms.dynamic.c
    public final void r0(@NonNull d dVar) {
        View view = (View) f.z(dVar);
        Fragment fragment = this.f29310c;
        u.k(view);
        fragment.unregisterForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.c
    public final void v1(@NonNull d dVar) {
        View view = (View) f.z(dVar);
        Fragment fragment = this.f29310c;
        u.k(view);
        fragment.registerForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean w1() {
        return this.f29310c.isAdded();
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean x1() {
        return this.f29310c.isDetached();
    }

    @Override // com.google.android.gms.dynamic.c
    @Nullable
    public final c y1() {
        return z(this.f29310c.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.c
    public final boolean z1() {
        return this.f29310c.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.c
    public final int zzb() {
        return this.f29310c.getId();
    }
}
