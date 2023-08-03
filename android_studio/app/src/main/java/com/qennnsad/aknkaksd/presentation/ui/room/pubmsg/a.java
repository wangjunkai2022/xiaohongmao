package com.qennnsad.aknkaksd.presentation.ui.room.pubmsg;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.annotation.ColorInt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: LinearGradientForegroundSpan.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B7\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\b\b\u0001\u0010\u0010\u001a\u00020\r\u0012\b\b\u0001\u0010\u0012\u001a\u00020\r\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;", "Landroid/text/style/CharacterStyle;", "Landroid/text/style/UpdateAppearance;", "Landroid/text/TextPaint;", "tp", "", "updateDrawState", "", "a", "Ljava/lang/String;", "containingText", "b", "textToStyle", "", "c", "I", "startColorInt", "d", "endColorInt", "", "e", "F", "knownWidth", "<init>", "(Ljava/lang/String;Ljava/lang/String;IIF)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends CharacterStyle implements UpdateAppearance {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f54068a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f54069b;

    /* renamed from: c  reason: collision with root package name */
    private final int f54070c;

    /* renamed from: d  reason: collision with root package name */
    private final int f54071d;

    /* renamed from: e  reason: collision with root package name */
    private final float f54072e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public a(@m8.g String containingText, @m8.g String textToStyle, @ColorInt int i4, @ColorInt int i10) {
        this(containingText, textToStyle, i4, i10, 0.0f, 16, null);
        Intrinsics.checkNotNullParameter(containingText, "containingText");
        Intrinsics.checkNotNullParameter(textToStyle, "textToStyle");
    }

    public /* synthetic */ a(String str, String str2, int i4, int i10, float f10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i4, i10, (i11 & 16) != 0 ? -1.0f : f10);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@m8.h TextPaint textPaint) {
        int indexOf$default;
        boolean startsWith$default;
        float f10;
        float measureText;
        float measureText2;
        if (textPaint == null) {
            return;
        }
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) this.f54068a, this.f54069b, 0, false, 6, (Object) null);
        boolean z9 = this.f54072e > 0.0f;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(this.f54068a, this.f54069b, false, 2, null);
        if (startsWith$default || Intrinsics.areEqual(this.f54068a, this.f54069b)) {
            f10 = 0.0f;
        } else {
            if (z9) {
                measureText2 = this.f54072e - textPaint.measureText(this.f54069b);
            } else {
                measureText2 = textPaint.measureText(this.f54068a, 0, indexOf$default);
            }
            f10 = measureText2;
        }
        if (z9) {
            measureText = this.f54072e - f10;
        } else {
            measureText = textPaint.measureText(this.f54068a, indexOf$default, this.f54069b.length() + indexOf$default);
        }
        textPaint.setShader(new LinearGradient(f10, 0.0f, f10 + measureText, 0.0f, this.f54070c, this.f54071d, Shader.TileMode.CLAMP));
    }

    @JvmOverloads
    public a(@m8.g String containingText, @m8.g String textToStyle, @ColorInt int i4, @ColorInt int i10, float f10) {
        Intrinsics.checkNotNullParameter(containingText, "containingText");
        Intrinsics.checkNotNullParameter(textToStyle, "textToStyle");
        this.f54068a = containingText;
        this.f54069b = textToStyle;
        this.f54070c = i4;
        this.f54071d = i10;
        this.f54072e = f10;
    }
}
