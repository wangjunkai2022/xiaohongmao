package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class zzb extends Fragment implements m {

    /* renamed from: d  reason: collision with root package name */
    private static final WeakHashMap<Activity, WeakReference<zzb>> f28953d = new WeakHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, LifecycleCallback> f28954a = Collections.synchronizedMap(new ArrayMap());

    /* renamed from: b  reason: collision with root package name */
    private int f28955b = 0;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Bundle f28956c;

    public static zzb c(Activity activity) {
        zzb zzbVar;
        WeakHashMap<Activity, WeakReference<zzb>> weakHashMap = f28953d;
        WeakReference<zzb> weakReference = weakHashMap.get(activity);
        if (weakReference == null || (zzbVar = weakReference.get()) == null) {
            try {
                zzb zzbVar2 = (zzb) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
                if (zzbVar2 == null || zzbVar2.isRemoving()) {
                    zzbVar2 = new zzb();
                    activity.getFragmentManager().beginTransaction().add(zzbVar2, "LifecycleFragmentImpl").commitAllowingStateLoss();
                }
                weakHashMap.put(activity, new WeakReference<>(zzbVar2));
                return zzbVar2;
            } catch (ClassCastException e4) {
                throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e4);
            }
        }
        return zzbVar;
    }

    @Override // com.google.android.gms.common.api.internal.m
    @Nullable
    public final Activity H() {
        return getActivity();
    }

    @Override // android.app.Fragment
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f28954a.values()) {
            lifecycleCallback.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.m
    public final void h(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.f28954a.containsKey(str)) {
            this.f28954a.put(str, lifecycleCallback);
            if (this.f28955b > 0) {
                new com.google.android.gms.internal.common.r(Looper.getMainLooper()).post(new g4(this, lifecycleCallback, str));
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
        return cls.cast(this.f28954a.get(str));
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i4, int i10, @Nullable Intent intent) {
        super.onActivityResult(i4, i10, intent);
        for (LifecycleCallback lifecycleCallback : this.f28954a.values()) {
            lifecycleCallback.f(i4, i10, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f28955b = 1;
        this.f28956c = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f28954a.entrySet()) {
            entry.getValue().g(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f28955b = 5;
        for (LifecycleCallback lifecycleCallback : this.f28954a.values()) {
            lifecycleCallback.h();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f28955b = 3;
        for (LifecycleCallback lifecycleCallback : this.f28954a.values()) {
            lifecycleCallback.i();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f28954a.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().j(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f28955b = 2;
        for (LifecycleCallback lifecycleCallback : this.f28954a.values()) {
            lifecycleCallback.k();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f28955b = 4;
        for (LifecycleCallback lifecycleCallback : this.f28954a.values()) {
            lifecycleCallback.l();
        }
    }

    @Override // com.google.android.gms.common.api.internal.m
    public final boolean u() {
        return this.f28955b >= 2;
    }

    @Override // com.google.android.gms.common.api.internal.m
    public final boolean y() {
        return this.f28955b > 0;
    }
}
