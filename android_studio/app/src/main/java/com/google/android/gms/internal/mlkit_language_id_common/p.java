package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.EncodingException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class p implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ p f30783a = new p();

    private /* synthetic */ p() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final void a(Object obj, com.google.firebase.encoders.e eVar) {
        int i4 = q.f30806e;
        throw new EncodingException("Couldn't find encoder for type ".concat(String.valueOf(obj.getClass().getCanonicalName())));
    }
}
