package com.qennnsad.aknkaksd.presentation.module.main.profile;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import java.util.HashMap;

/* compiled from: UserProfileFragmentArgs.java */
/* loaded from: classes3.dex */
public class k implements NavArgs {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap f51914a;

    @NonNull
    public static k b(@NonNull SavedStateHandle savedStateHandle) {
        k kVar = new k();
        if (savedStateHandle.contains("user_id")) {
            String str = (String) savedStateHandle.get("user_id");
            if (str != null) {
                kVar.f51914a.put("user_id", str);
                return kVar;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }
        throw new IllegalArgumentException("Required argument \"user_id\" is missing and does not have an android:defaultValue");
    }

    @NonNull
    public static k fromBundle(@NonNull Bundle bundle) {
        k kVar = new k();
        bundle.setClassLoader(k.class.getClassLoader());
        if (bundle.containsKey("user_id")) {
            String string = bundle.getString("user_id");
            if (string != null) {
                kVar.f51914a.put("user_id", string);
                return kVar;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }
        throw new IllegalArgumentException("Required argument \"user_id\" is missing and does not have an android:defaultValue");
    }

    @NonNull
    public String c() {
        return (String) this.f51914a.get("user_id");
    }

    @NonNull
    public Bundle d() {
        Bundle bundle = new Bundle();
        if (this.f51914a.containsKey("user_id")) {
            bundle.putString("user_id", (String) this.f51914a.get("user_id"));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle e() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f51914a.containsKey("user_id")) {
            savedStateHandle.set("user_id", (String) this.f51914a.get("user_id"));
        }
        return savedStateHandle;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f51914a.containsKey("user_id") != kVar.f51914a.containsKey("user_id")) {
            return false;
        }
        return c() == null ? kVar.c() == null : c().equals(kVar.c());
    }

    public int hashCode() {
        return 31 + (c() != null ? c().hashCode() : 0);
    }

    public String toString() {
        return "UserProfileFragmentArgs{userId=" + c() + com.alipay.sdk.util.i.f6967d;
    }

    private k() {
        this.f51914a = new HashMap();
    }

    /* compiled from: UserProfileFragmentArgs.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap f51915a;

        public b(@NonNull k kVar) {
            HashMap hashMap = new HashMap();
            this.f51915a = hashMap;
            hashMap.putAll(kVar.f51914a);
        }

        @NonNull
        public k a() {
            return new k(this.f51915a);
        }

        @NonNull
        public String b() {
            return (String) this.f51915a.get("user_id");
        }

        @NonNull
        public b c(@NonNull String str) {
            if (str != null) {
                this.f51915a.put("user_id", str);
                return this;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }

        public b(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f51915a = hashMap;
            if (str != null) {
                hashMap.put("user_id", str);
                return;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }
    }

    private k(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f51914a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}
