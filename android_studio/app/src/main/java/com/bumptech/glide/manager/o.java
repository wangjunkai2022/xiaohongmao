package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.d;
import com.bumptech.glide.load.resource.bitmap.u;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RequestManagerRetriever.java */
/* loaded from: classes.dex */
public class o implements Handler.Callback {
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    static final String f9439j = "com.bumptech.glide.manager";

    /* renamed from: k  reason: collision with root package name */
    private static final String f9440k = "RMRetriever";

    /* renamed from: l  reason: collision with root package name */
    private static final int f9441l = 1;

    /* renamed from: m  reason: collision with root package name */
    private static final int f9442m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f9443n = 2;

    /* renamed from: o  reason: collision with root package name */
    private static final String f9444o = "key";

    /* renamed from: p  reason: collision with root package name */
    private static final b f9445p = new a();

    /* renamed from: a  reason: collision with root package name */
    private volatile com.bumptech.glide.k f9446a;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f9449d;

    /* renamed from: e  reason: collision with root package name */
    private final b f9450e;

    /* renamed from: i  reason: collision with root package name */
    private final k f9454i;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final Map<FragmentManager, RequestManagerFragment> f9447b = new HashMap();
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final Map<androidx.fragment.app.FragmentManager, s> f9448c = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final ArrayMap<View, Fragment> f9451f = new ArrayMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final ArrayMap<View, android.app.Fragment> f9452g = new ArrayMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final Bundle f9453h = new Bundle();

