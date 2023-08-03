package eltos.simpledialogfragment.list;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import eltos.simpledialogfragment.c;

/* loaded from: classes3.dex */
public class ClearableEditText extends AppCompatEditText implements View.OnTouchListener, View.OnFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private Location f65227a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f65228b;

    /* renamed from: c  reason: collision with root package name */
    private b f65229c;

    /* renamed from: d  reason: collision with root package name */
    private View.OnTouchListener f65230d;

    /* renamed from: e  reason: collision with root package name */
    private View.OnFocusChangeListener f65231e;

    /* renamed from: f  reason: collision with root package name */
    private final TextWatcher f65232f;

    /* loaded from: classes3.dex */
    public enum Location {
        LEFT(0),
        RIGHT(2);
        

        /* renamed from: a  reason: collision with root package name */
        final int f65234a;

        Location(int i4) {
            this.f65234a = i4;
        }
    }

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (ClearableEditText.this.isFocused()) {
                ClearableEditText.this.setClearIconVisible(editable != null && editable.length() > 0);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a();
    }

    public ClearableEditText(Context context) {
        super(context);
        this.f65227a = Location.RIGHT;
        this.f65232f = new a();
        a(context, null);
    }

    private void a(Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, c.p.Z5, 0, 0);
        try {
            Integer valueOf = Integer.valueOf(obtainStyledAttributes.getInteger(c.p.f64750b6, -1));
            if (valueOf.intValue() == 0) {
                this.f65227a = Location.LEFT;
            } else if (valueOf.intValue() == 1) {
                this.f65227a = Location.RIGHT;
            }
            this.f65228b = obtainStyledAttributes.getDrawable(c.p.f64739a6);
            obtainStyledAttributes.recycle();
            if (this.f65228b == null) {
                this.f65228b = getResources().getDrawable(c.h.P0);
            }
            Drawable drawable = this.f65228b;
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f65228b.getIntrinsicHeight());
                int paddingTop = getPaddingTop() + this.f65228b.getIntrinsicHeight() + getPaddingBottom();
                if (getSuggestedMinimumHeight() < paddingTop) {
                    setMinimumHeight(paddingTop);
                }
            }
            super.setOnTouchListener(this);
            super.setOnFocusChangeListener(this);
            addTextChangedListener(this.f65232f);
            setClearIconVisible(false);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    protected boolean b() {
        Location location = this.f65227a;
        return location == Location.LEFT ? getCompoundDrawables()[0] != null : location == Location.RIGHT && getCompoundDrawables()[2] != null;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z9) {
        boolean z10 = false;
        if (z9) {
            if (getText() != null && getText().length() > 0) {
                z10 = true;
            }
            setClearIconVisible(z10);
        } else {
            setClearIconVisible(false);
        }
        View.OnFocusChangeListener onFocusChangeListener = this.f65231e;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view, z9);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (b()) {
            int x9 = (int) motionEvent.getX();
            int y9 = (int) motionEvent.getY();
            Location location = this.f65227a;
            Location location2 = Location.LEFT;
            if (x9 >= (location == location2 ? 0 : (getWidth() - getPaddingRight()) - this.f65228b.getIntrinsicWidth()) && x9 <= (this.f65227a == location2 ? getPaddingLeft() + this.f65228b.getIntrinsicWidth() : getWidth()) && y9 >= 0 && y9 <= getBottom() - getTop()) {
                if (motionEvent.getAction() == 1) {
                    setText("");
                    b bVar = this.f65229c;
                    if (bVar != null) {
                        bVar.a();
                    }
                }
                return true;
            }
        }
        View.OnTouchListener onTouchListener = this.f65230d;
        return onTouchListener != null && onTouchListener.onTouch(view, motionEvent);
    }

    public void setClearDrawable(@DrawableRes int i4) {
        this.f65228b = getResources().getDrawable(i4);
    }

    protected void setClearIconVisible(boolean z9) {
        if (z9 != b()) {
            Location location = this.f65227a;
            super.setCompoundDrawables((location == Location.LEFT) & z9 ? this.f65228b : null, null, z9 & (location == Location.RIGHT) ? this.f65228b : null, null);
        }
    }

    public void setClearPosition(Location location) {
        this.f65227a = location;
    }

    public void setListener(b bVar) {
        this.f65229c = bVar;
    }

    @Override // android.view.View
    public void setOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f65231e = onFocusChangeListener;
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f65230d = onTouchListener;
    }

    public ClearableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65227a = Location.RIGHT;
        this.f65232f = new a();
        a(context, attributeSet);
    }

    public ClearableEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f65227a = Location.RIGHT;
        this.f65232f = new a();
        a(context, attributeSet);
    }
}
