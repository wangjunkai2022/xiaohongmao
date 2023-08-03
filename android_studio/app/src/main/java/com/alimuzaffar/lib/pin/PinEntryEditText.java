package com.alimuzaffar.lib.pin;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.alimuzaffar.lib.pin.b;

/* loaded from: classes.dex */
public class PinEntryEditText extends AppCompatEditText {
    private static final String C = "http://schemas.android.com/apk/res/android";
    public static final String D = "●";
    protected int[] A;
    protected ColorStateList B;

    /* renamed from: a  reason: collision with root package name */
    protected String f5680a;

    /* renamed from: b  reason: collision with root package name */
    protected StringBuilder f5681b;

    /* renamed from: c  reason: collision with root package name */
    protected String f5682c;

    /* renamed from: d  reason: collision with root package name */
    protected int f5683d;

    /* renamed from: e  reason: collision with root package name */
    protected float f5684e;

    /* renamed from: f  reason: collision with root package name */
    protected float f5685f;

    /* renamed from: g  reason: collision with root package name */
    protected float f5686g;

    /* renamed from: h  reason: collision with root package name */
    protected float f5687h;

    /* renamed from: i  reason: collision with root package name */
    protected int f5688i;

    /* renamed from: j  reason: collision with root package name */
    protected RectF[] f5689j;

    /* renamed from: k  reason: collision with root package name */
    protected float[] f5690k;

    /* renamed from: l  reason: collision with root package name */
    protected Paint f5691l;

    /* renamed from: m  reason: collision with root package name */
    protected Paint f5692m;

    /* renamed from: n  reason: collision with root package name */
    protected Paint f5693n;

    /* renamed from: o  reason: collision with root package name */
    protected Drawable f5694o;

    /* renamed from: p  reason: collision with root package name */
    protected Rect f5695p;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f5696q;

    /* renamed from: r  reason: collision with root package name */
    protected View.OnClickListener f5697r;

    /* renamed from: s  reason: collision with root package name */
    protected i f5698s;

    /* renamed from: t  reason: collision with root package name */
    protected float f5699t;

    /* renamed from: u  reason: collision with root package name */
    protected float f5700u;

    /* renamed from: v  reason: collision with root package name */
    protected Paint f5701v;

    /* renamed from: w  reason: collision with root package name */
    protected boolean f5702w;

    /* renamed from: x  reason: collision with root package name */
    protected boolean f5703x;

    /* renamed from: y  reason: collision with root package name */
    protected ColorStateList f5704y;

