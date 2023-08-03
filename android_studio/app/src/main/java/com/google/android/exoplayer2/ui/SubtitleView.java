package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.a;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class SubtitleView extends FrameLayout implements com.google.android.exoplayer2.text.j {

    /* renamed from: k  reason: collision with root package name */
    public static final float f26292k = 0.0533f;

    /* renamed from: l  reason: collision with root package name */
    public static final float f26293l = 0.08f;

    /* renamed from: m  reason: collision with root package name */
    public static final int f26294m = 1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f26295n = 2;

    /* renamed from: a  reason: collision with root package name */
    private List<com.google.android.exoplayer2.text.a> f26296a;

    /* renamed from: b  reason: collision with root package name */
    private e f26297b;

    /* renamed from: c  reason: collision with root package name */
    private int f26298c;

    /* renamed from: d  reason: collision with root package name */
    private float f26299d;

    /* renamed from: e  reason: collision with root package name */
    private float f26300e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f26301f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f26302g;

    /* renamed from: h  reason: collision with root package name */
    private int f26303h;

    /* renamed from: i  reason: collision with root package name */
    private a f26304i;

    /* renamed from: j  reason: collision with root package name */
    private View f26305j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface a {
        void a(List<com.google.android.exoplayer2.text.a> list, e eVar, float f10, int i4, float f11);
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private void F(int i4, float f10) {
        this.f26298c = i4;
        this.f26299d = f10;
        I();
    }

    private void I() {
        this.f26304i.a(getCuesWithStylingPreferencesApplied(), this.f26297b, this.f26299d, this.f26298c, this.f26300e);
    }

    private com.google.android.exoplayer2.text.a d(com.google.android.exoplayer2.text.a aVar) {
        a.c a10 = aVar.a();
        if (!this.f26301f) {
            t0.e(a10);
        } else if (!this.f26302g) {
            t0.f(a10);
        }
        return a10.a();
    }

    private List<com.google.android.exoplayer2.text.a> getCuesWithStylingPreferencesApplied() {
        if (this.f26301f && this.f26302g) {
            return this.f26296a;
        }
        ArrayList arrayList = new ArrayList(this.f26296a.size());
        for (int i4 = 0; i4 < this.f26296a.size(); i4++) {
            arrayList.add(d(this.f26296a.get(i4)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (com.google.android.exoplayer2.util.z0.f27743a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private e getUserCaptionStyle() {
        if (com.google.android.exoplayer2.util.z0.f27743a >= 19 && !isInEditMode()) {
            CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
            if (captioningManager != null && captioningManager.isEnabled()) {
                return e.a(captioningManager.getUserStyle());
            }
            return e.f26359m;
        }
        return e.f26359m;
    }

    private <T extends View & a> void setView(T t9) {
        removeView(this.f26305j);
        View view = this.f26305j;
        if (view instanceof WebViewSubtitleOutput) {
            ((WebViewSubtitleOutput) view).g();
        }
        this.f26305j = t9;
        this.f26304i = t9;
        addView(t9);
    }

    public void G() {
        setStyle(getUserCaptionStyle());
    }

    public void H() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    @Override // com.google.android.exoplayer2.text.j
    public void r(List<com.google.android.exoplayer2.text.a> list) {
        setCues(list);
    }

    public void setApplyEmbeddedFontSizes(boolean z9) {
        this.f26302g = z9;
        I();
    }

    public void setApplyEmbeddedStyles(boolean z9) {
        this.f26301f = z9;
        I();
    }

    public void setBottomPaddingFraction(float f10) {
        this.f26300e = f10;
        I();
    }

    public void setCues(@Nullable List<com.google.android.exoplayer2.text.a> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f26296a = list;
        I();
    }

    public void setFractionalTextSize(float f10) {
        y(f10, false);
    }

    public void setStyle(e eVar) {
        this.f26297b = eVar;
        I();
    }

    public void setViewType(int i4) {
        if (this.f26303h == i4) {
            return;
        }
        if (i4 == 1) {
            setView(new CanvasSubtitleOutput(getContext()));
        } else if (i4 == 2) {
            setView(new WebViewSubtitleOutput(getContext()));
        } else {
            throw new IllegalArgumentException();
        }
        this.f26303h = i4;
    }

    public void x(@Dimension int i4, float f10) {
        Resources resources;
        Context context = getContext();
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        F(2, TypedValue.applyDimension(i4, f10, resources.getDisplayMetrics()));
    }

    public void y(float f10, boolean z9) {
        F(z9 ? 1 : 0, f10);
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26296a = Collections.emptyList();
        this.f26297b = e.f26359m;
        this.f26298c = 0;
        this.f26299d = 0.0533f;
        this.f26300e = 0.08f;
        this.f26301f = true;
        this.f26302g = true;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context);
        this.f26304i = canvasSubtitleOutput;
        this.f26305j = canvasSubtitleOutput;
        addView(canvasSubtitleOutput);
        this.f26303h = 1;
    }
}
