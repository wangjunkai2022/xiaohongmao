package dagger.hilt.android.internal.modules;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import d6.h;
import d6.i;
import d6.j;

/* compiled from: ActivityModule.java */
@dagger.hilt.e({f6.a.class})
@h
/* loaded from: classes3.dex */
abstract class a {
    private a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @j
    @i
    public static FragmentActivity b(Activity activity) {
        try {
            return (FragmentActivity) activity;
        } catch (ClassCastException e4) {
            throw new IllegalStateException("Expected activity to be a FragmentActivity: " + activity, e4);
        }
    }

    @d6.a
    @m6.a
    abstract Context a(Activity activity);
}
