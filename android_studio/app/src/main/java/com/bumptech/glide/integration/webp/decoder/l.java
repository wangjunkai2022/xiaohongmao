package com.bumptech.glide.integration.webp.decoder;

import android.util.Log;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.u;
import java.io.File;
import java.io.IOException;

/* compiled from: WebpDrawableEncoder.java */
/* loaded from: classes.dex */
public class l implements com.bumptech.glide.load.h<k> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8445a = "WebpEncoder";

    @Override // com.bumptech.glide.load.h
    public EncodeStrategy b(com.bumptech.glide.load.f fVar) {
        return EncodeStrategy.SOURCE;
    }

    @Override // com.bumptech.glide.load.a
    /* renamed from: c */
    public boolean a(u<k> uVar, File file, com.bumptech.glide.load.f fVar) {
        try {
            com.bumptech.glide.util.a.f(uVar.get().c(), file);
            return true;
        } catch (IOException e4) {
            if (Log.isLoggable(f8445a, 5)) {
                Log.w(f8445a, "Failed to encode WebP drawable data", e4);
            }
            return false;
        }
    }
}
