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
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;

/* compiled from: HorizontalItemDecoration.java */
/* loaded from: classes2.dex */
public class b extends RecyclerView.ItemDecoration {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f20146d = {16843284};

    /* renamed from: a  reason: collision with root package name */
    private HashMap<Integer, Drawable> f20147a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f20148b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f20149c;

    /* compiled from: HorizontalItemDecoration.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f20150a;

        /* renamed from: b  reason: collision with root package name */
        private HashMap<Integer, Drawable> f20151b = new HashMap<>();

        /* renamed from: c  reason: collision with root package name */
        private Drawable f20152c;

        /* renamed from: d  reason: collision with root package name */
        private Drawable f20153d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Context context) {
            this.f20150a = context;
        }

        public b a() {
            return new b(this.f20151b, this.f20152c, this.f20153d);
        }

        public a b(@DrawableRes int i4) {
            c(ContextCompat.getDrawable(this.f20150a, i4));
            return this;
        }

        public a c(Drawable drawable) {
            this.f20152c = drawable;
            return this;
        }

        public a d(@DrawableRes int i4) {
            e(ContextCompat.getDrawable(this.f20150a, i4));
            return this;
        }

        public a e(Drawable drawable) {
            this.f20153d = drawable;
            return this;
        }

        public a f(int i4) {
            TypedArray obtainStyledAttributes = this.f20150a.obtainStyledAttributes(b.f20146d);
            h(i4, obtainStyledAttributes.getDrawable(0));
            obtainStyledAttributes.recycle();
            return this;
        }

        public a g(int i4, @DrawableRes int i10) {
            this.f20151b.put(Integer.valueOf(i4), ContextCompat.getDrawable(this.f20150a, i10));
            return this;
        }

        public a h(int i4, Drawable drawable) {
            this.f20151b.put(Integer.valueOf(i4), drawable);
            return this;
        }
    }

    public b(HashMap<Integer, Drawable> hashMap, Drawable drawable, Drawable drawable2) {
        this.f20147a = hashMap;
        this.f20148b = drawable;
        this.f20149c = drawable2;
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
        boolean reverseLayout = ((LinearLayoutManager) recyclerView.getLayoutManager()).getReverseLayout();
        if (c(view, recyclerView)) {
            Drawable drawable2 = this.f20149c;
            if (drawable2 != null) {
                if (reverseLayout) {
                    rect.left = drawable2.getIntrinsicWidth();
                    return;
                } else {
                    rect.right = drawable2.getIntrinsicWidth();
                    return;
                }
            }
            return;
        }
        Drawable drawable3 = this.f20147a.get(Integer.valueOf(recyclerView.getLayoutManager().getItemViewType(view)));
        if (drawable3 != null) {
            if (reverseLayout) {
                rect.left = drawable3.getIntrinsicWidth();
            } else {
                rect.right = drawable3.getIntrinsicWidth();
            }
        }
        if (!b(view, recyclerView) || (drawable = this.f20148b) == null) {
            return;
        }
        if (reverseLayout) {
            rect.right = drawable.getIntrinsicWidth();
        } else {
            rect.left = drawable.getIntrinsicWidth();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int right;
        int intrinsicWidth;
        int left;
        int intrinsicWidth2;
        int right2;
        int intrinsicWidth3;
        int paddingTop = recyclerView.getPaddingTop();
        int height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
        boolean reverseLayout = ((LinearLayoutManager) recyclerView.getLayoutManager()).getReverseLayout();
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 <= childCount - 1; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            int itemViewType = recyclerView.getLayoutManager().getItemViewType(childAt);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            if (c(childAt, recyclerView)) {
                if (this.f20149c != null) {
                    if (reverseLayout) {
                        intrinsicWidth = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        right = intrinsicWidth - this.f20149c.getIntrinsicWidth();
                    } else {
                        right = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + childAt.getRight();
                        intrinsicWidth = this.f20149c.getIntrinsicWidth() + right;
                    }
                    this.f20149c.setBounds(right, paddingTop, intrinsicWidth, height);
                    this.f20149c.draw(canvas);
                    return;
                }
                return;
            }
            Drawable drawable = this.f20147a.get(Integer.valueOf(itemViewType));
            if (drawable != null) {
                if (reverseLayout) {
                    intrinsicWidth3 = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    right2 = intrinsicWidth3 - drawable.getIntrinsicWidth();
                } else {
                    right2 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + childAt.getRight();
                    intrinsicWidth3 = drawable.getIntrinsicWidth() + right2;
                }
                drawable.setBounds(right2, paddingTop, intrinsicWidth3, height);
                drawable.draw(canvas);
            }
            if (b(childAt, recyclerView) && this.f20148b != null) {
                if (reverseLayout) {
                    intrinsicWidth2 = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    left = this.f20148b.getIntrinsicWidth() + intrinsicWidth2;
                } else {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    intrinsicWidth2 = left - this.f20148b.getIntrinsicWidth();
                }
                this.f20148b.setBounds(intrinsicWidth2, paddingTop, left, height);
                this.f20148b.draw(canvas);
            }
        }
    }
}
