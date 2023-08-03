package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, @Nullable Throwable th) {
        super(str, th);
    }

    @NonNull
    public static IllegalStateException of(@NonNull k<?> kVar) {
        String str;
        if (!kVar.u()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception q9 = kVar.q();
        if (q9 != null) {
            str = "failure";
        } else if (kVar.v()) {
            str = "result ".concat(String.valueOf(kVar.r()));
        } else {
            str = kVar.t() ? "cancellation" : "unknown issue";
        }
        return new DuplicateTaskCompletionException(str.length() != 0 ? "Complete with: ".concat(str) : new String("Complete with: "), q9);
    }
}
