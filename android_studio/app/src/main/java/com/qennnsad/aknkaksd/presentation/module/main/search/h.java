package com.qennnsad.aknkaksd.presentation.module.main.search;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.NavDirections;
import com.didi.live.spring.R;
import java.util.HashMap;

/* compiled from: SearchUserFragmentDirections.java */
/* loaded from: classes3.dex */
public class h {

    /* compiled from: SearchUserFragmentDirections.java */
    /* loaded from: classes3.dex */
    public static class b implements NavDirections {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap f52026a;

        @NonNull
        public String a() {
            return (String) this.f52026a.get("user_id");
        }

        @NonNull
        public b b(@NonNull String str) {
            if (str != null) {
                this.f52026a.put("user_id", str);
                return this;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f52026a.containsKey("user_id") != bVar.f52026a.containsKey("user_id")) {
                return false;
            }
            if (a() == null ? bVar.a() == null : a().equals(bVar.a())) {
                return getActionId() == bVar.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return R.id.toUserProfile;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f52026a.containsKey("user_id")) {
                bundle.putString("user_id", (String) this.f52026a.get("user_id"));
            }
            return bundle;
        }

        public int hashCode() {
            return (((a() != null ? a().hashCode() : 0) + 31) * 31) + getActionId();
        }

        public String toString() {
            return "ToUserProfile(actionId=" + getActionId() + "){userId=" + a() + com.alipay.sdk.util.i.f6967d;
        }

        private b(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f52026a = hashMap;
            if (str != null) {
                hashMap.put("user_id", str);
                return;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }
    }

    private h() {
    }

    @NonNull
    public static b a(@NonNull String str) {
        return new b(str);
    }
}
