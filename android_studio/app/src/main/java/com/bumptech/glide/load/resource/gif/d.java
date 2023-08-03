package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.u;
import java.io.File;
import java.io.IOException;

/* compiled from: GifDrawableEncoder.java */
/* loaded from: classes.dex */
public class d implements com.bumptech.glide.load.h<c> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9378a = "GifEncoder";

    @Override // com.bumptech.glide.load.h
    @NonNull
    public EncodeStrategy b(@NonNull com.bumptech.glide.load.f fVar) {
        return EncodeStrategy.SOURCE;
    }

    @Override // com.bumptech.glide.load.a
    /* renamed from: c */
    public boolean a(@NonNull u<c> uVar, @NonNull File file, @NonNull com.bumptech.glide.load.f fVar) {
        try {
            com.bumptech.glide.util.a.f(uVar.get().c(), file);
            return true;
        } catch (IOException e4) {
            if (Log.isLoggable(f9378a, 5)) {
                Log.w(f9378a, "Failed to encode GIF drawable data", e4);
            }
            return false;
        }
    }
}
