package com.facebook.imagepipeline.producers;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayInputStream;
import java.io.IOException;

/* compiled from: DataFetchProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class m extends e0 {

    /* renamed from: c  reason: collision with root package name */
    public static final String f13076c = "DataFetchProducer";

    public m(com.facebook.common.memory.g pooledByteBufferFactory) {
        super(com.facebook.common.executors.a.a(), pooledByteBufferFactory);
    }

    @VisibleForTesting
    static byte[] g(String uri) {
        com.facebook.common.internal.j.d(Boolean.valueOf(uri.substring(0, 5).equals("data:")));
        int indexOf = uri.indexOf(44);
        String substring = uri.substring(indexOf + 1, uri.length());
        if (h(uri.substring(0, indexOf))) {
            return Base64.decode(substring, 0);
        }
        String decode = Uri.decode(substring);
        com.facebook.common.internal.j.i(decode);
        return decode.getBytes();
    }

    @VisibleForTesting
    static boolean h(String prefix) {
        if (prefix.contains(com.alipay.sdk.util.i.f6965b)) {
            String[] split = prefix.split(com.alipay.sdk.util.i.f6965b);
            return split[split.length - 1].equals("base64");
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.e0
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        byte[] g4 = g(imageRequest.w().toString());
        return c(new ByteArrayInputStream(g4), g4.length);
    }

    @Override // com.facebook.imagepipeline.producers.e0
    protected String f() {
        return f13076c;
    }
}
