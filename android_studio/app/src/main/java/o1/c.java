package o1;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import androidx.annotation.RequiresApi;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: RenderScriptBlurFilter.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int f89941a = 25;

    @RequiresApi(17)
    public static void a(final Bitmap dest, final Bitmap src, final Context context, final int radius) {
        RenderScript renderScript;
        j.i(dest);
        j.i(src);
        j.i(context);
        j.d(Boolean.valueOf(radius > 0 && radius <= 25));
        RenderScript renderScript2 = null;
        try {
            renderScript = (RenderScript) j.i(RenderScript.create(context));
        } catch (Throwable th) {
            th = th;
        }
        try {
            ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            Allocation allocation = (Allocation) j.i(Allocation.createFromBitmap(renderScript, src));
            Allocation allocation2 = (Allocation) j.i(Allocation.createFromBitmap(renderScript, dest));
            create.setRadius(radius);
            create.setInput(allocation);
            create.forEach(allocation2);
            allocation2.copyTo(dest);
            create.destroy();
            allocation.destroy();
            allocation2.destroy();
            if (renderScript != null) {
                renderScript.destroy();
            }
        } catch (Throwable th2) {
            th = th2;
            renderScript2 = renderScript;
            if (renderScript2 != null) {
                renderScript2.destroy();
            }
            throw th;
        }
    }

    public static boolean b() {
        return true;
    }
}
