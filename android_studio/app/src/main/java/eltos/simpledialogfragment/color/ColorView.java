package eltos.simpledialogfragment.color;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.core.view.ViewCompat;
import eltos.simpledialogfragment.c;

/* loaded from: classes3.dex */
public class ColorView extends FrameLayout implements Checkable {

    /* renamed from: m  reason: collision with root package name */
    public static final int f65006m = 0;

    /* renamed from: n  reason: collision with root package name */
    public static final int f65007n = 16777215;
    @ColorInt

    /* renamed from: a  reason: collision with root package name */
    private int f65008a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f65009b;

    /* renamed from: c  reason: collision with root package name */
    private int f65010c;
    @ColorInt

    /* renamed from: d  reason: collision with root package name */
    private int f65011d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f65012e;

    /* renamed from: f  reason: collision with root package name */
    private FrameLayout f65013f;

    /* renamed from: g  reason: collision with root package name */
    private FrameLayout f65014g;

    /* renamed from: h  reason: collision with root package name */
    private final Animation f65015h;

    /* renamed from: i  reason: collision with root package name */
    private final Animation f65016i;

    /* renamed from: j  reason: collision with root package name */
    private Style f65017j;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f65018k;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f65019l;

    /* loaded from: classes3.dex */
    public enum Style {
        CHECK,
        PALETTE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f65021a;

        static {
            int[] iArr = new int[Style.values().length];
            f65021a = iArr;
            try {
                iArr[Style.CHECK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f65021a[Style.PALETTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public ColorView(Context context) {
        this(context, null);
    }

    private Drawable a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        if (this.f65010c != 0) {
            int i4 = this.f65011d;
            if (i4 == 16777215) {
                i4 = e(this.f65008a) ? -1 : ViewCompat.MEASURED_STATE_MASK;
            }
            gradientDrawable.setStroke(this.f65010c, i4);
        }
        gradientDrawable.setColor(this.f65008a);
        return gradientDrawable;
    }

    private Drawable b(int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(ViewCompat.MEASURED_STATE_MASK);
        return new RippleDrawable(ColorStateList.valueOf(i4), null, gradientDrawable);
    }

    @ColorInt
    public static int c(@ColorInt int i4) {
        Color.colorToHSV(i4, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] * 0.5f};
        return Color.HSVToColor(fArr);
    }

    @ColorInt
    public static int d(@ColorInt int i4) {
        Color.colorToHSV(i4, r0);
        float[] fArr = {0.0f, fArr[1] * 0.5f, 1.0f - ((1.0f - fArr[2]) * 0.5f)};
        return Color.HSVToColor(fArr);
    }

    public static boolean e(@ColorInt int i4) {
        return ((((double) Color.red(i4)) * 0.299d) + (((double) Color.green(i4)) * 0.587d)) + (((double) Color.blue(i4)) * 0.114d) < 180.0d;
    }

    private void g(View view, boolean z9, boolean z10, boolean z11) {
        if (z11) {
            if (!z9 && z10) {
                view.startAnimation(this.f65015h);
            } else if (z9 && !z10) {
                view.startAnimation(this.f65016i);
            }
        }
        view.setVisibility(z10 ? 0 : 4);
    }

    private void h() {
        setForeground(null);
        this.f65013f.setBackground(a());
        int i4 = a.f65021a[this.f65017j.ordinal()];
        if (i4 == 1) {
            this.f65012e.setImageResource(c.h.O0);
            this.f65012e.setColorFilter(e(this.f65008a) ? -1 : ViewCompat.MEASURED_STATE_MASK);
            this.f65013f.setVisibility(0);
            this.f65014g.setForeground(b(c(this.f65008a)));
        } else if (i4 == 2) {
            this.f65012e.setImageResource(this.f65008a != 0 ? c.h.V0 : c.h.U0);
            this.f65012e.setVisibility(0);
            this.f65018k = b(c(this.f65008a));
            this.f65019l = b(d(this.f65008a));
        }
        f(this.f65009b, false);
    }

    public void f(boolean z9, boolean z10) {
        int i4 = a.f65021a[this.f65017j.ordinal()];
        if (i4 == 1) {
            g(this.f65012e, this.f65009b, z9, z10);
        } else if (i4 == 2) {
            g(this.f65013f, this.f65009b, z9, z10);
            int i10 = this.f65008a;
            if (i10 != 0) {
                ImageView imageView = this.f65012e;
                if (z9) {
                    i10 = e(i10) ? -1 : ViewCompat.MEASURED_STATE_MASK;
                }
                imageView.setColorFilter(i10);
            } else {
                this.f65012e.setColorFilter((ColorFilter) null);
            }
            this.f65014g.setForeground(z9 ? this.f65018k : this.f65019l);
        }
        this.f65009b = z9;
    }

    @ColorInt
    public int getColor() {
        return this.f65008a;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f65009b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i4);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z9) {
        f(z9, true);
    }

    public void setColor(@ColorInt int i4) {
        if ((i4 & ViewCompat.MEASURED_STATE_MASK) == 0 && i4 != 0) {
            i4 |= ViewCompat.MEASURED_STATE_MASK;
        }
        if (this.f65008a != i4) {
            this.f65008a = i4;
            h();
        }
    }

    public void setOutlineColor(@ColorInt int i4) {
        this.f65011d = i4;
        h();
    }

    public void setOutlineWidth(int i4) {
        this.f65010c = i4;
        h();
    }

    public void setStyle(Style style) {
        if (this.f65017j != style) {
            this.f65017j = style;
            h();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    public ColorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f65009b = false;
        this.f65010c = 0;
        this.f65011d = 16777215;
        this.f65017j = Style.CHECK;
        this.f65015h = AnimationUtils.loadAnimation(getContext(), c.a.G);
        this.f65016i = AnimationUtils.loadAnimation(getContext(), c.a.F);
        LayoutInflater.from(getContext()).inflate(c.l.I0, (ViewGroup) this, true);
        this.f65012e = (ImageView) findViewById(c.i.H0);
        this.f65013f = (FrameLayout) findViewById(c.i.P0);
        this.f65014g = (FrameLayout) findViewById(c.i.Q3);
        h();
    }
}
