package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.core.widget.PopupWindowCompat;

/* loaded from: classes.dex */
class AppCompatPopupWindow extends PopupWindow {
    private static final boolean COMPAT_OVERLAP_ANCHOR = false;
    private boolean mOverlapAnchor;

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i4) {
        super(context, attributeSet, i4);
        init(context, attributeSet, i4, 0);
    }

    private void init(Context context, AttributeSet attributeSet, int i4, int i10) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.PopupWindow, i4, i10);
        int i11 = R.styleable.PopupWindow_overlapAnchor;
        if (obtainStyledAttributes.hasValue(i11)) {
            setSupportOverlapAnchor(obtainStyledAttributes.getBoolean(i11, false));
        }
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(R.styleable.PopupWindow_android_popupBackground));
        obtainStyledAttributes.recycle();
    }

    private void setSupportOverlapAnchor(boolean z9) {
        if (COMPAT_OVERLAP_ANCHOR) {
            this.mOverlapAnchor = z9;
        } else {
            PopupWindowCompat.setOverlapAnchor(this, z9);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i4, int i10) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            i10 -= view.getHeight();
        }
        super.showAsDropDown(view, i4, i10);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i4, int i10, int i11, int i12) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            i10 -= view.getHeight();
        }
        super.update(view, i4, i10, i11, i12);
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i4, @StyleRes int i10) {
        super(context, attributeSet, i4, i10);
        init(context, attributeSet, i4, i10);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i4, int i10, int i11) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            i10 -= view.getHeight();
        }
        super.showAsDropDown(view, i4, i10, i11);
    }
}
