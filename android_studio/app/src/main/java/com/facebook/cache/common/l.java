package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: WriterCallbacks.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class l {

    /* compiled from: WriterCallbacks.java */
    /* loaded from: classes.dex */
    static class a implements k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f10838a;

        a(final InputStream val$is) {
            this.f10838a = val$is;
        }

        @Override // com.facebook.cache.common.k
        public void a(OutputStream os) throws IOException {
            com.facebook.common.internal.b.a(this.f10838a, os);
        }
    }

    /* compiled from: WriterCallbacks.java */
    /* loaded from: classes.dex */
    static class b implements k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f10839a;

        b(final byte[] val$data) {
            this.f10839a = val$data;
        }

        @Override // com.facebook.cache.common.k
        public void a(OutputStream os) throws IOException {
            os.write(this.f10839a);
        }
    }

    public static k a(final InputStream is) {
        return new a(is);
    }

    public static k b(final byte[] data) {
        return new b(data);
    }
}
