package b1;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: BitmapFrameCache.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface b {

    /* compiled from: BitmapFrameCache.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(b bitmapFrameCache, int frameNumber);

        void b(b bitmapFrameCache, int frameNumber);
    }

    int b();

    void c(int frameNumber, com.facebook.common.references.a<Bitmap> bitmapReference, int frameType);

    void clear();

    void d(a frameCacheListener);

    void e(int frameNumber, com.facebook.common.references.a<Bitmap> bitmapReference, int frameType);

    @h
    com.facebook.common.references.a<Bitmap> f(int frameNumber);

    @h
    com.facebook.common.references.a<Bitmap> g(int frameNumber, int width, int height);

    boolean h(int frameNumber);

    @h
    com.facebook.common.references.a<Bitmap> i(int frameNumber);
}
