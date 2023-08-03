package com.lljjcoder.style.citylist.sortlistview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import com.lljjcoder.style.citypickerview.R;

/* loaded from: classes3.dex */
public class SideBar extends View {

    /* renamed from: b  reason: collision with root package name */
    public static String[] f46914b = {ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z", "#"};
    private int choose;
    private TextView mTextDialog;
    private OnTouchingLetterChangedListener onTouchingLetterChangedListener;
    private Paint paint;

    /* loaded from: classes3.dex */
    public interface OnTouchingLetterChangedListener {
        void onTouchingLetterChanged(String str);
    }

    public SideBar(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.choose = -1;
        this.paint = new Paint();
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        float y9 = motionEvent.getY();
        int i4 = this.choose;
        OnTouchingLetterChangedListener onTouchingLetterChangedListener = this.onTouchingLetterChangedListener;
        int height = (int) ((y9 / getHeight()) * f46914b.length);
        if (action != 1) {
            setBackgroundResource(R.drawable.sidebar_background);
            if (i4 != height && height >= 0) {
                String[] strArr = f46914b;
                if (height < strArr.length) {
                    if (onTouchingLetterChangedListener != null) {
                        onTouchingLetterChangedListener.onTouchingLetterChanged(strArr[height]);
                    }
                    TextView textView = this.mTextDialog;
                    if (textView != null) {
                        textView.setText(f46914b[height]);
                        this.mTextDialog.setVisibility(0);
                    }
                    this.choose = height;
                    invalidate();
                }
            }
        } else {
            setBackgroundDrawable(new ColorDrawable(0));
            this.choose = -1;
            invalidate();
            TextView textView2 = this.mTextDialog;
            if (textView2 != null) {
                textView2.setVisibility(4);
            }
        }
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int width = getWidth();
        int length = height / f46914b.length;
        for (int i4 = 0; i4 < f46914b.length; i4++) {
            this.paint.setColor(Color.rgb(33, 65, 98));
            this.paint.setTypeface(Typeface.DEFAULT_BOLD);
            this.paint.setAntiAlias(true);
            this.paint.setTextSize(20.0f);
            if (i4 == this.choose) {
                this.paint.setColor(Color.parseColor("#000000"));
                this.paint.setFakeBoldText(true);
            }
            canvas.drawText(f46914b[i4], (width / 2) - (this.paint.measureText(f46914b[i4]) / 2.0f), (length * i4) + length, this.paint);
            this.paint.reset();
        }
    }

    public void setOnTouchingLetterChangedListener(OnTouchingLetterChangedListener onTouchingLetterChangedListener) {
        this.onTouchingLetterChangedListener = onTouchingLetterChangedListener;
    }

    public void setTextView(TextView textView) {
        this.mTextDialog = textView;
    }

    public SideBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.choose = -1;
        this.paint = new Paint();
    }

    public SideBar(Context context) {
        super(context);
        this.choose = -1;
        this.paint = new Paint();
    }
}
