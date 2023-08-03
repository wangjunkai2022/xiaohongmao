package com.zhy.view.flowlayout;

import android.content.Context;
import android.view.View;
import android.widget.Checkable;
import android.widget.FrameLayout;

/* compiled from: TagView.java */
/* loaded from: classes3.dex */
public class d extends FrameLayout implements Checkable {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f61852b = {16842912};

    /* renamed from: a  reason: collision with root package name */
    private boolean f61853a;

    public d(Context context) {
        super(context);
    }

    public View getTagView() {
        return getChildAt(0);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f61853a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 1);
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f61852b);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z9) {
        if (this.f61853a != z9) {
            this.f61853a = z9;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f61853a);
    }
}
