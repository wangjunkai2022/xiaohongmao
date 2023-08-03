package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: SupportRequestManagerFragment.java */
/* loaded from: classes.dex */
public class s extends Fragment {

    /* renamed from: g  reason: collision with root package name */
    private static final String f9480g = "SupportRMFragment";

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.manager.a f9481a;

    /* renamed from: b  reason: collision with root package name */
    private final p f9482b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<s> f9483c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private s f9484d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.bumptech.glide.k f9485e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Fragment f9486f;

    /* compiled from: SupportRequestManagerFragment.java */
    /* loaded from: classes.dex */
    private class a implements p {
        a() {
        }

        @Override // com.bumptech.glide.manager.p
        @NonNull
        public Set<com.bumptech.glide.k> a() {
            Set<s> V = s.this.V();
            HashSet hashSet = new HashSet(V.size());
            for (s sVar : V) {
                if (sVar.Y() != null) {
                    hashSet.add(sVar.Y());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + s.this + com.alipay.sdk.util.i.f6967d;
        }
    }

    public s() {
        this(new com.bumptech.glide.manager.a());
    }

    private void U(s sVar) {
        this.f9483c.add(sVar);
    }

    @Nullable
    private Fragment X() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f9486f;
    }

    @Nullable
    private static FragmentManager a0(@NonNull Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    private boolean b0(@NonNull Fragment fragment) {
        Fragment X = X();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(X)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void c0(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        g0();
        s s9 = com.bumptech.glide.c.e(context).o().s(fragmentManager);
        this.f9484d = s9;
        if (equals(s9)) {
            return;
        }
        this.f9484d.U(this);
    }

    private void d0(s sVar) {
        this.f9483c.remove(sVar);
    }

    private void g0() {
        s sVar = this.f9484d;
        if (sVar != null) {
            sVar.d0(this);
            this.f9484d = null;
        }
    }

    @NonNull
    Set<s> V() {
        s sVar = this.f9484d;
        if (sVar == null) {
            return Collections.emptySet();
        }
        if (equals(sVar)) {
            return Collections.unmodifiableSet(this.f9483c);
        }
        HashSet hashSet = new HashSet();
        for (s sVar2 : this.f9484d.V()) {
            if (b0(sVar2.X())) {
                hashSet.add(sVar2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public com.bumptech.glide.manager.a W() {
        return this.f9481a;
    }

    @Nullable
    public com.bumptech.glide.k Y() {
        return this.f9485e;
    }

    @NonNull
    public p Z() {
        return this.f9482b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e0(@Nullable Fragment fragment) {
        FragmentManager a02;
        this.f9486f = fragment;
        if (fragment == null || fragment.getContext() == null || (a02 = a0(fragment)) == null) {
            return;
        }
        c0(fragment.getContext(), a02);
    }

    public void f0(@Nullable com.bumptech.glide.k kVar) {
        this.f9485e = kVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager a02 = a0(this);
        if (a02 == null) {
            if (Log.isLoggable(f9480g, 5)) {
                Log.w(f9480g, "Unable to register fragment with root, ancestor detached");
                return;
            }
            return;
        }
        try {
            c0(getContext(), a02);
        } catch (IllegalStateException e4) {
            if (Log.isLoggable(f9480g, 5)) {
                Log.w(f9480g, "Unable to register fragment with root", e4);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f9481a.c();
        g0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f9486f = null;
        g0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f9481a.d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f9481a.e();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + X() + com.alipay.sdk.util.i.f6967d;
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public s(@NonNull com.bumptech.glide.manager.a aVar) {
        this.f9482b = new a();
        this.f9483c = new HashSet();
        this.f9481a = aVar;
    }
}
