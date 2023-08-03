package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class LifecycleCallback {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    protected final m f28615a;

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public LifecycleCallback(@NonNull m mVar) {
        this.f28615a = mVar;
    }

    @NonNull
    @u2.a
    public static m c(@NonNull Activity activity) {
        return e(new l(activity));
    }

    @NonNull
    @u2.a
    public static m d(@NonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    @u2.a
    public static m e(@NonNull l lVar) {
        if (lVar.d()) {
            return i4.W(lVar.b());
        }
        if (lVar.c()) {
            return zzb.c(lVar.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    private static m getChimeraLifecycleFragmentImpl(l lVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @u2.a
    @MainThread
    public void a(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
    }

    @NonNull
    @u2.a
    public Activity b() {
        Activity H = this.f28615a.H();
        com.google.android.gms.common.internal.u.k(H);
        return H;
    }

    @u2.a
    @MainThread
    public void f(int i4, int i10, @NonNull Intent intent) {
    }

    @u2.a
    @MainThread
    public void g(@Nullable Bundle bundle) {
    }

    @u2.a
    @MainThread
    public void h() {
    }

    @u2.a
    @MainThread
    public void i() {
    }

    @u2.a
    @MainThread
    public void j(@NonNull Bundle bundle) {
    }

    @u2.a
    @MainThread
    public void k() {
    }

    @u2.a
    @MainThread
    public void l() {
    }
}
