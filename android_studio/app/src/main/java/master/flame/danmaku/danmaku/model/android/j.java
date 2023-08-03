package master.flame.danmaku.danmaku.model.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.lang.ref.SoftReference;

/* compiled from: SpannedCacheStuffer.java */
/* loaded from: classes4.dex */
public class j extends i {
    @Override // master.flame.danmaku.danmaku.model.android.b
    public void a(master.flame.danmaku.danmaku.model.d dVar) {
        super.a(dVar);
        Object obj = dVar.f87282e;
        if (obj instanceof SoftReference) {
            ((SoftReference) obj).clear();
        }
    }

    @Override // master.flame.danmaku.danmaku.model.android.i, master.flame.danmaku.danmaku.model.android.b
    public void b() {
        super.b();
        System.gc();
    }

    @Override // master.flame.danmaku.danmaku.model.android.i, master.flame.danmaku.danmaku.model.android.b
    public void e(master.flame.danmaku.danmaku.model.d dVar, TextPaint textPaint, boolean z9) {
        CharSequence charSequence = dVar.f87280c;
        if ((charSequence instanceof Spanned) && charSequence != null) {
            StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, (int) Math.ceil(StaticLayout.getDesiredWidth(dVar.f87280c, textPaint)), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            dVar.f87293p = staticLayout.getWidth();
            dVar.f87294q = staticLayout.getHeight();
            dVar.f87282e = new SoftReference(staticLayout);
            return;
        }
        super.e(dVar, textPaint, z9);
    }

    @Override // master.flame.danmaku.danmaku.model.android.b
    public void g(master.flame.danmaku.danmaku.model.d dVar) {
        a(dVar);
        super.g(dVar);
    }

    @Override // master.flame.danmaku.danmaku.model.android.i
    public void j(master.flame.danmaku.danmaku.model.d dVar, String str, Canvas canvas, float f10, float f11, Paint paint) {
        if (dVar.f87282e == null) {
            super.j(dVar, str, canvas, f10, f11, paint);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.android.i
    public void k(master.flame.danmaku.danmaku.model.d dVar, String str, Canvas canvas, float f10, float f11, TextPaint textPaint, boolean z9) {
        Object obj = dVar.f87282e;
        if (obj == null) {
            super.k(dVar, str, canvas, f10, f11, textPaint, z9);
            return;
        }
        StaticLayout staticLayout = (StaticLayout) ((SoftReference) obj).get();
        int i4 = dVar.J;
        boolean z10 = false;
        boolean z11 = (i4 & 1) != 0;
        boolean z12 = (i4 & 2) != 0;
        if (z12 || staticLayout == null) {
            if (z12) {
                dVar.J = i4 & (-3);
            }
            CharSequence charSequence = dVar.f87280c;
            if (charSequence == null) {
                return;
            }
            if (z11) {
                staticLayout = new StaticLayout(charSequence, textPaint, (int) Math.ceil(StaticLayout.getDesiredWidth(dVar.f87280c, textPaint)), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                dVar.f87293p = staticLayout.getWidth();
                dVar.f87294q = staticLayout.getHeight();
                dVar.J &= -2;
            } else {
                staticLayout = new StaticLayout(charSequence, textPaint, (int) dVar.f87293p, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            dVar.f87282e = new SoftReference(staticLayout);
        }
        if (f10 != 0.0f && f11 != 0.0f) {
            canvas.save();
            canvas.translate(f10, f11 + textPaint.ascent());
            z10 = true;
        }
        staticLayout.draw(canvas);
        if (z10) {
            canvas.restore();
        }
    }
}
