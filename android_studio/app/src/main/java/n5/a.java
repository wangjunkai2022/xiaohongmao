package n5;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.didi.live.spring.R;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.s;
import master.flame.danmaku.danmaku.model.android.j;
import master.flame.danmaku.danmaku.model.d;

/* compiled from: LevelCacheStuffer.java */
/* loaded from: classes3.dex */
public class a extends j {

    /* renamed from: c  reason: collision with root package name */
    private Context f89930c;

    /* renamed from: d  reason: collision with root package name */
    private final String f89931d = "来了";

    /* renamed from: e  reason: collision with root package name */
    private int f89932e = 8;

    /* renamed from: f  reason: collision with root package name */
    private int f89933f = a0.A;

    /* renamed from: g  reason: collision with root package name */
    private int f89934g = 40;

    /* renamed from: h  reason: collision with root package name */
    private int f89935h = 1;

    /* renamed from: i  reason: collision with root package name */
    private Canvas f89936i;

    public a(Context context) {
        this.f89930c = context;
        m(context);
    }

    private void m(Context context) {
        this.f89932e = s.b(context, this.f89932e);
        this.f89933f = s.b(context, this.f89933f);
        this.f89934g = s.b(context, this.f89934g);
    }

    private void n() {
    }

    @Override // master.flame.danmaku.danmaku.model.android.j, master.flame.danmaku.danmaku.model.android.i, master.flame.danmaku.danmaku.model.android.b
    public void e(d dVar, TextPaint textPaint, boolean z9) {
        dVar.f87294q = this.f89934g;
        dVar.f87293p = this.f89933f;
    }

    @Override // master.flame.danmaku.danmaku.model.android.i
    public void i(d dVar, Canvas canvas, float f10, float f11) {
        this.f89936i = canvas;
        o0.g("enterRoom", "drawBackground:" + dVar.C + "---userId:" + dVar.B);
        int i4 = dVar.B;
        if (i4 == 1) {
            Bitmap decodeResource = BitmapFactory.decodeResource(this.f89930c.getResources(), R.drawable.user_login_moto);
            int i10 = this.f89933f;
            canvas.drawBitmap(decodeResource, (Rect) null, new Rect(i10 / 6, 0, i10, this.f89934g), new Paint());
            this.f89936i.drawBitmap(BitmapFactory.decodeResource(this.f89930c.getResources(), R.drawable.user_login_1), (Rect) null, new Rect(0, 0, (this.f89933f / 6) * 2, this.f89934g), new Paint());
            n();
        } else if (i4 == 0) {
            canvas.drawBitmap(BitmapFactory.decodeResource(this.f89930c.getResources(), R.drawable.user_login_room), (Rect) null, new Rect(0, 0, this.f89933f, this.f89934g / 2), new Paint());
        } else if (i4 == 2) {
            Bitmap decodeResource2 = BitmapFactory.decodeResource(this.f89930c.getResources(), R.drawable.user_login_ship_bg);
            int i11 = this.f89933f;
            canvas.drawBitmap(decodeResource2, (Rect) null, new Rect(i11 / 6, 0, i11, this.f89934g), new Paint());
            this.f89936i.drawBitmap(BitmapFactory.decodeResource(this.f89930c.getResources(), R.drawable.user_login_ship5), (Rect) null, new Rect(0, 0, (this.f89933f / 6) * 2, this.f89934g), new Paint());
            n();
        }
    }

    @Override // master.flame.danmaku.danmaku.model.android.j, master.flame.danmaku.danmaku.model.android.i
    public void j(d dVar, String str, Canvas canvas, float f10, float f11, Paint paint) {
    }

    @Override // master.flame.danmaku.danmaku.model.android.j, master.flame.danmaku.danmaku.model.android.i
    public void k(d dVar, String str, Canvas canvas, float f10, float f11, TextPaint textPaint, boolean z9) {
        if (dVar.f87280c != null) {
            Paint paint = new Paint();
            paint.setColor(-1);
            paint.setTextSize(dVar.f87289l);
            int i4 = dVar.B;
            if (i4 >= 5 && i4 <= 10) {
                if (dVar.f87280c.toString().length() > 20) {
                    String str2 = dVar.f87280c.toString().substring(0, 10) + "...";
                    float desiredWidth = StaticLayout.getDesiredWidth(str2, textPaint);
                    canvas.drawText(str2, this.f89933f / 6.0f, (this.f89934g / 4.0f) + (dVar.f87289l / 2.0f), textPaint);
                    canvas.drawText("来了", (this.f89933f / 6.0f) + ((int) desiredWidth), (this.f89934g / 4.0f) + (dVar.f87289l / 2.0f), paint);
                    return;
                }
                float desiredWidth2 = StaticLayout.getDesiredWidth(dVar.f87280c.toString(), textPaint);
                canvas.drawText(dVar.f87280c.toString(), this.f89933f / 6.0f, (this.f89934g / 4.0f) + (dVar.f87289l / 2.0f), textPaint);
                canvas.drawText("来了", (this.f89933f / 6.0f) + ((int) desiredWidth2), (this.f89934g / 4.0f) + (dVar.f87289l / 2.0f), paint);
            } else if (dVar.f87280c.toString().length() > 20) {
                String str3 = dVar.f87280c.toString().substring(0, 10) + "...";
                float desiredWidth3 = StaticLayout.getDesiredWidth(str3, textPaint);
                canvas.drawText(str3, (this.f89933f / 6.0f) * 2.0f, (this.f89934g / 2.0f) + (dVar.f87289l / 2.0f), textPaint);
                canvas.drawText("来了", ((this.f89933f / 6.0f) * 2.0f) + desiredWidth3, (this.f89934g / 2.0f) + (dVar.f87289l / 2.0f), paint);
            } else {
                float desiredWidth4 = StaticLayout.getDesiredWidth(dVar.f87280c, textPaint);
                canvas.drawText(dVar.f87280c.toString(), (this.f89933f / 6.0f) * 2.0f, (this.f89934g / 2.0f) + (dVar.f87289l / 2.0f), textPaint);
                canvas.drawText("来了", ((this.f89933f / 6.0f) * 2.0f) + desiredWidth4, (this.f89934g / 2.0f) + (dVar.f87289l / 2.0f), paint);
            }
        }
    }
}
