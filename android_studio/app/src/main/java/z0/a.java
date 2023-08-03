package z0;

import android.graphics.drawable.Animatable;
import android.view.MotionEvent;
import r7.h;

/* compiled from: DraweeController.java */
@s7.d
/* loaded from: classes.dex */
public interface a {
    boolean b(a other);

    void c();

    void d(String contentDescription);

    void e();

    @h
    b f();

    Animatable g();

    String getContentDescription();

    void h(boolean isVisibleInViewportHint);

    void i(@h b hierarchy);

    boolean onTouchEvent(MotionEvent event);
}
