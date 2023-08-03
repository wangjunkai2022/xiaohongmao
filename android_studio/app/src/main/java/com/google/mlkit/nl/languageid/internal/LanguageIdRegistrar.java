package com.google.mlkit.nl.languageid.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.mlkit_language_id_common.zzu;
import com.google.firebase.components.k;
import com.google.firebase.components.t;
import com.google.mlkit.nl.languageid.internal.LanguageIdentifierImpl;
import java.util.List;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
@u2.a
/* loaded from: classes2.dex */
public class LanguageIdRegistrar implements k {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f35934a = 0;

    @Override // com.google.firebase.components.k
    @NonNull
    public final List a() {
        return zzu.zzi(com.google.firebase.components.f.a(i.class).b(t.j(Context.class)).b(t.l(a.class)).f(c.f35945a).d(), com.google.firebase.components.f.a(LanguageIdentifierImpl.a.class).b(t.j(i.class)).b(t.j(com.google.mlkit.common.sdkinternal.f.class)).f(d.f35946a).d());
    }
}
