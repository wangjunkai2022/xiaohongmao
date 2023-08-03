package com.github.magiepooh.recycleritemdecoration;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;

/* compiled from: VerticalItemDecoration.java */
/* loaded from: classes2.dex */
public class e extends RecyclerView.ItemDecoration {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f20174d = {16843284};

    /* renamed from: a  reason: collision with root package name */
    private HashMap<Integer, Drawable> f20175a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f20176b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f20177c;

    /* compiled from: VerticalItemDecoration.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f20178a;

        /* renamed from: b  reason: collision with root package name */
        private HashMap<Integer, Drawable> f20179b = new HashMap<>();

        /* renamed from: c  reason: collision with root package name */
        private Drawable f20180c;

        /* renamed from: d  reason: collision with root package name */
        private Drawable f20181d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Context context) {
            this.f20178a = context;
        }

        public e a() {
            return new e(this.f20179b, this.f20180c, this.f20181d);
        }

        public a b(@DrawableRes int i4) {
            c(ContextCompat.getDrawable(this.f20178a, i4));
            return this;
        }

        public a c(Drawable drawable) {
            this.f20180c = drawable;
            return this;
        }

        public a d(@DrawableRes int i4) {
            e(ContextCompat.getDrawable(this.f20178a, i4));
            return this;
        }

        public a e(Drawable drawable) {
            this.f20181d = drawable;
            return this;
        }

        public a f(int i4) {
            TypedArray obtainStyledAttributes = this.f20178a.obtainStyledAttributes(e.f20174d);
            h(i4, obtainStyledAttributes.getDrawable(0));
            obtainStyledAttributes.recycle();
            return this;
        }

        public a g(int i4, @DrawableRes int i10) {
            this.f20179b.put(Integer.valueOf(i4), ContextCompat.getDrawable(this.f20178a, i10));
            return this;
        }

        public a h(int i4, Drawable drawable) {
            this.f20179b.put(Integer.valueOf(i4), drawable);
            return this;
        }
    }

    public e(HashMap<Integer, Drawable> hashMap, Drawable drawable, Drawable drawable2) {
        this.f20175a = hashMap;
        this.f20176b = drawable;
        this.f20177c = drawable2;
    }

    private boolean b(View view, RecyclerView recyclerView) {
        return recyclerView.getChildAdapterPosition(view) == 0;
    }

    private boolean c(View view, RecyclerView recyclerView) {
        return recyclerView.getChildAdapterPosition(view) == recyclerView.getAdapter().getItemCount() - 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        Drawable drawable;
        if (c(view, recyclerView)) {
            Drawable drawable2 = this.f20177c;
            if (drawable2 != null) {
                rect.bottom = drawable2.getIntrinsicHeight();
                return;
            }
            return;
        }
        Drawable drawable3 = this.f20175a.get(Integer.valueOf(recyclerView.getLayoutManager().getItemViewType(view)));
        if (drawable3 != null) {
            rect.bottom = drawable3.getIntrinsicHeight();
        }
        if (!b(view, recyclerView) || (drawable = this.f20176b) == null) {
            return;
        }
        rect.top = drawable.getIntrinsicHeight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int paddingLeft = recyclerView.getPaddingLeft();
        int width = recyclerView.getWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 <= childCount - 1; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            int itemViewType = recyclerView.getLayoutManager().getItemViewType(childAt);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            if (c(childAt, recyclerView)) {
                if (this.f20177c != null) {
                    int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    this.f20177c.setBounds(paddingLeft, bottom, width, this.f20177c.getIntrinsicHeight() + bottom);
                    this.f20177c.draw(canvas);
                    return;
                }
                return;
            }
            Drawable drawable = this.f20175a.get(Integer.valueOf(itemViewType));
            if (drawable != null) {
                int bottom2 = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                drawable.setBounds(paddingLeft, bottom2, width, drawable.getIntrinsicHeight() + bottom2);
                drawable.draw(canvas);
            }
            if (b(childAt, recyclerView) && this.f20176b != null) {
                int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                this.f20176b.setBounds(paddingLeft, top - this.f20176b.getIntrinsicHeight(), width, top);
                this.f20176b.draw(canvas);
            }
        }
    }
}
