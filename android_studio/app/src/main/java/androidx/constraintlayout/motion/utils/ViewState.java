package androidx.constraintlayout.motion.utils;

import android.view.View;

/* loaded from: classes.dex */
public class ViewState {
    public int bottom;
    public int left;
    public int right;
    public float rotation;
    public int top;

    public void getState(View v9) {
        this.left = v9.getLeft();
        this.top = v9.getTop();
        this.right = v9.getRight();
        this.bottom = v9.getBottom();
        this.rotation = v9.getRotation();
    }

    public int height() {
        return this.bottom - this.top;
    }

    public int width() {
        return this.right - this.left;
    }
}
