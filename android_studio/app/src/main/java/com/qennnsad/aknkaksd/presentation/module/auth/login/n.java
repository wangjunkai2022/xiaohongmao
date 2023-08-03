package com.qennnsad.aknkaksd.presentation.module.auth.login;

import androidx.annotation.NonNull;
import androidx.navigation.ActionOnlyNavDirections;
import androidx.navigation.NavDirections;
import com.didi.live.spring.R;

/* compiled from: LoginFragmentDirections.java */
/* loaded from: classes3.dex */
public class n {
    private n() {
    }

    @NonNull
    public static NavDirections a() {
        return new ActionOnlyNavDirections(R.id.action_loginFragment_to_findPassFragment);
    }

    @NonNull
    public static NavDirections b() {
        return new ActionOnlyNavDirections(R.id.action_loginFragment_to_signUpFragment);
    }
}
