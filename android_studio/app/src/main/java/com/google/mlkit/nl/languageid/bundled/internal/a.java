package com.google.mlkit.nl.languageid.bundled.internal;

import android.content.Context;
import androidx.annotation.NonNull;

/* compiled from: com.google.mlkit:language-id@@17.0.4 */
@u2.a
/* loaded from: classes2.dex */
public class a implements com.google.mlkit.nl.languageid.internal.a {
    @Override // com.google.mlkit.nl.languageid.internal.a
    @NonNull
    public final com.google.mlkit.nl.languageid.internal.b a(@NonNull Context context, @NonNull com.google.mlkit.nl.languageid.b bVar) {
        return new ThickLanguageIdentifier(context, bVar);
    }

    @Override // com.google.mlkit.nl.languageid.internal.a
    @com.google.mlkit.common.sdkinternal.b
    public final int getPriority() {
        return 100;
    }
}
