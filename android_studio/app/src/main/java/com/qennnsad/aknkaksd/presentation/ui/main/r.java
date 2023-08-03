package com.qennnsad.aknkaksd.presentation.ui.main;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.ActionOnlyNavDirections;
import androidx.navigation.NavDirections;
import com.didi.live.spring.R;
import java.util.HashMap;

/* compiled from: MainFragmentDirections.java */
/* loaded from: classes3.dex */
public class r {

    /* compiled from: MainFragmentDirections.java */
    /* loaded from: classes3.dex */
    public static class b implements NavDirections {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap f53137a;

        public boolean a() {
            return ((Boolean) this.f53137a.get(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a)).booleanValue();
        }

        @NonNull
        public String b() {
            return (String) this.f53137a.get("user_id");
        }

        @NonNull
        public b c(boolean z9) {
            this.f53137a.put(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a, Boolean.valueOf(z9));
            return this;
        }

        @NonNull
        public b d(@NonNull String str) {
            if (str != null) {
                this.f53137a.put("user_id", str);
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
            if (this.f53137a.containsKey("user_id") != bVar.f53137a.containsKey("user_id")) {
                return false;
            }
            if (b() == null ? bVar.b() == null : b().equals(bVar.b())) {
                return this.f53137a.containsKey(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a) == bVar.f53137a.containsKey(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a) && a() == bVar.a() && getActionId() == bVar.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return R.id.toFollowers;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f53137a.containsKey("user_id")) {
                bundle.putString("user_id", (String) this.f53137a.get("user_id"));
            }
            if (this.f53137a.containsKey(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a)) {
                bundle.putBoolean(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a, ((Boolean) this.f53137a.get(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a)).booleanValue());
            } else {
                bundle.putBoolean(com.qennnsad.aknkaksd.presentation.module.main.followers.g.f51638a, false);
            }
            return bundle;
        }

        public int hashCode() {
            return (((((b() != null ? b().hashCode() : 0) + 31) * 31) + (a() ? 1 : 0)) * 31) + getActionId();
        }

        public String toString() {
            return "ToFollowers(actionId=" + getActionId() + "){userId=" + b() + ", isFollowees=" + a() + com.alipay.sdk.util.i.f6967d;
        }

        private b(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f53137a = hashMap;
            if (str != null) {
                hashMap.put("user_id", str);
                return;
            }
            throw new IllegalArgumentException("Argument \"user_id\" is marked as non-null but was passed a null value.");
        }
    }

    private r() {
    }

    @NonNull
    public static NavDirections a() {
        return new ActionOnlyNavDirections(R.id.toEditProfile);
    }

    @NonNull
    public static b b(@NonNull String str) {
        return new b(str);
    }

    @NonNull
    public static NavDirections c() {
        return new ActionOnlyNavDirections(R.id.toSearchUser);
    }

    @NonNull
    public static NavDirections d() {
        return new ActionOnlyNavDirections(R.id.toSettings);
    }
}
