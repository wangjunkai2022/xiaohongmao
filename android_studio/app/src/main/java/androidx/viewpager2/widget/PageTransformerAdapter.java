package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {
    private final LinearLayoutManager mLayoutManager;
    private ViewPager2.PageTransformer mPageTransformer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewPager2.PageTransformer getPageTransformer() {
        return this.mPageTransformer;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i4) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i4, float f10, int i10) {
        if (this.mPageTransformer == null) {
            return;
        }
        float f11 = -f10;
        for (int i11 = 0; i11 < this.mLayoutManager.getChildCount(); i11++) {
            View childAt = this.mLayoutManager.getChildAt(i11);
            if (childAt != null) {
                this.mPageTransformer.transformPage(childAt, (this.mLayoutManager.getPosition(childAt) - i4) + f11);
            } else {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i11), Integer.valueOf(this.mLayoutManager.getChildCount())));
            }
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i4) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPageTransformer(@Nullable ViewPager2.PageTransformer pageTransformer) {
        this.mPageTransformer = pageTransformer;
    }
}
