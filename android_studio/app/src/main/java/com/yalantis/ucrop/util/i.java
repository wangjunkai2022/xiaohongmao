package com.yalantis.ucrop.util;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

/* compiled from: SelectedStateListDrawable.java */
/* loaded from: classes3.dex */
public class i extends StateListDrawable {

    /* renamed from: a  reason: collision with root package name */
    private int f61147a;

    public i(Drawable drawable, int i4) {
        this.f61147a = i4;
        addState(new int[]{16842913}, drawable);
        addState(new int[0], drawable);
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z9 = false;
        for (int i4 : iArr) {
            if (i4 == 16842913) {
                z9 = true;
            }
        }
        if (z9) {
            super.setColorFilter(this.f61147a, PorterDuff.Mode.SRC_ATOP);
        } else {
            super.clearColorFilter();
        }
        return super.onStateChange(iArr);
    }
}
