package com.google.android.gms.auth.api.signin;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public interface a {
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    public static final int f28469a = 1;
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    public static final int f28470b = 3;

    @u2.a
    int a();

    @Nullable
    @u2.a
    List<Scope> b();

    @NonNull
    @u2.a
    Bundle toBundle();
}
