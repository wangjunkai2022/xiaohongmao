package com.qennnsad.aknkaksd.util.img;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import java.io.File;

/* compiled from: GlideApp.java */
/* loaded from: classes3.dex */
public final class a {
    private a() {
    }

    @SuppressLint({"VisibleForTests"})
    @VisibleForTesting
    public static void a() {
        com.bumptech.glide.c.d();
    }

    @NonNull
    public static com.bumptech.glide.c b(@NonNull Context context) {
        return com.bumptech.glide.c.e(context);
    }

    @Nullable
    public static File c(@NonNull Context context) {
        return com.bumptech.glide.c.l(context);
    }

    @Nullable
    public static File d(@NonNull Context context, @NonNull String str) {
        return com.bumptech.glide.c.m(context, str);
    }

    @SuppressLint({"VisibleForTests"})
    @VisibleForTesting
    public static void e(@NonNull Context context, @NonNull com.bumptech.glide.d dVar) {
        com.bumptech.glide.c.q(context, dVar);
    }

    @SuppressLint({"VisibleForTests"})
    @VisibleForTesting
    @Deprecated
    public static void f(com.bumptech.glide.c cVar) {
        com.bumptech.glide.c.r(cVar);
    }

    @SuppressLint({"VisibleForTests"})
    @VisibleForTesting
    public static void g() {
        com.bumptech.glide.c.y();
    }

    @NonNull
    public static d h(@NonNull Activity activity) {
        return (d) com.bumptech.glide.c.C(activity);
    }

    @NonNull
    @Deprecated
    public static d i(@NonNull Fragment fragment) {
        return (d) com.bumptech.glide.c.D(fragment);
    }

    @NonNull
    public static d j(@NonNull Context context) {
        return (d) com.bumptech.glide.c.E(context);
    }

    @NonNull
    public static d k(@NonNull View view) {
        return (d) com.bumptech.glide.c.F(view);
    }

    @NonNull
    public static d l(@NonNull androidx.fragment.app.Fragment fragment) {
        return (d) com.bumptech.glide.c.G(fragment);
    }

    @NonNull
    public static d m(@NonNull FragmentActivity fragmentActivity) {
        return (d) com.bumptech.glide.c.H(fragmentActivity);
    }
}
