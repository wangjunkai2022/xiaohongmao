package com.qennnsad.aknkaksd.presentation.ui.room.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;

/* loaded from: classes3.dex */
public class AutoScrollTextView extends TextView implements View.OnClickListener {

    /* renamed from: j  reason: collision with root package name */
    public static final String f54281j = AutoScrollTextView.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private float f54282a;

    /* renamed from: b  reason: collision with root package name */
    private float f54283b;

    /* renamed from: c  reason: collision with root package name */
    private float f54284c;

    /* renamed from: d  reason: collision with root package name */
    private float f54285d;

    /* renamed from: e  reason: collision with root package name */
    private float f54286e;

    /* renamed from: f  reason: collision with root package name */
    private float f54287f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f54288g;

    /* renamed from: h  reason: collision with root package name */
    private Paint f54289h;

    /* renamed from: i  reason: collision with root package name */
    private String f54290i;

    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public boolean isStarting;
        public float step;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i4) {
                return new SavedState[i4];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            super.writeToParcel(parcel, i4);
            parcel.writeBooleanArray(new boolean[]{this.isStarting});
            parcel.writeFloat(this.step);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.isStarting = false;
            this.step = 0.0f;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.isStarting = false;
            this.step = 0.0f;
            parcel.readBooleanArray(null);
            this.step = parcel.readFloat();
        }
    }

    public AutoScrollTextView(Context context) {
        super(context);
        this.f54282a = 0.0f;
        this.f54283b = 0.0f;
        this.f54284c = 0.0f;
        this.f54285d = 0.0f;
        this.f54286e = 0.0f;
        this.f54287f = 0.0f;
        this.f54288g = false;
        this.f54289h = null;
        this.f54290i = "";
        b();
    }

    private void b() {
        setOnClickListener(this);
    }

    public void a(WindowManager windowManager) {
        TextPaint paint = getPaint();
        this.f54289h = paint;
        paint.setColor(Color.parseColor("#FFD700"));
        String charSequence = getText().toString();
        this.f54290i = charSequence;
        this.f54282a = this.f54289h.measureText(charSequence);
        float width = getWidth();
        this.f54283b = width;
        if (width == 0.0f && windowManager != null) {
            this.f54283b = windowManager.getDefaultDisplay().getWidth();
        }
        float f10 = this.f54282a;
        this.f54284c = f10;
        float f11 = this.f54283b;
        this.f54286e = f11 + f10;
        this.f54287f = f11 + (f10 * 2.0f);
        this.f54285d = getTextSize() + getPaddingTop();
    }

    public void c() {
        this.f54288g = true;
        invalidate();
    }

    public void d() {
        this.f54288g = false;
        invalidate();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f54288g) {
            d();
        } else {
            c();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.drawText(this.f54290i, this.f54286e - this.f54284c, this.f54285d, this.f54289h);
        if (this.f54288g) {
            float f10 = (float) (this.f54284c + 1.5d);
            this.f54284c = f10;
            if (f10 > this.f54287f) {
                this.f54284c = this.f54282a;
            }
            invalidate();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f54284c = savedState.step;
        this.f54288g = savedState.isStarting;
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.step = this.f54284c;
        savedState.isStarting = this.f54288g;
        return savedState;
    }

    public AutoScrollTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54282a = 0.0f;
        this.f54283b = 0.0f;
        this.f54284c = 0.0f;
        this.f54285d = 0.0f;
        this.f54286e = 0.0f;
        this.f54287f = 0.0f;
        this.f54288g = false;
        this.f54289h = null;
        this.f54290i = "";
        b();
    }

    public AutoScrollTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f54282a = 0.0f;
        this.f54283b = 0.0f;
        this.f54284c = 0.0f;
        this.f54285d = 0.0f;
        this.f54286e = 0.0f;
        this.f54287f = 0.0f;
        this.f54288g = false;
        this.f54289h = null;
        this.f54290i = "";
        b();
    }
}
