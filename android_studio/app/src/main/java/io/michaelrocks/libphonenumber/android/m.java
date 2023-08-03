package io.michaelrocks.libphonenumber.android;

import java.io.InputStream;

/* compiled from: ResourceMetadataLoader.java */
/* loaded from: classes3.dex */
class m implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f71065a;

    public m() {
        this(m.class);
    }

    @Override // io.michaelrocks.libphonenumber.android.f
    public InputStream a(String metadataFileName) {
        return this.f71065a.getResourceAsStream(metadataFileName);
    }

    public m(Class<?> loaderClass) {
        this.f71065a = loaderClass;
    }
}
