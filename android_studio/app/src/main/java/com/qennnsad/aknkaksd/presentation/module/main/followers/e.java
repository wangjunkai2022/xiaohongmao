package com.qennnsad.aknkaksd.presentation.module.main.followers;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import java.util.HashMap;

/* compiled from: FollowersFragmentArgs.java */
/* loaded from: classes3.dex */
public class e implements NavArgs {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap f51635a;

    @NonNull
    public static e b(@NonNull SavedStateHandle savedStateHandle) {
        e eVar = new e();
        if (savedStateHandle.contains("user_id")) {
            String str = (String) savedStateHandle.get("user_id");
            if (str != null) {
                eVar.f51635a.put("user_id", str);
                if (savedStateHandle.contains(g.f51638a)) {
                    eVar.f51635a.put(g.f51638a, Boolean.valueOf(((Boolean) savedStateHandle.get(g.f51638a)).booleanValue()));
                } else {
                    eVar.f51635a.put(g.f51638a, Boolean.FALSE);
                }
                return eVar;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }
        throw new IllegalArgumentException("Required argument \"user_id\" is missing and does not have an android:defaultValue");
    }

    @NonNull
    public static e fromBundle(@NonNull Bundle bundle) {
        e eVar = new e();
        bundle.setClassLoader(e.class.getClassLoader());
        if (bundle.containsKey("user_id")) {
            String string = bundle.getString("user_id");
            if (string != null) {
                eVar.f51635a.put("user_id", string);
                if (bundle.containsKey(g.f51638a)) {
                    eVar.f51635a.put(g.f51638a, Boolean.valueOf(bundle.getBoolean(g.f51638a)));
                } else {
                    eVar.f51635a.put(g.f51638a, Boolean.FALSE);
                }
                return eVar;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }
        throw new IllegalArgumentException("Required argument \"user_id\" is missing and does not have an android:defaultValue");
    }

    public boolean c() {
        return ((Boolean) this.f51635a.get(g.f51638a)).booleanValue();
    }

    @NonNull
    public String d() {
        return (String) this.f51635a.get("user_id");
    }

    @NonNull
    public Bundle e() {
        Bundle bundle = new Bundle();
        if (this.f51635a.containsKey("user_id")) {
            bundle.putString("user_id", (String) this.f51635a.get("user_id"));
        }
        if (this.f51635a.containsKey(g.f51638a)) {
            bundle.putBoolean(g.f51638a, ((Boolean) this.f51635a.get(g.f51638a)).booleanValue());
        } else {
            bundle.putBoolean(g.f51638a, false);
        }
        return bundle;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f51635a.containsKey("user_id") != eVar.f51635a.containsKey("user_id")) {
            return false;
        }
        if (d() == null ? eVar.d() == null : d().equals(eVar.d())) {
            return this.f51635a.containsKey(g.f51638a) == eVar.f51635a.containsKey(g.f51638a) && c() == eVar.c();
        }
        return false;
    }

    @NonNull
    public SavedStateHandle f() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f51635a.containsKey("user_id")) {
            savedStateHandle.set("user_id", (String) this.f51635a.get("user_id"));
        }
        if (this.f51635a.containsKey(g.f51638a)) {
            savedStateHandle.set(g.f51638a, Boolean.valueOf(((Boolean) this.f51635a.get(g.f51638a)).booleanValue()));
        } else {
            savedStateHandle.set(g.f51638a, Boolean.FALSE);
        }
        return savedStateHandle;
    }

    public int hashCode() {
        return (((d() != null ? d().hashCode() : 0) + 31) * 31) + (c() ? 1 : 0);
    }

    public String toString() {
        return "FollowersFragmentArgs{userId=" + d() + ", isFollowees=" + c() + com.alipay.sdk.util.i.f6967d;
    }

    private e() {
        this.f51635a = new HashMap();
    }

    /* compiled from: FollowersFragmentArgs.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap f51636a;

        public b(@NonNull e eVar) {
            HashMap hashMap = new HashMap();
            this.f51636a = hashMap;
            hashMap.putAll(eVar.f51635a);
        }

        @NonNull
        public e a() {
            return new e(this.f51636a);
        }

        public boolean b() {
            return ((Boolean) this.f51636a.get(g.f51638a)).booleanValue();
        }

        @NonNull
        public String c() {
            return (String) this.f51636a.get("user_id");
        }

        @NonNull
        public b d(boolean z9) {
            this.f51636a.put(g.f51638a, Boolean.valueOf(z9));
            return this;
        }

        @NonNull
        public b e(@NonNull String str) {
            if (str != null) {
                this.f51636a.put("user_id", str);
                return this;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }

        public b(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f51636a = hashMap;
            if (str != null) {
                hashMap.put("user_id", str);
                return;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }
    }

    private e(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f51635a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}
