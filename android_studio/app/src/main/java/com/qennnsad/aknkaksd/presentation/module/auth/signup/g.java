package com.qennnsad.aknkaksd.presentation.module.auth.signup;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import java.util.HashMap;

/* compiled from: FinishSignUpFragmentArgs.java */
/* loaded from: classes3.dex */
public class g implements NavArgs {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap f51266a;

    @NonNull
    public static g b(@NonNull SavedStateHandle savedStateHandle) {
        g gVar = new g();
        if (savedStateHandle.contains("isFromGuestLinking")) {
            gVar.f51266a.put("isFromGuestLinking", Boolean.valueOf(((Boolean) savedStateHandle.get("isFromGuestLinking")).booleanValue()));
        } else {
            gVar.f51266a.put("isFromGuestLinking", Boolean.FALSE);
        }
        return gVar;
    }

    @NonNull
    public static g fromBundle(@NonNull Bundle bundle) {
        g gVar = new g();
        bundle.setClassLoader(g.class.getClassLoader());
        if (bundle.containsKey("isFromGuestLinking")) {
            gVar.f51266a.put("isFromGuestLinking", Boolean.valueOf(bundle.getBoolean("isFromGuestLinking")));
        } else {
            gVar.f51266a.put("isFromGuestLinking", Boolean.FALSE);
        }
        return gVar;
    }

    public boolean c() {
        return ((Boolean) this.f51266a.get("isFromGuestLinking")).booleanValue();
    }

    @NonNull
    public Bundle d() {
        Bundle bundle = new Bundle();
        if (this.f51266a.containsKey("isFromGuestLinking")) {
            bundle.putBoolean("isFromGuestLinking", ((Boolean) this.f51266a.get("isFromGuestLinking")).booleanValue());
        } else {
            bundle.putBoolean("isFromGuestLinking", false);
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle e() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f51266a.containsKey("isFromGuestLinking")) {
            savedStateHandle.set("isFromGuestLinking", Boolean.valueOf(((Boolean) this.f51266a.get("isFromGuestLinking")).booleanValue()));
        } else {
            savedStateHandle.set("isFromGuestLinking", Boolean.FALSE);
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
        g gVar = (g) obj;
        return this.f51266a.containsKey("isFromGuestLinking") == gVar.f51266a.containsKey("isFromGuestLinking") && c() == gVar.c();
    }

    public int hashCode() {
        return 31 + (c() ? 1 : 0);
    }

    public String toString() {
        return "FinishSignUpFragmentArgs{isFromGuestLinking=" + c() + com.alipay.sdk.util.i.f6967d;
    }

    private g() {
        this.f51266a = new HashMap();
    }

    /* compiled from: FinishSignUpFragmentArgs.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap f51267a;

        public b(@NonNull g gVar) {
            HashMap hashMap = new HashMap();
            this.f51267a = hashMap;
            hashMap.putAll(gVar.f51266a);
        }

        @NonNull
        public g a() {
            return new g(this.f51267a);
        }

        public boolean b() {
            return ((Boolean) this.f51267a.get("isFromGuestLinking")).booleanValue();
        }

        @NonNull
        public b c(boolean z9) {
            this.f51267a.put("isFromGuestLinking", Boolean.valueOf(z9));
            return this;
        }

        public b() {
            this.f51267a = new HashMap();
        }
    }

    private g(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f51266a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}
