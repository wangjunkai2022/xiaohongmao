package com.google.mlkit.nl.languageid.internal;

import androidx.annotation.NonNull;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import java.util.List;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
@u2.a
/* loaded from: classes2.dex */
public interface b {
    @NonNull
    @u2.a
    List<IdentifiedLanguage> a(@NonNull String str, float f10) throws MlKitException;

    @u2.a
    void b() throws MlKitException;

    @u2.a
    void release();
}
