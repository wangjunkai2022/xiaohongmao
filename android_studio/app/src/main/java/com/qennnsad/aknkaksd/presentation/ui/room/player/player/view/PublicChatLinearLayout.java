package com.qennnsad.aknkaksd.presentation.ui.room.player.player.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.qennnsad.aknkaksd.util.o0;

/* loaded from: classes3.dex */
public class PublicChatLinearLayout extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f54026a;

    /* renamed from: b  reason: collision with root package name */
    private int f54027b;

    public PublicChatLinearLayout(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int x9 = (int) motionEvent.getX();
        int y9 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z9 = true;
        z9 = (action == 0 || action == 1 || action != 2) ? false : false;
        this.f54026a = x9;
        this.f54027b = y9;
        o0.g("viewintercept", "pubchat---intercept:" + z9);
        return z9;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public PublicChatLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PublicChatLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
