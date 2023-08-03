package com.google.android.gms.dynamic;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public interface e {
    @u2.a
    void a();

    @u2.a
    void b();

    @u2.a
    void c(@Nullable Bundle bundle);

    @u2.a
    void d(@NonNull Activity activity, @NonNull Bundle bundle, @Nullable Bundle bundle2);

    @NonNull
    @u2.a
    View e(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle);

    @u2.a
    void f(@NonNull Bundle bundle);

    @u2.a
    void onLowMemory();

    @u2.a
    void onPause();

    @u2.a
    void onResume();

    @u2.a
    void onStart();

    @u2.a
    void onStop();
}
