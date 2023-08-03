package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class i4 extends Fragment implements m {

    /* renamed from: d  reason: collision with root package name */
    private static final WeakHashMap<FragmentActivity, WeakReference<i4>> f28747d = new WeakHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, LifecycleCallback> f28748a = Collections.synchronizedMap(new ArrayMap());

    /* renamed from: b  reason: collision with root package name */
    private int f28749b = 0;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Bundle f28750c;

    public static i4 W(FragmentActivity fragmentActivity) {
        i4 i4Var;
        WeakHashMap<FragmentActivity, WeakReference<i4>> weakHashMap = f28747d;
        WeakReference<i4> weakReference = weakHashMap.get(fragmentActivity);
        if (weakReference == null || (i4Var = weakReference.get()) == null) {
            try {
                i4 i4Var2 = (i4) fragmentActivity.getSupportFragmentManager().findFragmentByTag("SupportLifecycleFragmentImpl");
                if (i4Var2 == null || i4Var2.isRemoving()) {
                    i4Var2 = new i4();
                    fragmentActivity.getSupportFragmentManager().beginTransaction().add(i4Var2, "SupportLifecycleFragmentImpl").commitAllowingStateLoss();
                }
                weakHashMap.put(fragmentActivity, new WeakReference<>(i4Var2));
                return i4Var2;
            } catch (ClassCastException e4) {
                throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e4);
            }
        }
        return i4Var;
    }

    @Override // com.google.android.gms.common.api.internal.m
    @Nullable
    public final /* synthetic */ Activity H() {
        return getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f28748a.values()) {
            lifecycleCallback.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.m
    public final void h(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.f28748a.containsKey(str)) {
            this.f28748a.put(str, lifecycleCallback);
            if (this.f28749b > 0) {
                new com.google.android.gms.internal.common.r(Looper.getMainLooper()).post(new h4(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.common.api.internal.m
    @Nullable
    public final <T extends LifecycleCallback> T m(String str, Class<T> cls) {
        return cls.cast(this.f28748a.get(str));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i4, int i10, @Nullable Intent intent) {
        super.onActivityResult(i4, i10, intent);
        for (LifecycleCallback lifecycleCallback : this.f28748a.values()) {
            lifecycleCallback.f(i4, i10, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f28749b = 1;
        this.f28750c = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f28748a.entrySet()) {
            entry.getValue().g(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f28749b = 5;
        for (LifecycleCallback lifecycleCallback : this.f28748a.values()) {
            lifecycleCallback.h();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f28749b = 3;
        for (LifecycleCallback lifecycleCallback : this.f28748a.values()) {
            lifecycleCallback.i();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f28748a.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().j(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f28749b = 2;
        for (LifecycleCallback lifecycleCallback : this.f28748a.values()) {
            lifecycleCallback.k();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f28749b = 4;
        for (LifecycleCallback lifecycleCallback : this.f28748a.values()) {
            lifecycleCallback.l();
        }
    }

    @Override // com.google.android.gms.common.api.internal.m
    public final boolean u() {
        return this.f28749b >= 2;
    }

    @Override // com.google.android.gms.common.api.internal.m
    public final boolean y() {
        return this.f28749b > 0;
    }
}
