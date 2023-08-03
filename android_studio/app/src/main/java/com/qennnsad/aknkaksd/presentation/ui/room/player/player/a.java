package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: CutOffDecorator.java */
/* loaded from: classes3.dex */
public class a extends RecyclerView.ItemDecoration {
    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        for (int i4 = 0; i4 < recyclerView.getChildCount(); i4++) {
            View childAt = recyclerView.getChildAt(i4);
            if (childAt.getTop() + ((childAt.getHeight() * 3) / 4) < recyclerView.getTop()) {
                childAt.setVisibility(4);
            } else {
                childAt.setVisibility(0);
            }
        }
    }
}
