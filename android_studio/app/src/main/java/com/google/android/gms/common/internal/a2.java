package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class a2 {

    /* renamed from: f  reason: collision with root package name */
    private static final Uri f29053f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f29054a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f29055b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ComponentName f29056c;

    /* renamed from: d  reason: collision with root package name */
    private final int f29057d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f29058e;

    public a2(ComponentName componentName, int i4) {
        this.f29054a = null;
        this.f29055b = null;
        u.k(componentName);
        this.f29056c = componentName;
        this.f29057d = i4;
        this.f29058e = false;
    }

    public final int a() {
        return this.f29057d;
    }

    @Nullable
    public final ComponentName b() {
        return this.f29056c;
    }

    public final Intent c(Context context) {
        Bundle bundle;
        if (this.f29054a != null) {
            if (this.f29058e) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", this.f29054a);
                try {
                    bundle = context.getContentResolver().call(f29053f, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e4) {
                    Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e4.toString()));
                    bundle = null;
                }
                r2 = bundle != null ? (Intent) bundle.getParcelable("serviceResponseIntentKey") : null;
                if (r2 == null) {
                    String valueOf = String.valueOf(this.f29054a);
                    Log.w("ConnectionStatusConfig", valueOf.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf) : new String("Dynamic lookup for intent failed for action: "));
                }
            }
            return r2 != null ? r2 : new Intent(this.f29054a).setPackage(this.f29055b);
        }
        return new Intent().setComponent(this.f29056c);
    }

    @Nullable
    public final String d() {
        return this.f29055b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a2) {
            a2 a2Var = (a2) obj;
            return s.b(this.f29054a, a2Var.f29054a) && s.b(this.f29055b, a2Var.f29055b) && s.b(this.f29056c, a2Var.f29056c) && this.f29057d == a2Var.f29057d && this.f29058e == a2Var.f29058e;
        }
        return false;
    }

    public final int hashCode() {
        return s.c(this.f29054a, this.f29055b, this.f29056c, Integer.valueOf(this.f29057d), Boolean.valueOf(this.f29058e));
    }

    public final String toString() {
        String str = this.f29054a;
        if (str == null) {
            u.k(this.f29056c);
            return this.f29056c.flattenToString();
        }
        return str;
    }

    public a2(String str, int i4, boolean z9) {
        this(str, "com.google.android.gms", i4, false);
    }

    public a2(String str, String str2, int i4, boolean z9) {
        u.g(str);
        this.f29054a = str;
        u.g(str2);
        this.f29055b = str2;
        this.f29056c = null;
        this.f29057d = i4;
        this.f29058e = z9;
    }
}
