package com.tangxiaolv.telegramgallery.Actionbar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;

/* compiled from: SimpleTextView.java */
/* loaded from: classes3.dex */
public class h extends View implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    private Layout f56059a;

    /* renamed from: b  reason: collision with root package name */
    private TextPaint f56060b;

    /* renamed from: c  reason: collision with root package name */
    private int f56061c;

    /* renamed from: d  reason: collision with root package name */
    private CharSequence f56062d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f56063e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f56064f;

    /* renamed from: g  reason: collision with root package name */
    private int f56065g;

    /* renamed from: h  reason: collision with root package name */
    private int f56066h;

    /* renamed from: i  reason: collision with root package name */
    private int f56067i;

    /* renamed from: j  reason: collision with root package name */
    private int f56068j;

    /* renamed from: k  reason: collision with root package name */
    private int f56069k;

    /* renamed from: l  reason: collision with root package name */
    private int f56070l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f56071m;

    /* renamed from: n  reason: collision with root package name */
    private final Point f56072n;

    public h(Context context) {
        super(context);
        this.f56061c = 51;
        this.f56065g = com.tangxiaolv.telegramgallery.Utils.a.g(4.0f);
        this.f56060b = new TextPaint(1);
        this.f56072n = com.tangxiaolv.telegramgallery.Utils.a.q();
    }

    private boolean a(int i4) {
        if (this.f56062d != null) {
            try {
                Drawable drawable = this.f56063e;
                int intrinsicWidth = drawable != null ? (i4 - drawable.getIntrinsicWidth()) - this.f56065g : i4;
                Drawable drawable2 = this.f56064f;
                if (drawable2 != null) {
                    intrinsicWidth = (intrinsicWidth - drawable2.getIntrinsicWidth()) - this.f56065g;
                }
                int paddingLeft = intrinsicWidth - (getPaddingLeft() + getPaddingRight());
                CharSequence ellipsize = TextUtils.ellipsize(this.f56062d, this.f56060b, paddingLeft, TextUtils.TruncateAt.END);
                Layout layout = this.f56059a;
                if (layout != null && TextUtils.equals(layout.getText(), ellipsize)) {
                    return false;
                }
                StaticLayout staticLayout = new StaticLayout(ellipsize, 0, ellipsize.length(), this.f56060b, paddingLeft + com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.f56059a = staticLayout;
                if (staticLayout.getLineCount() > 0) {
                    this.f56069k = (int) Math.ceil(this.f56059a.getLineWidth(0));
                    this.f56070l = this.f56059a.getLineBottom(0);
                    if ((this.f56061c & 7) == 3) {
                        this.f56068j = -((int) this.f56059a.getLineLeft(0));
                    } else if (this.f56059a.getLineLeft(0) == 0.0f) {
                        this.f56068j = paddingLeft - this.f56069k;
                    } else {
                        this.f56068j = -com.tangxiaolv.telegramgallery.Utils.a.g(8.0f);
                    }
                }
            } catch (Exception unused) {
            }
        } else {
            this.f56059a = null;
            this.f56069k = 0;
            this.f56070l = 0;
        }
        invalidate();
        return true;
    }

    private boolean b() {
        if (this.f56071m) {
            return a(getMeasuredWidth());
        }
        requestLayout();
        return true;
    }

    public Paint getPaint() {
        return this.f56060b;
    }

    public int getSideDrawablesSize() {
        Drawable drawable = this.f56063e;
        int intrinsicWidth = drawable != null ? 0 + drawable.getIntrinsicWidth() + this.f56065g : 0;
        Drawable drawable2 = this.f56064f;
        return drawable2 != null ? intrinsicWidth + drawable2.getIntrinsicWidth() + this.f56065g : intrinsicWidth;
    }

    public CharSequence getText() {
        CharSequence charSequence = this.f56062d;
        return charSequence == null ? "" : charSequence;
    }

    public int getTextHeight() {
        return this.f56070l;
    }

    public int getTextWidth() {
        return this.f56069k;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = this.f56063e;
        if (drawable == drawable2) {
            invalidate(drawable2.getBounds());
            return;
        }
        Drawable drawable3 = this.f56064f;
        if (drawable == drawable3) {
            invalidate(drawable3.getBounds());
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f56071m = false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = this.f56063e;
        int i4 = 0;
        if (drawable != null) {
            int intrinsicHeight = ((this.f56070l - drawable.getIntrinsicHeight()) / 2) + this.f56066h;
            Drawable drawable2 = this.f56063e;
            drawable2.setBounds(0, intrinsicHeight, drawable2.getIntrinsicWidth(), this.f56063e.getIntrinsicHeight() + intrinsicHeight);
            this.f56063e.draw(canvas);
            if ((this.f56061c & 7) == 3) {
                i4 = 0 + this.f56065g + this.f56063e.getIntrinsicWidth();
            }
        }
        if (this.f56064f != null) {
            int i10 = this.f56065g;
            int i11 = this.f56069k + i4 + i10;
            Drawable drawable3 = this.f56063e;
            if (drawable3 != null) {
                i11 += i10 + drawable3.getIntrinsicWidth();
            }
            int intrinsicHeight2 = ((this.f56070l - this.f56064f.getIntrinsicHeight()) / 2) + this.f56067i;
            Drawable drawable4 = this.f56064f;
            drawable4.setBounds(i11, intrinsicHeight2, drawable4.getIntrinsicWidth() + i11, this.f56064f.getIntrinsicHeight() + intrinsicHeight2);
            this.f56064f.draw(canvas);
        }
        if ((this.f56061c & 17) == 17) {
            i4 = ((this.f56072n.x / 2) - getLeft()) - (this.f56069k / 2);
        }
        if (this.f56059a != null) {
            if (this.f56068j + i4 != 0) {
                canvas.save();
                canvas.translate(this.f56068j + i4, 0.0f);
            }
            this.f56059a.draw(canvas);
            if (this.f56068j + i4 != 0) {
                canvas.restore();
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        this.f56071m = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i10);
        a((size - getPaddingLeft()) - getPaddingRight());
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            size2 = this.f56070l;
        }
        setMeasuredDimension(size, size2);
    }

    public void setDrawablePadding(int i4) {
        if (this.f56065g == i4) {
            return;
        }
        this.f56065g = i4;
        if (b()) {
            return;
        }
        invalidate();
    }

    public void setGravity(int i4) {
        this.f56061c = i4;
    }

    public void setLeftDrawable(int i4) {
        setLeftDrawable(i4 == 0 ? null : getContext().getResources().getDrawable(i4));
    }

    public void setLeftDrawableTopPadding(int i4) {
        this.f56066h = i4;
    }

    public void setRightDrawable(int i4) {
        setRightDrawable(i4 == 0 ? null : getContext().getResources().getDrawable(i4));
    }

    public void setRightDrawableTopPadding(int i4) {
        this.f56067i = i4;
    }

    public void setText(CharSequence charSequence) {
        CharSequence charSequence2 = this.f56062d;
        if (charSequence2 == null && charSequence == null) {
            return;
        }
        if (charSequence2 == null || charSequence == null || !charSequence2.equals(charSequence)) {
            this.f56062d = charSequence;
            b();
        }
    }

    public void setTextColor(int i4) {
        this.f56060b.setColor(i4);
        invalidate();
    }

    public void setTextSize(int i4) {
        float g4 = com.tangxiaolv.telegramgallery.Utils.a.g(i4);
        if (g4 == this.f56060b.getTextSize()) {
            return;
        }
        this.f56060b.setTextSize(g4);
        if (b()) {
            return;
        }
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        this.f56060b.setTypeface(typeface);
    }

    public void setLeftDrawable(Drawable drawable) {
        Drawable drawable2 = this.f56063e;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f56063e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (b()) {
            return;
        }
        invalidate();
    }

    public void setRightDrawable(Drawable drawable) {
        Drawable drawable2 = this.f56064f;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f56064f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (b()) {
            return;
        }
        invalidate();
    }
}
