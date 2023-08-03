package com.qennnsad.aknkaksd.presentation.ui.room.player.player.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.qennnsad.aknkaksd.util.o0;

/* loaded from: classes3.dex */
public class PubChatRecyclerView extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    private int f54024a;

    /* renamed from: b  reason: collision with root package name */
    private int f54025b;

    public PubChatRecyclerView(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int x9 = (int) motionEvent.getX();
        int y9 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 2 && motionEvent.getY() < 0.0f) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        this.f54024a = x9;
        this.f54025b = y9;
        o0.g("viewintercept", "pubchatrecyclerview---intercept:" + y9 + "--gettop:" + getTop());
        return super.dispatchTouchEvent(motionEvent);
    }

    public PubChatRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PubChatRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
