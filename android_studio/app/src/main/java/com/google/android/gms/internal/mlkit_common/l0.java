package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class l0 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f29790a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f29791b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.firebase.encoders.d f29792c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(Map map, Map map2, com.google.firebase.encoders.d dVar) {
        this.f29790a = map;
        this.f29791b = map2;
        this.f29792c = dVar;
    }

    @NonNull
    public final byte[] a(@NonNull Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new i0(byteArrayOutputStream, this.f29790a, this.f29791b, this.f29792c).t(obj);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