    /* renamed from: z  reason: collision with root package name */
    protected int[][] f5705z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements ActionMode.Callback {
        a() {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PinEntryEditText pinEntryEditText = PinEntryEditText.this;
            pinEntryEditText.setSelection(pinEntryEditText.getText().length());
            View.OnClickListener onClickListener = PinEntryEditText.this.f5697r;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements View.OnLongClickListener {
        c() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            PinEntryEditText pinEntryEditText = PinEntryEditText.this;
            pinEntryEditText.setSelection(pinEntryEditText.getText().length());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            PinEntryEditText.this.f5692m.setTextSize(((Float) valueAnimator.getAnimatedValue()).floatValue());
            PinEntryEditText.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements Animator.AnimatorListener {
        e() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            PinEntryEditText pinEntryEditText = PinEntryEditText.this;
            pinEntryEditText.f5698s.a(pinEntryEditText.getText());
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f5711a;

        f(int i4) {
            this.f5711a = i4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            PinEntryEditText.this.f5690k[this.f5711a] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            PinEntryEditText.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements ValueAnimator.AnimatorUpdateListener {
        g() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            PinEntryEditText.this.f5692m.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements Animator.AnimatorListener {
        h() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            PinEntryEditText pinEntryEditText = PinEntryEditText.this;
            pinEntryEditText.f5698s.a(pinEntryEditText.getText());
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* loaded from: classes.dex */
    public interface i {
        void a(CharSequence charSequence);
    }

    public PinEntryEditText(Context context) {
        super(context);
        this.f5680a = null;
        this.f5681b = null;
        this.f5682c = null;
        this.f5683d = 0;
        this.f5684e = 24.0f;
        this.f5686g = 4.0f;
        this.f5687h = 8.0f;
        this.f5688i = 4;
        this.f5695p = new Rect();
        this.f5696q = false;
        this.f5698s = null;
        this.f5699t = 1.0f;
        this.f5700u = 2.0f;
        this.f5702w = false;
        this.f5703x = false;
        this.f5705z = new int[][]{new int[]{16842913}, new int[]{16842914}, new int[]{16842908}, new int[]{-16842908}};
        this.A = new int[]{-16711936, SupportMenu.CATEGORY_MASK, ViewCompat.MEASURED_STATE_MASK, -7829368};
        this.B = new ColorStateList(this.f5705z, this.A);
    }

    private void a(CharSequence charSequence, int i4) {
        float[] fArr = this.f5690k;
        fArr[i4] = this.f5689j[i4].bottom - this.f5687h;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr[i4] + getPaint().getTextSize(), this.f5690k[i4]);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new OvershootInterpolator());
        ofFloat.addUpdateListener(new f(i4));
        this.f5692m.setAlpha(255);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
        ofInt.setDuration(300L);
        ofInt.addUpdateListener(new g());
        AnimatorSet animatorSet = new AnimatorSet();
        if (charSequence.length() == this.f5688i && this.f5698s != null) {
            animatorSet.addListener(new h());
        }
        animatorSet.playTogether(ofFloat, ofInt);
        animatorSet.start();
    }

    private void b() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, getPaint().getTextSize());
        ofFloat.setDuration(200L);
        ofFloat.setInterpolator(new OvershootInterpolator());
        ofFloat.addUpdateListener(new d());
        if (getText().length() == this.f5688i && this.f5698s != null) {
            ofFloat.addListener(new e());
        }
        ofFloat.start();
    }

    private int d(int... iArr) {
        return this.B.getColorForState(iArr, -7829368);
    }

    private void e(Context context, AttributeSet attributeSet) {
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f5699t *= f10;
        this.f5700u *= f10;
        this.f5684e *= f10;
        this.f5687h = f10 * this.f5687h;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.l.f6352b6, 0, 0);
        try {
            TypedValue typedValue = new TypedValue();
            obtainStyledAttributes.getValue(b.l.f6362c6, typedValue);
            this.f5683d = typedValue.data;
            this.f5680a = obtainStyledAttributes.getString(b.l.f6390f6);
            this.f5682c = obtainStyledAttributes.getString(b.l.f6436k6);
            this.f5699t = obtainStyledAttributes.getDimension(b.l.f6417i6, this.f5699t);
            this.f5700u = obtainStyledAttributes.getDimension(b.l.f6426j6, this.f5700u);
            this.f5684e = obtainStyledAttributes.getDimension(b.l.f6399g6, this.f5684e);
            this.f5687h = obtainStyledAttributes.getDimension(b.l.f6446l6, this.f5687h);
            this.f5696q = obtainStyledAttributes.getBoolean(b.l.f6380e6, this.f5696q);
            this.f5694o = obtainStyledAttributes.getDrawable(b.l.f6371d6);
            ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(b.l.f6408h6);
            if (colorStateList != null) {
                this.B = colorStateList;
            }
            obtainStyledAttributes.recycle();
            this.f5691l = new Paint(getPaint());
            this.f5692m = new Paint(getPaint());
            this.f5693n = new Paint(getPaint());
            Paint paint = new Paint(getPaint());
            this.f5701v = paint;
            paint.setStrokeWidth(this.f5699t);
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(b.C0036b.A0, typedValue2, true);
            this.A[0] = typedValue2.data;
            this.A[1] = isInEditMode() ? -7829368 : ContextCompat.getColor(context, b.d.f5900j0);
            this.A[2] = isInEditMode() ? -7829368 : ContextCompat.getColor(context, b.d.f5900j0);
            setBackgroundResource(0);
            int attributeIntValue = attributeSet.getAttributeIntValue(C, "maxLength", 4);
            this.f5688i = attributeIntValue;
            this.f5686g = attributeIntValue;
            super.setCustomSelectionActionModeCallback(new a());
            super.setOnClickListener(new b());
            super.setOnLongClickListener(new c());
            if ((getInputType() & 128) == 128 && TextUtils.isEmpty(this.f5680a)) {
                this.f5680a = D;
            } else if ((getInputType() & 16) == 16 && TextUtils.isEmpty(this.f5680a)) {
                this.f5680a = D;
            }
            if (!TextUtils.isEmpty(this.f5680a)) {
                this.f5681b = getMaskChars();
            }
            getPaint().getTextBounds("|", 0, 1, this.f5695p);
            this.f5702w = this.f5683d > -1;
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private CharSequence getFullText() {
        if (TextUtils.isEmpty(this.f5680a)) {
            return getText();
        }
        return getMaskChars();
    }

    private StringBuilder getMaskChars() {
        if (this.f5681b == null) {
            this.f5681b = new StringBuilder();
        }
        int length = getText().length();
        while (this.f5681b.length() != length) {
            if (this.f5681b.length() < length) {
                this.f5681b.append(this.f5680a);
            } else {
                StringBuilder sb = this.f5681b;
                sb.deleteCharAt(sb.length() - 1);
            }
        }
        return this.f5681b;
    }

    private void setCustomTypeface(@Nullable Typeface typeface) {
        Paint paint = this.f5691l;
        if (paint != null) {
            paint.setTypeface(typeface);
            this.f5692m.setTypeface(typeface);
            this.f5693n.setTypeface(typeface);
            this.f5701v.setTypeface(typeface);
        }
    }

    public void c() {
        requestFocus();
        ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
    }

    public boolean f() {
        return this.f5703x;
    }

    protected void g(boolean z9) {
        if (this.f5703x) {
            this.f5701v.setColor(d(16842914));
        } else if (isFocused()) {
            this.f5701v.setStrokeWidth(this.f5700u);
            this.f5701v.setColor(d(16842908));
            if (z9) {
                this.f5701v.setColor(d(16842913));
            }
        } else {
            this.f5701v.setStrokeWidth(this.f5699t);
            this.f5701v.setColor(d(-16842908));
        }
    }

    protected void h(boolean z9, boolean z10) {
        if (this.f5703x) {
            this.f5694o.setState(new int[]{16842914});
        } else if (!isFocused()) {
            if (z9) {
                this.f5694o.setState(new int[]{-16842908, 16842912});
            } else {
                this.f5694o.setState(new int[]{-16842908});
            }
        } else {
            this.f5694o.setState(new int[]{16842908});
            if (z10) {
                this.f5694o.setState(new int[]{16842908, 16842913});
            } else if (z9) {
                this.f5694o.setState(new int[]{16842908, 16842912});
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        float f10;
        CharSequence fullText = getFullText();
        int length = fullText.length();
        float[] fArr = new float[length];
        getPaint().getTextWidths(fullText, 0, length, fArr);
        String str = this.f5682c;
        float f11 = 0.0f;
        if (str != null) {
            int length2 = str.length();
            float[] fArr2 = new float[length2];
            getPaint().getTextWidths(this.f5682c, fArr2);
            for (int i4 = 0; i4 < length2; i4++) {
                f11 += fArr2[i4];
            }
            f10 = f11;
        } else {
            f10 = 0.0f;
        }
        int i10 = 0;
        while (i10 < this.f5686g) {
            if (this.f5694o != null) {
                h(i10 < length, i10 == length);
                Drawable drawable = this.f5694o;
                RectF[] rectFArr = this.f5689j;
                drawable.setBounds((int) rectFArr[i10].left, (int) rectFArr[i10].top, (int) rectFArr[i10].right, (int) rectFArr[i10].bottom);
                this.f5694o.draw(canvas);
            }
            float f12 = this.f5689j[i10].left + (this.f5685f / 2.0f);
            if (length > i10) {
                if (this.f5702w && i10 == length - 1) {
                    canvas.drawText(fullText, i10, i10 + 1, f12 - (fArr[i10] / 2.0f), this.f5690k[i10], this.f5692m);
                } else {
                    canvas.drawText(fullText, i10, i10 + 1, f12 - (fArr[i10] / 2.0f), this.f5690k[i10], this.f5691l);
                }
            } else {
                String str2 = this.f5682c;
                if (str2 != null) {
                    canvas.drawText(str2, f12 - (f10 / 2.0f), this.f5690k[i10], this.f5693n);
                }
            }
            if (this.f5694o == null) {
                g(i10 <= length);
                RectF[] rectFArr2 = this.f5689j;
                canvas.drawLine(rectFArr2[i10].left, rectFArr2[i10].top, rectFArr2[i10].right, rectFArr2[i10].bottom, this.f5701v);
            }
            i10++;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i4, int i10) {
        int paddingLeft;
        float f10;
        float f11;
        float f12;
        int size;
        float f13;
        float f14;
        float f15;
        if (this.f5696q) {
            int mode = View.MeasureSpec.getMode(i4);
            int mode2 = View.MeasureSpec.getMode(i10);
            if (mode == 1073741824) {
                paddingLeft = View.MeasureSpec.getSize(i4);
                f10 = paddingLeft;
                f11 = this.f5686g;
                f12 = this.f5684e;
            } else {
                if (mode2 == 1073741824) {
                    size = View.MeasureSpec.getSize(i10);
                    f13 = this.f5686g;
                    f14 = size * f13;
                    f15 = this.f5684e;
                } else if (mode == Integer.MIN_VALUE) {
                    paddingLeft = View.MeasureSpec.getSize(i4);
                    f10 = paddingLeft;
                    f11 = this.f5686g;
                    f12 = this.f5684e;
                } else if (mode2 == Integer.MIN_VALUE) {
                    size = View.MeasureSpec.getSize(i10);
                    f13 = this.f5686g;
                    f14 = size * f13;
                    f15 = this.f5684e;
                } else {
                    paddingLeft = getPaddingLeft() + getPaddingRight() + getSuggestedMinimumWidth();
                    f10 = paddingLeft;
                    f11 = this.f5686g;
                    f12 = this.f5684e;
                }
                paddingLeft = (int) (f14 + ((f15 * f13) - 1.0f));
                setMeasuredDimension(EditText.resolveSizeAndState(paddingLeft, i4, 1), EditText.resolveSizeAndState(size, i10, 0));
                return;
            }
            size = (int) ((f10 - (f11 - (f12 * 1.0f))) / f11);
            setMeasuredDimension(EditText.resolveSizeAndState(paddingLeft, i4, 1), EditText.resolveSizeAndState(size, i10, 0));
            return;
        }
        super.onMeasure(i4, i10);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        int paddingStart;
        float f10;
        super.onSizeChanged(i4, i10, i11, i12);
        ColorStateList textColors = getTextColors();
        this.f5704y = textColors;
        if (textColors != null) {
            this.f5692m.setColor(textColors.getDefaultColor());
            this.f5691l.setColor(this.f5704y.getDefaultColor());
            this.f5693n.setColor(getCurrentHintTextColor());
        }
        int width = (getWidth() - ViewCompat.getPaddingEnd(this)) - ViewCompat.getPaddingStart(this);
        float f11 = this.f5684e;
        if (f11 < 0.0f) {
            this.f5685f = width / ((this.f5686g * 2.0f) - 1.0f);
        } else {
            float f12 = this.f5686g;
            this.f5685f = (width - (f11 * (f12 - 1.0f))) / f12;
        }
        float f13 = this.f5686g;
        this.f5689j = new RectF[(int) f13];
        this.f5690k = new float[(int) f13];
        int height = getHeight() - getPaddingBottom();
        int i13 = 1;
        if (ViewCompat.getLayoutDirection(this) == 1) {
            i13 = -1;
            paddingStart = (int) ((getWidth() - ViewCompat.getPaddingStart(this)) - this.f5685f);
        } else {
            paddingStart = ViewCompat.getPaddingStart(this);
        }
        for (int i14 = 0; i14 < this.f5686g; i14++) {
            float f14 = paddingStart;
            float f15 = height;
            this.f5689j[i14] = new RectF(f14, f15, this.f5685f + f14, f15);
            if (this.f5694o != null) {
                if (this.f5696q) {
                    this.f5689j[i14].top = getPaddingTop();
                    RectF[] rectFArr = this.f5689j;
                    rectFArr[i14].right = rectFArr[i14].width() + f14;
                } else {
                    this.f5689j[i14].top -= this.f5695p.height() + (this.f5687h * 2.0f);
                }
            }
            float f16 = this.f5684e;
            if (f16 < 0.0f) {
                f10 = f14 + (i13 * this.f5685f * 2.0f);
            } else {
                f10 = f14 + (i13 * (this.f5685f + f16));
            }
            paddingStart = (int) f10;
            this.f5690k[i14] = this.f5689j[i14].bottom - this.f5687h;
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        setError(false);
        if (this.f5689j != null && this.f5702w) {
            int i12 = this.f5683d;
            if (i12 == -1) {
                invalidate();
            } else if (i11 > i10) {
                if (i12 == 0) {
                    b();
                } else {
                    a(charSequence, i4);
                }
            }
        } else if (this.f5698s == null || charSequence.length() != this.f5688i) {
        } else {
            this.f5698s.a(charSequence);
        }
    }

    public void setAnimateText(boolean z9) {
        this.f5702w = z9;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        throw new RuntimeException("setCustomSelectionActionModeCallback() not supported.");
    }

    public void setError(boolean z9) {
        this.f5703x = z9;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setInputType(int i4) {
        super.setInputType(i4);
        if ((i4 & 128) != 128 && (i4 & 16) != 16) {
            setMask(null);
        } else if (TextUtils.isEmpty(this.f5680a)) {
            setMask(D);
        }
    }

    public void setMask(String str) {
        this.f5680a = str;
        this.f5681b = null;
        invalidate();
    }

    public void setMaxLength(int i4) {
        this.f5688i = i4;
        this.f5686g = i4;
        setFilters(new InputFilter[]{new InputFilter.LengthFilter(i4)});
        setText((CharSequence) null);
        invalidate();
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f5697r = onClickListener;
    }

    public void setOnPinEnteredListener(i iVar) {
        this.f5698s = iVar;
    }

    public void setPinBackground(Drawable drawable) {
        this.f5694o = drawable;
        invalidate();
    }

    public void setPinLineColors(ColorStateList colorStateList) {
        this.B = colorStateList;
        invalidate();
    }

    public void setSingleCharHint(String str) {
        this.f5682c = str;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setTypeface(@Nullable Typeface typeface) {
        super.setTypeface(typeface);
        setCustomTypeface(typeface);
    }

    @Override // android.widget.TextView
    public void setTypeface(@Nullable Typeface typeface, int i4) {
        super.setTypeface(typeface, i4);
        setCustomTypeface(typeface);
    }

    public PinEntryEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5680a = null;
        this.f5681b = null;
        this.f5682c = null;
        this.f5683d = 0;
        this.f5684e = 24.0f;
        this.f5686g = 4.0f;
        this.f5687h = 8.0f;
        this.f5688i = 4;
        this.f5695p = new Rect();
        this.f5696q = false;
        this.f5698s = null;
        this.f5699t = 1.0f;
        this.f5700u = 2.0f;
        this.f5702w = false;
        this.f5703x = false;
        this.f5705z = new int[][]{new int[]{16842913}, new int[]{16842914}, new int[]{16842908}, new int[]{-16842908}};
        this.A = new int[]{-16711936, SupportMenu.CATEGORY_MASK, ViewCompat.MEASURED_STATE_MASK, -7829368};
        this.B = new ColorStateList(this.f5705z, this.A);
        e(context, attributeSet);
    }

    public PinEntryEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f5680a = null;
        this.f5681b = null;
        this.f5682c = null;
        this.f5683d = 0;
        this.f5684e = 24.0f;
        this.f5686g = 4.0f;
        this.f5687h = 8.0f;
        this.f5688i = 4;
        this.f5695p = new Rect();
        this.f5696q = false;
        this.f5698s = null;
        this.f5699t = 1.0f;
        this.f5700u = 2.0f;
        this.f5702w = false;
        this.f5703x = false;
        this.f5705z = new int[][]{new int[]{16842913}, new int[]{16842914}, new int[]{16842908}, new int[]{-16842908}};
        this.A = new int[]{-16711936, SupportMenu.CATEGORY_MASK, ViewCompat.MEASURED_STATE_MASK, -7829368};
        this.B = new ColorStateList(this.f5705z, this.A);
        e(context, attributeSet);
    }
}
