package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final Map f30830a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f30831b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.firebase.encoders.d f30832c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(Map map, Map map2, com.google.firebase.encoders.d dVar) {
        this.f30830a = map;
        this.f30831b = map2;
        this.f30832c = dVar;
    }

    @NonNull
    public final byte[] a(@NonNull Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new o(byteArrayOutputStream, this.f30830a, this.f30831b, this.f30832c).t(obj);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
