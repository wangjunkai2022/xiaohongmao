package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import androidx.annotation.NonNull;
import androidx.navigation.ActionOnlyNavDirections;
import androidx.navigation.NavDirections;
import com.didi.live.spring.R;

/* compiled from: SettingsFragmentDirections.java */
/* loaded from: classes3.dex */
public class x {
    private x() {
    }

    @NonNull
    public static NavDirections a() {
        return new ActionOnlyNavDirections(R.id.toBlacklist);
    }

    @NonNull
    public static NavDirections b() {
        return new ActionOnlyNavDirections(R.id.toModifyPassword);
    }
}
