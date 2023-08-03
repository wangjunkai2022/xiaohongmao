package com.google.mlkit.nl.languageid;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;
import com.google.mlkit.common.sdkinternal.k;
import com.google.mlkit.nl.languageid.internal.LanguageIdentifierImpl;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public class a {
    private a() {
    }

    @NonNull
    public static c a() {
        return ((LanguageIdentifierImpl.a) k.c().a(LanguageIdentifierImpl.a.class)).a(b.f35924c);
    }

    @NonNull
    public static c b(@NonNull b bVar) {
        u.l(bVar, "LanguageIdentificationOptions can not be null");
        return ((LanguageIdentifierImpl.a) k.c().a(LanguageIdentifierImpl.a.class)).a(bVar);
    }
}
