package s4;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: SVGABitmapDecoder.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ!\u0010\f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Ls4/c;", ExifInterface.GPS_DIRECTION_TRUE, "", "data", "", "reqWidth", "reqHeight", "Landroid/graphics/Bitmap;", "a", "(Ljava/lang/Object;II)Landroid/graphics/Bitmap;", "Landroid/graphics/BitmapFactory$Options;", "ops", "b", "(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public abstract class c<T> {
    @h
    public final Bitmap a(T t9, int i4, int i10) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = i4 > 0 && i10 > 0;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        Bitmap b10 = b(t9, options);
        if (options.inJustDecodeBounds) {
            options.inSampleSize = a.f93274a.a(options, i4, i10);
            options.inJustDecodeBounds = false;
            return b(t9, options);
        }
        return b10;
    }

    @h
    public abstract Bitmap b(T t9, @g BitmapFactory.Options options);
}
