package com.tangxiaolv.telegramgallery.Components;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tangxiaolv.telegramgallery.q;

/* compiled from: PhotoPickerSearchCell.java */
/* loaded from: classes3.dex */
public class g extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private c f56211a;

    /* compiled from: PhotoPickerSearchCell.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (g.this.f56211a != null) {
                g.this.f56211a.a(0);
            }
        }
    }

    /* compiled from: PhotoPickerSearchCell.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (g.this.f56211a != null) {
                g.this.f56211a.a(1);
            }
        }
    }

    /* compiled from: PhotoPickerSearchCell.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a(int i4);
    }

    /* compiled from: PhotoPickerSearchCell.java */
    /* loaded from: classes3.dex */
    private class d extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        private TextView f56214a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f56215b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f56216c;

        /* renamed from: d  reason: collision with root package name */
        private View f56217d;

        public d(Context context) {
            super(context);
            setBackgroundColor(-15066598);
            View view = new View(context);
            this.f56217d = view;
            view.setBackgroundResource(q.h.Y1);
            addView(this.f56217d, com.tangxiaolv.telegramgallery.Utils.f.a(-1, -1.0f));
            ImageView imageView = new ImageView(context);
            this.f56216c = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.f56216c, com.tangxiaolv.telegramgallery.Utils.f.c(48, 48, 51));
            TextView textView = new TextView(context);
            this.f56214a = textView;
            textView.setGravity(16);
            this.f56214a.setTextSize(1, 14.0f);
            this.f56214a.setTextColor(-1);
            this.f56214a.setSingleLine(true);
            this.f56214a.setEllipsize(TextUtils.TruncateAt.END);
            addView(this.f56214a, com.tangxiaolv.telegramgallery.Utils.f.b(-1, -2.0f, 51, 51.0f, 8.0f, 4.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.f56215b = textView2;
            textView2.setGravity(16);
            this.f56215b.setTextSize(1, 10.0f);
            this.f56215b.setTextColor(-10066330);
            this.f56215b.setSingleLine(true);
            this.f56215b.setEllipsize(TextUtils.TruncateAt.END);
            addView(this.f56215b, com.tangxiaolv.telegramgallery.Utils.f.b(-1, -2.0f, 51, 51.0f, 26.0f, 4.0f, 0.0f));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            this.f56217d.drawableHotspotChanged(motionEvent.getX(), motionEvent.getY());
            return super.onTouchEvent(motionEvent);
        }
    }

    public g(Context context, boolean z9) {
        super(context);
        setOrientation(0);
        d dVar = new d(context);
        dVar.f56214a.setText(q.o.f58250u);
        dVar.f56215b.setText(q.o.f58254v);
        dVar.f56216c.setImageResource(q.h.T2);
        addView(dVar);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) dVar.getLayoutParams();
        layoutParams.weight = 0.5f;
        layoutParams.topMargin = com.tangxiaolv.telegramgallery.Utils.a.g(4.0f);
        layoutParams.height = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        layoutParams.width = 0;
        dVar.setLayoutParams(layoutParams);
        dVar.setOnClickListener(new a());
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(0);
        addView(frameLayout);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams2.topMargin = com.tangxiaolv.telegramgallery.Utils.a.g(4.0f);
        layoutParams2.height = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        layoutParams2.width = com.tangxiaolv.telegramgallery.Utils.a.g(4.0f);
        frameLayout.setLayoutParams(layoutParams2);
        d dVar2 = new d(context);
        dVar2.f56214a.setText(q.o.f58242s);
        dVar2.f56215b.setText("GIPHY");
        dVar2.f56216c.setImageResource(q.h.S2);
        addView(dVar2);
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) dVar2.getLayoutParams();
        layoutParams3.weight = 0.5f;
        layoutParams3.topMargin = com.tangxiaolv.telegramgallery.Utils.a.g(4.0f);
        layoutParams3.height = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        layoutParams3.width = 0;
        dVar2.setLayoutParams(layoutParams3);
        if (z9) {
            dVar2.setOnClickListener(new b());
        } else {
            dVar2.setAlpha(0.5f);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(com.tangxiaolv.telegramgallery.Utils.a.g(52.0f), 1073741824));
    }

    public void setDelegate(c cVar) {
        this.f56211a = cVar;
    }
}
