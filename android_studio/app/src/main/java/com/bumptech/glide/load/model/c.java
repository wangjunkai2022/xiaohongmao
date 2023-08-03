package com.bumptech.glide.load.model;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferEncoder.java */
/* loaded from: classes.dex */
public class c implements com.bumptech.glide.load.a<ByteBuffer> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9029a = "ByteBufferEncoder";

    @Override // com.bumptech.glide.load.a
    /* renamed from: c */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull com.bumptech.glide.load.f fVar) {
        try {
            com.bumptech.glide.util.a.f(byteBuffer, file);
            return true;
        } catch (IOException e4) {
            if (Log.isLoggable(f9029a, 3)) {
                Log.d(f9029a, "Failed to write data", e4);
            }
            return false;
        }
    }
}