    /* compiled from: RequestManagerRetriever.java */
    /* loaded from: classes.dex */
    class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.manager.o.b
        @NonNull
        public com.bumptech.glide.k a(@NonNull com.bumptech.glide.c cVar, @NonNull l lVar, @NonNull p pVar, @NonNull Context context) {
            return new com.bumptech.glide.k(cVar, lVar, pVar, context);
        }
    }

    /* compiled from: RequestManagerRetriever.java */
    /* loaded from: classes.dex */
    public interface b {
        @NonNull
        com.bumptech.glide.k a(@NonNull com.bumptech.glide.c cVar, @NonNull l lVar, @NonNull p pVar, @NonNull Context context);
    }

    public o(@Nullable b bVar, com.bumptech.glide.f fVar) {
        this.f9450e = bVar == null ? f9445p : bVar;
        this.f9449d = new Handler(Looper.getMainLooper(), this);
        this.f9454i = b(fVar);
    }

    @TargetApi(17)
    private static void a(@NonNull Activity activity) {
        if (activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    private static k b(com.bumptech.glide.f fVar) {
        if (u.f9292i && u.f9291h) {
            if (fVar.b(d.g.class)) {
                return new i();
            }
            return new j();
        }
        return new g();
    }

    @Nullable
    private static Activity c(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return c(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @TargetApi(26)
    @Deprecated
    private void d(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (android.app.Fragment fragment : fragmentManager.getFragments()) {
                if (fragment.getView() != null) {
                    arrayMap.put(fragment.getView(), fragment);
                    d(fragment.getChildFragmentManager(), arrayMap);
                }
            }
            return;
        }
        e(fragmentManager, arrayMap);
    }

    @Deprecated
    private void e(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            this.f9453h.putInt(f9444o, i4);
            android.app.Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.f9453h, f9444o);
            } catch (Exception unused) {
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                d(fragment.getChildFragmentManager(), arrayMap);
            }
            i4 = i10;
        }
    }

    private static void f(@Nullable Collection<Fragment> collection, @NonNull Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                f(fragment.getChildFragmentManager().getFragments(), map);
            }
        }
    }

    @Nullable
    @Deprecated
    private android.app.Fragment g(@NonNull View view, @NonNull Activity activity) {
        this.f9452g.clear();
        d(activity.getFragmentManager(), this.f9452g);
        View findViewById = activity.findViewById(16908290);
        android.app.Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f9452g.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f9452g.clear();
        return fragment;
    }

    @Nullable
    private Fragment h(@NonNull View view, @NonNull FragmentActivity fragmentActivity) {
        this.f9451f.clear();
        f(fragmentActivity.getSupportFragmentManager().getFragments(), this.f9451f);
        View findViewById = fragmentActivity.findViewById(16908290);
        Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f9451f.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f9451f.clear();
        return fragment;
    }

    @NonNull
    @Deprecated
    private com.bumptech.glide.k i(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z9) {
        RequestManagerFragment r9 = r(fragmentManager, fragment);
        com.bumptech.glide.k e4 = r9.e();
        if (e4 == null) {
            e4 = this.f9450e.a(com.bumptech.glide.c.e(context), r9.c(), r9.f(), context);
            if (z9) {
                e4.onStart();
            }
            r9.k(e4);
        }
        return e4;
    }

    @NonNull
    private com.bumptech.glide.k p(@NonNull Context context) {
        if (this.f9446a == null) {
            synchronized (this) {
                if (this.f9446a == null) {
                    this.f9446a = this.f9450e.a(com.bumptech.glide.c.e(context.getApplicationContext()), new com.bumptech.glide.manager.b(), new h(), context.getApplicationContext());
                }
            }
        }
        return this.f9446a;
    }

    @NonNull
    private RequestManagerFragment r(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment) {
        RequestManagerFragment requestManagerFragment = this.f9447b.get(fragmentManager);
        if (requestManagerFragment == null) {
            RequestManagerFragment requestManagerFragment2 = (RequestManagerFragment) fragmentManager.findFragmentByTag(f9439j);
            if (requestManagerFragment2 == null) {
                requestManagerFragment2 = new RequestManagerFragment();
                requestManagerFragment2.j(fragment);
                this.f9447b.put(fragmentManager, requestManagerFragment2);
                fragmentManager.beginTransaction().add(requestManagerFragment2, f9439j).commitAllowingStateLoss();
                this.f9449d.obtainMessage(1, fragmentManager).sendToTarget();
            }
            return requestManagerFragment2;
        }
        return requestManagerFragment;
    }

    @NonNull
    private s t(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment) {
        s sVar = this.f9448c.get(fragmentManager);
        if (sVar == null) {
            s sVar2 = (s) fragmentManager.findFragmentByTag(f9439j);
            if (sVar2 == null) {
                sVar2 = new s();
                sVar2.e0(fragment);
                this.f9448c.put(fragmentManager, sVar2);
                fragmentManager.beginTransaction().add(sVar2, f9439j).commitAllowingStateLoss();
                this.f9449d.obtainMessage(2, fragmentManager).sendToTarget();
            }
            return sVar2;
        }
        return sVar;
    }

    private static boolean u(Context context) {
        Activity c10 = c(context);
        return c10 == null || !c10.isFinishing();
    }

    @NonNull
    private com.bumptech.glide.k v(@NonNull Context context, @NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z9) {
        s t9 = t(fragmentManager, fragment);
        com.bumptech.glide.k Y = t9.Y();
        if (Y == null) {
            Y = this.f9450e.a(com.bumptech.glide.c.e(context), t9.W(), t9.Z(), context);
            if (z9) {
                Y.onStart();
            }
            t9.f0(Y);
        }
        return Y;
    }

    private boolean w(FragmentManager fragmentManager, boolean z9) {
        RequestManagerFragment requestManagerFragment = this.f9447b.get(fragmentManager);
        RequestManagerFragment requestManagerFragment2 = (RequestManagerFragment) fragmentManager.findFragmentByTag(f9439j);
        if (requestManagerFragment2 == requestManagerFragment) {
            return true;
        }
        if (requestManagerFragment2 != null && requestManagerFragment2.e() != null) {
            throw new IllegalStateException("We've added two fragments with requests! Old: " + requestManagerFragment2 + " New: " + requestManagerFragment);
        } else if (!z9 && !fragmentManager.isDestroyed()) {
            FragmentTransaction add = fragmentManager.beginTransaction().add(requestManagerFragment, f9439j);
            if (requestManagerFragment2 != null) {
                add.remove(requestManagerFragment2);
            }
            add.commitAllowingStateLoss();
            this.f9449d.obtainMessage(1, 1, 0, fragmentManager).sendToTarget();
            if (Log.isLoggable(f9440k, 3)) {
                Log.d(f9440k, "We failed to add our Fragment the first time around, trying again...");
            }
            return false;
        } else {
            if (Log.isLoggable(f9440k, 5)) {
                if (fragmentManager.isDestroyed()) {
                    Log.w(f9440k, "Parent was destroyed before our Fragment could be added");
                } else {
                    Log.w(f9440k, "Tried adding Fragment twice and failed twice, giving up!");
                }
            }
            requestManagerFragment.c().c();
            return true;
        }
    }

    private boolean x(androidx.fragment.app.FragmentManager fragmentManager, boolean z9) {
        s sVar = this.f9448c.get(fragmentManager);
        s sVar2 = (s) fragmentManager.findFragmentByTag(f9439j);
        if (sVar2 == sVar) {
            return true;
        }
        if (sVar2 != null && sVar2.Y() != null) {
            throw new IllegalStateException("We've added two fragments with requests! Old: " + sVar2 + " New: " + sVar);
        } else if (!z9 && !fragmentManager.isDestroyed()) {
            androidx.fragment.app.FragmentTransaction add = fragmentManager.beginTransaction().add(sVar, f9439j);
            if (sVar2 != null) {
                add.remove(sVar2);
            }
            add.commitNowAllowingStateLoss();
            this.f9449d.obtainMessage(2, 1, 0, fragmentManager).sendToTarget();
            if (Log.isLoggable(f9440k, 3)) {
                Log.d(f9440k, "We failed to add our Fragment the first time around, trying again...");
            }
            return false;
        } else {
            if (fragmentManager.isDestroyed()) {
                if (Log.isLoggable(f9440k, 5)) {
                    Log.w(f9440k, "Parent was destroyed before our Fragment could be added, all requests for the destroyed parent are cancelled");
                }
            } else if (Log.isLoggable(f9440k, 6)) {
                Log.e(f9440k, "ERROR: Tried adding Fragment twice and failed twice, giving up and cancelling all associated requests! This probably means you're starting loads in a unit test with an Activity that you haven't created and never create. If you're using Robolectric, create the Activity as part of your test setup");
            }
            sVar.W().c();
            return true;
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        FragmentManager fragmentManager;
        FragmentManager fragmentManager2;
        boolean z9 = false;
        boolean z10 = true;
        boolean z11 = message.arg1 == 1;
        int i4 = message.what;
        Object obj = null;
        if (i4 == 1) {
            FragmentManager fragmentManager3 = (FragmentManager) message.obj;
            if (w(fragmentManager3, z11)) {
                obj = this.f9447b.remove(fragmentManager3);
                fragmentManager2 = fragmentManager3;
                z9 = true;
                fragmentManager = fragmentManager2;
            }
            fragmentManager = null;
        } else if (i4 != 2) {
            fragmentManager = null;
            z10 = false;
        } else {
            androidx.fragment.app.FragmentManager fragmentManager4 = (androidx.fragment.app.FragmentManager) message.obj;
            if (x(fragmentManager4, z11)) {
                obj = this.f9448c.remove(fragmentManager4);
                fragmentManager2 = fragmentManager4;
                z9 = true;
                fragmentManager = fragmentManager2;
            }
            fragmentManager = null;
        }
        if (Log.isLoggable(f9440k, 5) && z9 && obj == null) {
            Log.w(f9440k, "Failed to remove expected request manager fragment, manager: " + fragmentManager);
        }
        return z10;
    }

    @NonNull
    public com.bumptech.glide.k j(@NonNull Activity activity) {
        if (com.bumptech.glide.util.o.t()) {
            return l(activity.getApplicationContext());
        }
        if (activity instanceof FragmentActivity) {
            return o((FragmentActivity) activity);
        }
        a(activity);
        this.f9454i.a(activity);
        return i(activity, activity.getFragmentManager(), null, u(activity));
    }

    @NonNull
    @TargetApi(17)
    @Deprecated
    public com.bumptech.glide.k k(@NonNull android.app.Fragment fragment) {
        if (fragment.getActivity() != null) {
            if (!com.bumptech.glide.util.o.t()) {
                if (fragment.getActivity() != null) {
                    this.f9454i.a(fragment.getActivity());
                }
                return i(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
            }
            return l(fragment.getActivity().getApplicationContext());
        }
        throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
    }

    @NonNull
    public com.bumptech.glide.k l(@NonNull Context context) {
        if (context != null) {
            if (com.bumptech.glide.util.o.u() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return o((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return j((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return l(contextWrapper.getBaseContext());
                    }
                }
            }
            return p(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @NonNull
    public com.bumptech.glide.k m(@NonNull View view) {
        if (com.bumptech.glide.util.o.t()) {
            return l(view.getContext().getApplicationContext());
        }
        com.bumptech.glide.util.m.d(view);
        com.bumptech.glide.util.m.e(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity c10 = c(view.getContext());
        if (c10 == null) {
            return l(view.getContext().getApplicationContext());
        }
        if (c10 instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) c10;
            Fragment h4 = h(view, fragmentActivity);
            return h4 != null ? n(h4) : o(fragmentActivity);
        }
        android.app.Fragment g4 = g(view, c10);
        if (g4 == null) {
            return j(c10);
        }
        return k(g4);
    }

    @NonNull
    public com.bumptech.glide.k n(@NonNull Fragment fragment) {
        com.bumptech.glide.util.m.e(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (com.bumptech.glide.util.o.t()) {
            return l(fragment.getContext().getApplicationContext());
        }
        if (fragment.getActivity() != null) {
            this.f9454i.a(fragment.getActivity());
        }
        return v(fragment.getContext(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    public com.bumptech.glide.k o(@NonNull FragmentActivity fragmentActivity) {
        if (com.bumptech.glide.util.o.t()) {
            return l(fragmentActivity.getApplicationContext());
        }
        a(fragmentActivity);
        this.f9454i.a(fragmentActivity);
        return v(fragmentActivity, fragmentActivity.getSupportFragmentManager(), null, u(fragmentActivity));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @Deprecated
    public RequestManagerFragment q(Activity activity) {
        return r(activity.getFragmentManager(), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public s s(androidx.fragment.app.FragmentManager fragmentManager) {
        return t(fragmentManager, null);
    }
}
