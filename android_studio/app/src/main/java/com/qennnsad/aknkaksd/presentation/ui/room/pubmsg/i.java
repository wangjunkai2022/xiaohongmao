package com.qennnsad.aknkaksd.presentation.ui.room.pubmsg;

import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.annotation.ColorInt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LinearGradientForegroundSpan.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B#\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/i;", "Landroid/text/style/CharacterStyle;", "Landroid/text/style/UpdateAppearance;", "Landroid/text/TextPaint;", "tp", "", "updateDrawState", "", "a", "Ljava/lang/String;", "textToStyle", "", "b", "I", "startColorInt", "c", "endColorInt", "<init>", "(Ljava/lang/String;II)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i extends CharacterStyle implements UpdateAppearance {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f54140a;

    /* renamed from: b  reason: collision with root package name */
    private final int f54141b;

    /* renamed from: c  reason: collision with root package name */
    private final int f54142c;

    public i(@m8.g String textToStyle, @ColorInt int i4, @ColorInt int i10) {
        Intrinsics.checkNotNullParameter(textToStyle, "textToStyle");
        this.f54140a = textToStyle;
        this.f54141b = i4;
        this.f54142c = i10;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@m8.h TextPaint textPaint) {
        if (textPaint == null) {
            return;
        }
        Rect rect = new Rect();
        String str = this.f54140a;
        textPaint.getTextBounds(str, 0, str.length(), rect);
        textPaint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, rect.height() + (textPaint.getFontSpacing() / 2), this.f54141b, this.f54142c, Shader.TileMode.REPEAT));
    }
}
