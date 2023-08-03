package com.qennnsad.aknkaksd.presentation.module.auth.signup;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.NavDirections;
import com.didi.live.spring.R;
import java.util.HashMap;

/* compiled from: SignUpFragmentDirections.java */
/* loaded from: classes3.dex */
public class p {

    /* compiled from: SignUpFragmentDirections.java */
    /* loaded from: classes3.dex */
    public static class b implements NavDirections {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap f51285a;

        public boolean a() {
            return ((Boolean) this.f51285a.get("isFromGuestLinking")).booleanValue();
        }

        @NonNull
        public b b(boolean z9) {
            this.f51285a.put("isFromGuestLinking", Boolean.valueOf(z9));
            return this;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f51285a.containsKey("isFromGuestLinking") == bVar.f51285a.containsKey("isFromGuestLinking") && a() == bVar.a() && getActionId() == bVar.getActionId();
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return R.id.action_signUpFragment_to_finishSignUpFragment;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f51285a.containsKey("isFromGuestLinking")) {
                bundle.putBoolean("isFromGuestLinking", ((Boolean) this.f51285a.get("isFromGuestLinking")).booleanValue());
            } else {
                bundle.putBoolean("isFromGuestLinking", false);
            }
            return bundle;
        }

        public int hashCode() {
            return (((a() ? 1 : 0) + 31) * 31) + getActionId();
        }

        public String toString() {
            return "ActionSignUpFragmentToFinishSignUpFragment(actionId=" + getActionId() + "){isFromGuestLinking=" + a() + com.alipay.sdk.util.i.f6967d;
        }

        private b() {
            this.f51285a = new HashMap();
        }
    }

    private p() {
    }

    @NonNull
    public static b a() {
        return new b();
    }
}
