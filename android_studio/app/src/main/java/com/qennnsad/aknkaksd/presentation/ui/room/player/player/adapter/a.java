package com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import m8.g;

/* compiled from: DotsIndicatorDecoration.java */
/* loaded from: classes3.dex */
public class a extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private final int f53806a;

    /* renamed from: b  reason: collision with root package name */
    private final int f53807b;

    /* renamed from: c  reason: collision with root package name */
    private final int f53808c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f53809d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint f53810e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f53811f;

    /* renamed from: g  reason: collision with root package name */
    private int f53812g;

    /* renamed from: h  reason: collision with root package name */
    private int f53813h;

    public a(int i4, int i10, int i11, @ColorInt int i12, @ColorInt int i13) {
        Paint paint = new Paint();
        this.f53809d = paint;
        Paint paint2 = new Paint();
        this.f53810e = paint2;
        float f10 = Resources.getSystem().getDisplayMetrics().density * 1.0f;
        this.f53808c = i4;
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(f10);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i12);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        paint2.setStrokeWidth(f10);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setAntiAlias(true);
        paint2.setColor(i13);
        this.f53807b = i10;
        this.f53806a = i11;
    }

    private void a(Canvas canvas, float f10, float f11, int i4) {
        int i10 = this.f53808c;
        canvas.drawCircle(f10 + i10 + (((i10 * 2) + this.f53807b) * i4), f11, i10, this.f53810e);
    }

    private void b(Canvas canvas, float f10, float f11, int i4) {
        int i10 = this.f53808c;
        float f12 = (i10 * 2) + this.f53807b;
        float f13 = f10 + i10;
        for (int i11 = 0; i11 < i4; i11++) {
            canvas.drawCircle(f13, f11, this.f53808c, this.f53809d);
            f13 += f12;
        }
    }

    private int c(@g RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager() instanceof GridLayoutManager) {
            return ((GridLayoutManager) recyclerView.getLayoutManager()).findFirstCompletelyVisibleItemPosition();
        }
        if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstCompletelyVisibleItemPosition();
        }
        return -1;
    }

    private int d(@g RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager() instanceof GridLayoutManager) {
            return ((GridLayoutManager) recyclerView.getLayoutManager()).findLastCompletelyVisibleItemPosition();
        }
        if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) recyclerView.getLayoutManager()).findLastCompletelyVisibleItemPosition();
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@g Rect rect, @g View view, @g RecyclerView recyclerView, @g RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        rect.bottom = this.f53806a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(@g Canvas canvas, @g RecyclerView recyclerView, @g RecyclerView.State state) {
        super.onDrawOver(canvas, recyclerView, state);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter == null) {
            return;
        }
        if (!this.f53811f) {
            this.f53813h = (d(recyclerView) - c(recyclerView)) + 1;
            this.f53812g = adapter.getItemCount() / this.f53813h;
            this.f53811f = true;
        }
        int i4 = this.f53812g;
        float width = (recyclerView.getWidth() - (((this.f53808c * 2) * i4) + (Math.max(0, i4 - 1) * this.f53807b))) / 2.0f;
        float height = recyclerView.getHeight() - (this.f53806a / 2.0f);
        b(canvas, width, height, this.f53812g);
        int d4 = d(recyclerView) / this.f53813h;
        if (d4 <= -1) {
            return;
        }
        a(canvas, width, height, d4);
    }
}
