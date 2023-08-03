package com.qennnsad.aknkaksd.presentation.ui.room.pubmsg;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageBackgroundSpan.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0014\u001a\u00020\t¢\u0006\u0004\b\u0019\u0010\u001aJP\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0014\u0010\u0014\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/b;", "Landroid/text/style/ImageSpan;", "Landroid/graphics/Canvas;", "canvas", "", "text", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, com.google.android.exoplayer2.text.ttml.d.f25727p0, "", y.b.f83919g, "top", y.b.f83920h, "bottom", "Landroid/graphics/Paint;", "paint", "", "draw", "a", "F", com.google.android.exoplayer2.text.ttml.d.J, "Landroid/content/Context;", "context", "Landroid/graphics/Bitmap;", "bitmap", "<init>", "(Landroid/content/Context;Landroid/graphics/Bitmap;F)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends ImageSpan {

    /* renamed from: a  reason: collision with root package name */
    private final float f54073a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@m8.g Context context, @m8.g Bitmap bitmap, float f10) {
        super(context, bitmap);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.f54073a = f10;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(@m8.g Canvas canvas, @m8.g CharSequence text, int i4, int i10, float f10, int i11, int i12, int i13, @m8.g Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Drawable drawable = getDrawable();
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i14 = ((((i12 + fontMetricsInt.descent) + i12) + fontMetricsInt.ascent) / 2) - (drawable.getBounds().bottom / 2);
        canvas.save();
        canvas.translate(f10, i14);
        drawable.draw(canvas);
        Paint paint2 = new Paint(paint);
        paint2.setTextAlign(Paint.Align.CENTER);
        paint2.setColor(-1);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setTextSize(this.f54073a);
        canvas.drawText(text, i4, i10, drawable.getBounds().left + (drawable.getIntrinsicWidth() / 2), i14 + (drawable.getIntrinsicHeight() / 2), paint2);
        canvas.restore();
    }
}
