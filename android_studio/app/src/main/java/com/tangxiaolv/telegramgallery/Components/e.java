package com.tangxiaolv.telegramgallery.Components;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.timepicker.TimeModel;
import com.tangxiaolv.telegramgallery.Utils.g;
import com.tangxiaolv.telegramgallery.q;

/* compiled from: PhotoPickerAlbumsCell.java */
/* loaded from: classes3.dex */
public class e extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private b[] f56192a;

    /* renamed from: b  reason: collision with root package name */
    private g.d[] f56193b;

    /* renamed from: c  reason: collision with root package name */
    private int f56194c;

    /* renamed from: d  reason: collision with root package name */
    private c f56195d;

    /* compiled from: PhotoPickerAlbumsCell.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (e.this.f56195d != null) {
                e.this.f56195d.a(e.this.f56193b[((Integer) view.getTag()).intValue()]);
            }
        }
    }

    /* compiled from: PhotoPickerAlbumsCell.java */
    /* loaded from: classes3.dex */
    private class b extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        private BackupImageView f56197a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f56198b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f56199c;

        /* renamed from: d  reason: collision with root package name */
        private View f56200d;

        public b(Context context) {
            super(context);
            BackupImageView backupImageView = new BackupImageView(context);
            this.f56197a = backupImageView;
            addView(backupImageView, com.tangxiaolv.telegramgallery.Utils.f.a(-1, -1.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.setBackgroundColor(2130706432);
            addView(linearLayout, com.tangxiaolv.telegramgallery.Utils.f.c(-1, 28, 83));
            TextView textView = new TextView(context);
            this.f56198b = textView;
            textView.setTextSize(1, 13.0f);
            this.f56198b.setTextColor(-1);
            this.f56198b.setSingleLine(true);
            this.f56198b.setEllipsize(TextUtils.TruncateAt.END);
            this.f56198b.setMaxLines(1);
            this.f56198b.setGravity(16);
            linearLayout.addView(this.f56198b, com.tangxiaolv.telegramgallery.Utils.f.h(0, -1, 1.0f, 8, 0, 0, 0));
            TextView textView2 = new TextView(context);
            this.f56199c = textView2;
            textView2.setTextSize(1, 13.0f);
            this.f56199c.setTextColor(-5592406);
            this.f56199c.setSingleLine(true);
            this.f56199c.setEllipsize(TextUtils.TruncateAt.END);
            this.f56199c.setMaxLines(1);
            this.f56199c.setGravity(16);
            linearLayout.addView(this.f56199c, com.tangxiaolv.telegramgallery.Utils.f.f(-2, -1, 4.0f, 0.0f, 4.0f, 0.0f));
            View view = new View(context);
            this.f56200d = view;
            view.setBackgroundResource(q.h.Y1);
            addView(this.f56200d, com.tangxiaolv.telegramgallery.Utils.f.a(-1, -1.0f));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            this.f56200d.drawableHotspotChanged(motionEvent.getX(), motionEvent.getY());
            return super.onTouchEvent(motionEvent);
        }
    }

    /* compiled from: PhotoPickerAlbumsCell.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a(g.d dVar);
    }

    public e(Context context) {
        super(context);
        this.f56193b = new g.d[4];
        this.f56192a = new b[4];
        for (int i4 = 0; i4 < 4; i4++) {
            this.f56192a[i4] = new b(context);
            addView(this.f56192a[i4]);
            this.f56192a[i4].setVisibility(4);
            this.f56192a[i4].setTag(Integer.valueOf(i4));
            this.f56192a[i4].setOnClickListener(new a());
        }
    }

    public void c(int i4, g.d dVar) {
        this.f56193b[i4] = dVar;
        if (dVar != null) {
            b bVar = this.f56192a[i4];
            bVar.f56197a.j(0, true);
            g.k kVar = dVar.f56638c;
            if (kVar != null && kVar.f56658e != null) {
                bVar.f56197a.j(dVar.f56638c.f56659f, true);
                if (dVar.f56638c.f56662i) {
                    BackupImageView backupImageView = bVar.f56197a;
                    backupImageView.i("vthumb://" + dVar.f56638c.f56656c + ":" + dVar.f56638c.f56658e, null, getContext().getResources().getDrawable(q.h.f57756w2));
                } else {
                    BackupImageView backupImageView2 = bVar.f56197a;
                    backupImageView2.i("thumb://" + dVar.f56638c.f56656c + ":" + dVar.f56638c.f56658e, null, getContext().getResources().getDrawable(q.h.f57756w2));
                }
            } else {
                bVar.f56197a.setImageResource(q.h.f57756w2);
            }
            bVar.f56198b.setText(dVar.f56637b);
            bVar.f56199c.setText(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(dVar.f56639d.size())));
            return;
        }
        this.f56192a[i4].setVisibility(4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        int g4;
        if (com.tangxiaolv.telegramgallery.Utils.a.z()) {
            g4 = (com.tangxiaolv.telegramgallery.Utils.a.g(490.0f) - ((this.f56194c + 1) * com.tangxiaolv.telegramgallery.Utils.a.g(4.0f))) / this.f56194c;
        } else {
            g4 = (com.tangxiaolv.telegramgallery.Utils.a.f56375d.x - ((this.f56194c + 1) * com.tangxiaolv.telegramgallery.Utils.a.g(4.0f))) / this.f56194c;
        }
        for (int i11 = 0; i11 < this.f56194c; i11++) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f56192a[i11].getLayoutParams();
            layoutParams.topMargin = com.tangxiaolv.telegramgallery.Utils.a.g(4.0f);
            layoutParams.leftMargin = (com.tangxiaolv.telegramgallery.Utils.a.g(4.0f) + g4) * i11;
            layoutParams.width = g4;
            layoutParams.height = g4;
            layoutParams.gravity = 51;
            this.f56192a[i11].setLayoutParams(layoutParams);
        }
        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(com.tangxiaolv.telegramgallery.Utils.a.g(4.0f) + g4, 1073741824));
    }

    public void setAlbumsCount(int i4) {
        int i10 = 0;
        while (true) {
            b[] bVarArr = this.f56192a;
            if (i10 < bVarArr.length) {
                bVarArr[i10].setVisibility(i10 < i4 ? 0 : 4);
                i10++;
            } else {
                this.f56194c = i4;
                return;
            }
        }
    }

    public void setDelegate(c cVar) {
        this.f56195d = cVar;
    }
}
