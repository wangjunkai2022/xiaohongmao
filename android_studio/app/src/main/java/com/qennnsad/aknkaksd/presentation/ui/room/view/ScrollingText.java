package com.qennnsad.aknkaksd.presentation.ui.room.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.qennnsad.aknkaksd.g;
import com.qennnsad.aknkaksd.util.o0;
import java.text.MessageFormat;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class ScrollingText extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f54297a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f54298b;

    /* renamed from: c  reason: collision with root package name */
    private int f54299c;

    /* renamed from: d  reason: collision with root package name */
    private int f54300d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54301e;

    /* renamed from: f  reason: collision with root package name */
    private String f54302f;

    /* renamed from: g  reason: collision with root package name */
    private int f54303g;

    /* renamed from: h  reason: collision with root package name */
    private float f54304h;

    /* renamed from: i  reason: collision with root package name */
    private int f54305i;

    /* renamed from: j  reason: collision with root package name */
    private String f54306j;

    /* renamed from: k  reason: collision with root package name */
    private int f54307k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54308l;

    /* renamed from: m  reason: collision with root package name */
    private int f54309m;

    /* renamed from: n  reason: collision with root package name */
    private int f54310n;

    /* renamed from: o  reason: collision with root package name */
    private final Handler f54311o;

    /* loaded from: classes3.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(3000L);
                ScrollingText.this.f54311o.sendEmptyMessage(273);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 273) {
                ScrollingText scrollingText = ScrollingText.this;
                scrollingText.postInvalidateDelayed(scrollingText.f54305i);
            }
        }
    }

    public ScrollingText(Context context) {
        super(context);
        this.f54297a = 0;
        this.f54308l = true;
        this.f54309m = 0;
        this.f54310n = 0;
        this.f54311o = new b(Looper.myLooper());
        d();
    }

    private int c(int i4, int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? i4 : size;
        }
        return Math.min(size, i4);
    }

    private void d() {
        Paint paint = new Paint();
        paint.setColor(this.f54303g);
        paint.setTextSize(this.f54304h);
        this.f54298b = paint;
        Rect rect = new Rect();
        Paint paint2 = this.f54298b;
        String str = this.f54302f;
        paint2.getTextBounds(str, 0, str.length(), rect);
        this.f54299c = rect.width();
        o0.g("Scrollingtext0", "startdrawx-out:" + this.f54297a + "---textwidth:" + this.f54299c);
        this.f54300d = rect.height();
        this.f54307k = 10;
        if (this.f54299c >= getMeasuredWidth()) {
            this.f54301e = true;
        } else {
            this.f54301e = false;
        }
    }

    public void e(String str, int i4) {
        this.f54302f = str;
        if (i4 != 0) {
            this.f54303g = i4;
        }
        d();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i4;
        int i10;
        super.onDraw(canvas);
        if (this.f54308l) {
            int height = (int) ((canvas.getHeight() / 2) - ((this.f54298b.descent() + this.f54298b.ascent()) / 2.0f));
            this.f54310n = height;
            this.f54309m = height;
        }
        if ("horizontal".equals(this.f54306j)) {
            if (this.f54301e) {
                int i11 = this.f54297a;
                int i12 = this.f54299c;
                if (i11 < (-i12)) {
                    this.f54297a = this.f54307k;
                }
                if (this.f54297a < (-(i12 - getMeasuredWidth()))) {
                    canvas.drawText(this.f54302f, this.f54299c + i10 + this.f54307k, this.f54309m, this.f54298b);
                }
                canvas.drawText(this.f54302f, this.f54297a, this.f54309m, this.f54298b);
                postInvalidate();
                this.f54297a -= 4;
                return;
            }
            if (this.f54297a < (-this.f54299c)) {
                this.f54297a = getMeasuredWidth() - this.f54299c;
            }
            if (this.f54297a < 0) {
                canvas.drawText(this.f54302f, getMeasuredWidth() + i4, this.f54309m, this.f54298b);
            }
            canvas.drawText(this.f54302f, this.f54297a, this.f54309m, this.f54298b);
            postInvalidate();
            this.f54297a -= 4;
        } else if ("vertical".equals(this.f54306j)) {
            int width = (canvas.getWidth() / 2) - (this.f54299c / 2);
            int i13 = this.f54309m;
            int i14 = this.f54310n;
            if (i13 >= i14 - 10 && i13 <= i14 + 10) {
                canvas.drawText(this.f54302f, width, i14, this.f54298b);
                new a().start();
            } else {
                canvas.drawText(this.f54302f, width, i13, this.f54298b);
                postInvalidateDelayed(this.f54305i);
            }
            int i15 = this.f54309m + 10;
            this.f54309m = i15;
            if (i15 > getMeasuredHeight() + this.f54300d) {
                this.f54309m = 0;
            }
            this.f54308l = false;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        setMeasuredDimension(c(this.f54299c, i4), c(this.f54300d, i10));
        this.f54301e = this.f54299c >= getMeasuredWidth();
        String str = this.f54306j;
        if (str == null || "".equals(str)) {
            this.f54306j = "horizontal";
        }
    }

    public void setText(String str) {
        this.f54302f = str;
        d();
    }

    public void setTextList(List<String> list) {
        Collections.shuffle(list);
        for (int i4 = 0; i4 < list.size(); i4++) {
            this.f54302f = MessageFormat.format("{0}{1}\u3000\u3000\u3000\u3000", this.f54302f, list.get(i4));
        }
        d();
    }

    public ScrollingText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54297a = 0;
        this.f54308l = true;
        this.f54309m = 0;
        this.f54310n = 0;
        this.f54311o = new b(Looper.myLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.u.BB);
        this.f54303g = obtainStyledAttributes.getColor(3, ViewCompat.MEASURED_STATE_MASK);
        this.f54304h = obtainStyledAttributes.getDimension(4, 16.0f);
        this.f54305i = obtainStyledAttributes.getInteger(1, 5);
        this.f54302f = obtainStyledAttributes.getString(2);
        this.f54306j = obtainStyledAttributes.getString(0);
        d();
    }
}
