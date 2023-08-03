package master.flame.danmaku.danmaku.model.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import java.util.HashMap;
import java.util.Map;
import master.flame.danmaku.danmaku.model.android.a;
import master.flame.danmaku.danmaku.model.r;

/* compiled from: SimpleTextCacheStuffer.java */
/* loaded from: classes4.dex */
public class i extends b {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Float, Float> f87267b = new HashMap();

    @Override // master.flame.danmaku.danmaku.model.android.b
    public void b() {
        f87267b.clear();
    }

    @Override // master.flame.danmaku.danmaku.model.android.b
    public void d(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11, boolean z9, a.C0783a c0783a) {
        float f12;
        float f13;
        int i4;
        float f14;
        float f15;
        float f16;
        float f17;
        int i10 = dVar.f87291n;
        float f18 = f10 + i10;
        float f19 = f11 + i10;
        if (dVar.f87290m != 0) {
            f18 += 4.0f;
            f19 += 4.0f;
        }
        float f20 = f19;
        float f21 = f18;
        c0783a.j(z9);
        TextPaint l10 = c0783a.l(dVar, z9);
        i(dVar, canvas, f10, f11);
        String[] strArr = dVar.f87281d;
        boolean z10 = true;
        boolean z11 = false;
        if (strArr != null) {
            if (strArr.length == 1) {
                if (c0783a.o(dVar)) {
                    c0783a.g(dVar, l10, true);
                    float ascent = f20 - l10.ascent();
                    if (c0783a.f87201s) {
                        f16 = ascent + c0783a.f87194l;
                        f17 = c0783a.f87193k + f21;
                    } else {
                        f16 = ascent;
                        f17 = f21;
                    }
                    j(dVar, strArr[0], canvas, f17, f16, l10);
                }
                c0783a.g(dVar, l10, false);
                k(dVar, strArr[0], canvas, f21, f20 - l10.ascent(), l10, z9);
            } else {
                float length = (dVar.f87294q - (dVar.f87291n * 2)) / strArr.length;
                int i11 = 0;
                while (i11 < strArr.length) {
                    if (strArr[i11] == null || strArr[i11].length() == 0) {
                        i4 = i11;
                    } else {
                        if (c0783a.o(dVar)) {
                            c0783a.g(dVar, l10, z10);
                            float ascent2 = ((i11 * length) + f20) - l10.ascent();
                            if (c0783a.f87201s) {
                                f14 = ascent2 + c0783a.f87194l;
                                f15 = c0783a.f87193k + f21;
                            } else {
                                f14 = ascent2;
                                f15 = f21;
                            }
                            i4 = i11;
                            j(dVar, strArr[i11], canvas, f15, f14, l10);
                        } else {
                            i4 = i11;
                        }
                        c0783a.g(dVar, l10, z11);
                        k(dVar, strArr[i4], canvas, f21, ((i4 * length) + f20) - l10.ascent(), l10, z9);
                    }
                    i11 = i4 + 1;
                    z11 = false;
                    z10 = true;
                }
            }
        } else {
            if (c0783a.o(dVar)) {
                c0783a.g(dVar, l10, true);
                float ascent3 = f20 - l10.ascent();
                if (c0783a.f87201s) {
                    f12 = ascent3 + c0783a.f87194l;
                    f13 = c0783a.f87193k + f21;
                } else {
                    f12 = ascent3;
                    f13 = f21;
                }
                j(dVar, null, canvas, f13, f12, l10);
            }
            c0783a.g(dVar, l10, false);
            k(dVar, null, canvas, f21, f20 - l10.ascent(), l10, z9);
        }
        if (dVar.f87288k != 0) {
            Paint n9 = c0783a.n(dVar);
            float f22 = (f11 + dVar.f87294q) - c0783a.f87190h;
            canvas.drawLine(f10, f22, f10 + dVar.f87293p, f22, n9);
        }
        if (dVar.f87290m != 0) {
            canvas.drawRect(f10, f11, f10 + dVar.f87293p, f11 + dVar.f87294q, c0783a.k(dVar));
        }
    }

    @Override // master.flame.danmaku.danmaku.model.android.b
    public void e(master.flame.danmaku.danmaku.model.d dVar, TextPaint textPaint, boolean z9) {
        String[] strArr;
        float f10 = 0.0f;
        Float valueOf = Float.valueOf(0.0f);
        if (dVar.f87281d == null) {
            CharSequence charSequence = dVar.f87280c;
            if (charSequence != null) {
                f10 = textPaint.measureText(charSequence.toString());
                valueOf = l(dVar, textPaint);
            }
            dVar.f87293p = f10;
            dVar.f87294q = valueOf.floatValue();
            return;
        }
        Float l10 = l(dVar, textPaint);
        for (String str : dVar.f87281d) {
            if (str.length() > 0) {
                f10 = Math.max(textPaint.measureText(str), f10);
            }
        }
        dVar.f87293p = f10;
        dVar.f87294q = dVar.f87281d.length * l10.floatValue();
    }

    protected void i(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j(master.flame.danmaku.danmaku.model.d dVar, String str, Canvas canvas, float f10, float f11, Paint paint) {
        if (str != null) {
            canvas.drawText(str, f10, f11, paint);
        } else {
            canvas.drawText(dVar.f87280c.toString(), f10, f11, paint);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k(master.flame.danmaku.danmaku.model.d dVar, String str, Canvas canvas, float f10, float f11, TextPaint textPaint, boolean z9) {
        if (z9 && (dVar instanceof r)) {
            textPaint.setAlpha(255);
        }
        if (str != null) {
            canvas.drawText(str, f10, f11, textPaint);
        } else {
            canvas.drawText(dVar.f87280c.toString(), f10, f11, textPaint);
        }
    }

    protected Float l(master.flame.danmaku.danmaku.model.d dVar, Paint paint) {
        Float valueOf = Float.valueOf(paint.getTextSize());
        Map<Float, Float> map = f87267b;
        Float f10 = map.get(valueOf);
        if (f10 == null) {
            Paint.FontMetrics fontMetrics = paint.getFontMetrics();
            Float valueOf2 = Float.valueOf((fontMetrics.descent - fontMetrics.ascent) + fontMetrics.leading);
            map.put(valueOf, valueOf2);
            return valueOf2;
        }
        return f10;
    }
}
