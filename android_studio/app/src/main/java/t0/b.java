package t0;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileDescriptor;
import java.io.InputStream;
import r7.h;

/* compiled from: WebpBitmapFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface b {

    /* compiled from: WebpBitmapFactory.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(String message, @h String extra);
    }

    @h
    Bitmap a(InputStream inputStream, @h Rect outPadding, @h BitmapFactory.Options opts);

    void b(a logger);

    @h
    Bitmap c(String pathName, @h BitmapFactory.Options opts);

    @h
    Bitmap d(FileDescriptor fd, @h Rect outPadding, @h BitmapFactory.Options opts);

    void e(final t0.a bitmapCreator);

    @h
    Bitmap f(byte[] array, int offset, int length, @h BitmapFactory.Options opts);
}
