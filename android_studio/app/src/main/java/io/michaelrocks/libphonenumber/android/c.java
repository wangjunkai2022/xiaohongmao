package io.michaelrocks.libphonenumber.android;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: AssetsMetadataLoader.java */
/* loaded from: classes3.dex */
public class c implements f {

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f71017a;

    public c(final AssetManager assetManager) {
        this.f71017a = assetManager;
    }

    @Override // io.michaelrocks.libphonenumber.android.f
    public InputStream a(final String metadataFileName) {
        try {
            return this.f71017a.open(metadataFileName.substring(1));
        } catch (IOException unused) {
            return null;
        }
    }
}
