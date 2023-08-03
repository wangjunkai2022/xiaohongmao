package com.google.android.gms.common;

import android.content.Intent;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public class UserRecoverableException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f28493a;

    public UserRecoverableException(@NonNull String str, @NonNull Intent intent) {
        super(str);
        this.f28493a = intent;
    }

    @NonNull
    public Intent getIntent() {
        return new Intent(this.f28493a);
    }
}
