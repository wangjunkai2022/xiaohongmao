package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.EncodingException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class j0 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ j0 f29728a = new j0();

    private /* synthetic */ j0() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final void a(Object obj, com.google.firebase.encoders.e eVar) {
        int i4 = k0.f29757e;
        throw new EncodingException("Couldn't find encoder for type ".concat(String.valueOf(obj.getClass().getCanonicalName())));
    }
}
