package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Deprecated
/* loaded from: classes.dex */
public class RequestManagerFragment extends Fragment {

    /* renamed from: g  reason: collision with root package name */
    private static final String f9424g = "RMFragment";

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.manager.a f9425a;

    /* renamed from: b  reason: collision with root package name */
    private final p f9426b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<RequestManagerFragment> f9427c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.bumptech.glide.k f9428d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private RequestManagerFragment f9429e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Fragment f9430f;

    /* loaded from: classes.dex */
    private class a implements p {
        a() {
        }

        @Override // com.bumptech.glide.manager.p
        @NonNull
        public Set<com.bumptech.glide.k> a() {
            Set<RequestManagerFragment> b10 = RequestManagerFragment.this.b();
            HashSet hashSet = new HashSet(b10.size());
            for (RequestManagerFragment requestManagerFragment : b10) {
                if (requestManagerFragment.e() != null) {
                    hashSet.add(requestManagerFragment.e());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + com.alipay.sdk.util.i.f6967d;
        }
    }

    public RequestManagerFragment() {
        this(new com.bumptech.glide.manager.a());
    }

    private void a(RequestManagerFragment requestManagerFragment) {
        this.f9427c.add(requestManagerFragment);
    }

    @Nullable
    @TargetApi(17)
    private Fragment d() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f9430f;
    }

    @TargetApi(17)
    private boolean g(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void h(@NonNull Activity activity) {
        l();
        RequestManagerFragment q9 = com.bumptech.glide.c.e(activity).o().q(activity);
        this.f9429e = q9;
        if (equals(q9)) {
            return;
        }
        this.f9429e.a(this);
    }

    private void i(RequestManagerFragment requestManagerFragment) {
        this.f9427c.remove(requestManagerFragment);
    }

    private void l() {
        RequestManagerFragment requestManagerFragment = this.f9429e;
        if (requestManagerFragment != null) {
            requestManagerFragment.i(this);
            this.f9429e = null;
        }
    }

    @NonNull
    @TargetApi(17)
    Set<RequestManagerFragment> b() {
        if (equals(this.f9429e)) {
            return Collections.unmodifiableSet(this.f9427c);
        }
        if (this.f9429e != null) {
            HashSet hashSet = new HashSet();
            for (RequestManagerFragment requestManagerFragment : this.f9429e.b()) {
                if (g(requestManagerFragment.getParentFragment())) {
                    hashSet.add(requestManagerFragment);
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }
        return Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public com.bumptech.glide.manager.a c() {
        return this.f9425a;
    }

    @Nullable
    public com.bumptech.glide.k e() {
        return this.f9428d;
    }

    @NonNull
    public p f() {
        return this.f9426b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(@Nullable Fragment fragment) {
        this.f9430f = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        h(fragment.getActivity());
    }

    public void k(@Nullable com.bumptech.glide.k kVar) {
        this.f9428d = kVar;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            h(activity);
        } catch (IllegalStateException e4) {
            if (Log.isLoggable(f9424g, 5)) {
                Log.w(f9424g, "Unable to register fragment with root", e4);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f9425a.c();
        l();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        l();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f9425a.d();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f9425a.e();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + d() + com.alipay.sdk.util.i.f6967d;
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    RequestManagerFragment(@NonNull com.bumptech.glide.manager.a aVar) {
        this.f9426b = new a();
        this.f9427c = new HashSet();
        this.f9425a = aVar;
    }
}
