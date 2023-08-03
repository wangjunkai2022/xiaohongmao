package o1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: XferRoundFilter.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class d {
    private d() {
    }

    public static boolean a() {
        return true;
    }

    @RequiresApi(api = 12)
    public static void b(Bitmap output, Bitmap source, boolean enableAntiAliasing) {
        Paint paint;
        Paint paint2;
        j.i(source);
        j.i(output);
        output.setHasAlpha(true);
        if (enableAntiAliasing) {
            paint = new Paint(1);
            paint2 = new Paint(1);
        } else {
            paint = new Paint();
            paint2 = new Paint();
        }
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        Canvas canvas = new Canvas(output);
        float width = source.getWidth() / 2.0f;
        float height = source.getHeight() / 2.0f;
        canvas.drawCircle(width, height, Math.min(width, height), paint);
        canvas.drawBitmap(source, 0.0f, 0.0f, paint2);
    }
}
