package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager.widget.ViewPager;
import iamutkarshtiwari.github.io.ananas.editimage.utils.d;

/* loaded from: classes3.dex */
public class CustomViewPager extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private boolean f69725a;

    public CustomViewPager(Context context) {
        super(context);
        this.f69725a = false;
    }

    @Override // android.view.View
    public void scrollTo(int i4, int i10) {
        if (this.f69725a) {
            super.scrollTo(i4, i10);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i4, boolean z9) {
        this.f69725a = true;
        super.setCurrentItem(i4, z9);
        this.f69725a = false;
    }

    public void setScanScroll(boolean z9) {
        this.f69725a = z9;
    }

    public CustomViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69725a = false;
        new d(this);
    }

    @Override // androidx.viewpager.widget.ViewPager, com.gigamole.infinitecycleviewpager.g
    public void setCurrentItem(int i4) {
        setCurrentItem(i4, false);
    }
}
