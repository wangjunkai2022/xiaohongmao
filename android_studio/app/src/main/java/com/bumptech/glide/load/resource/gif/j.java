package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.u;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: StreamGifDecoder.java */
/* loaded from: classes.dex */
public class j implements com.bumptech.glide.load.g<InputStream, c> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f9409d = "StreamGifDecoder";

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f9410a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.g<ByteBuffer, c> f9411b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f9412c;

    public j(List<ImageHeaderParser> list, com.bumptech.glide.load.g<ByteBuffer, c> gVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f9410a = list;
        this.f9411b = gVar;
        this.f9412c = bVar;
    }

    private static byte[] e(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e4) {
            if (Log.isLoggable(f9409d, 5)) {
                Log.w(f9409d, "Error reading data from stream", e4);
                return null;
            }
            return null;
        }
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public u<c> b(@NonNull InputStream inputStream, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        byte[] e4 = e(inputStream);
        if (e4 == null) {
            return null;
        }
        return this.f9411b.b(ByteBuffer.wrap(e4), i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return !((Boolean) fVar.c(i.f9408b)).booleanValue() && com.bumptech.glide.load.b.f(this.f9410a, inputStream, this.f9412c) == ImageHeaderParser.ImageType.GIF;
    }
}
