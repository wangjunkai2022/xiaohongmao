package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.view.View;

/* loaded from: classes.dex */
public interface ItemTouchUIUtil {
    void clearView(View view);

    void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f10, float f11, int i4, boolean z9);

    void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f10, float f11, int i4, boolean z9);

    void onSelected(View view);
}
