package eltos.simpledialogfragment.color;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.SeekBar;
import androidx.core.view.ViewCompat;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.color.ColorWheelView;

/* compiled from: SimpleColorWheelDialog.java */
/* loaded from: classes3.dex */
public class b extends eltos.simpledialogfragment.b<b> {
    private static final String A = "SimpleColorWheelDialog.noHex";
    public static final String TAG = "SimpleColorWheelDialog.";

    /* renamed from: y  reason: collision with root package name */
    public static final String f65090y = "SimpleColorWheelDialog.color";

    /* renamed from: z  reason: collision with root package name */
    protected static final String f65091z = "SimpleColorWheelDialog.alpha";

    /* renamed from: r  reason: collision with root package name */
    private ColorWheelView f65092r;

    /* renamed from: s  reason: collision with root package name */
    private EditText f65093s;

    /* renamed from: t  reason: collision with root package name */
    private ImageView f65094t;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f65095u;

    /* renamed from: v  reason: collision with root package name */
    private SeekBar f65096v;

    /* renamed from: w  reason: collision with root package name */
    private View f65097w;

    /* renamed from: x  reason: collision with root package name */
    private final TextWatcher f65098x = new a();

    /* compiled from: SimpleColorWheelDialog.java */
    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                int progress = ((255 - b.this.f65096v.getProgress()) << 24) + ((int) Long.parseLong(editable.toString(), 16));
                b.this.f65092r.g(progress, false);
                b.this.f65094t.setImageDrawable(new ColorDrawable(progress));
            } catch (NumberFormatException unused) {
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* compiled from: SimpleColorWheelDialog.java */
    /* renamed from: eltos.simpledialogfragment.color.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0516b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f65100a;

        View$OnClickListenerC0516b(int i4) {
            this.f65100a = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.f65092r.setColor(this.f65100a);
            b.this.f65096v.setProgress(255 - Color.alpha(this.f65100a));
        }
    }

    /* compiled from: SimpleColorWheelDialog.java */
    /* loaded from: classes3.dex */
    class c implements ColorWheelView.c {
        c() {
        }

        @Override // eltos.simpledialogfragment.color.ColorWheelView.c
        public void a(int i4) {
            b.this.f65093s.removeTextChangedListener(b.this.f65098x);
            b.this.f65093s.setText(String.format("%06X", Integer.valueOf(16777215 & i4)));
            b.this.f65093s.addTextChangedListener(b.this.f65098x);
            b.this.f65094t.setImageDrawable(new ColorDrawable(i4));
        }
    }

    /* compiled from: SimpleColorWheelDialog.java */
    /* loaded from: classes3.dex */
    class d implements SeekBar.OnSeekBarChangeListener {
        d() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i4, boolean z9) {
            if (z9) {
                b.this.f65092r.i(255 - i4);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    public static b c1() {
        return new b();
    }

    @Override // eltos.simpledialogfragment.b
    protected View M0(Bundle bundle) {
        View K0 = K0(c.l.J0);
        this.f65092r = (ColorWheelView) K0.findViewById(c.i.S0);
        this.f65097w = K0.findViewById(c.i.f64308z5);
        this.f65096v = (SeekBar) K0.findViewById(c.i.f64212m0);
        this.f65093s = (EditText) K0.findViewById(c.i.Y1);
        this.f65094t = (ImageView) K0.findViewById(c.i.Q0);
        this.f65095u = (ImageView) K0.findViewById(c.i.R0);
        View findViewById = K0.findViewById(c.i.f64136a2);
        int i4 = Z().getInt(f65090y, ColorWheelView.f65022i);
        int i10 = Z().getInt(f65090y);
        if (!Z().getBoolean(f65091z)) {
            i4 |= ViewCompat.MEASURED_STATE_MASK;
            i10 |= ViewCompat.MEASURED_STATE_MASK;
        }
        this.f65092r.setColor(i4);
        this.f65094t.setImageDrawable(new ColorDrawable(i4));
        this.f65096v.setMax(255);
        this.f65096v.setProgress(255 - Color.alpha(i4));
        this.f65093s.setText(String.format("%06X", Integer.valueOf(i4 & 16777215)));
        findViewById.setVisibility(Z().getBoolean(A) ? 8 : 0);
        this.f65095u.setVisibility(Z().containsKey(f65090y) ? 0 : 8);
        this.f65095u.setImageDrawable(new ColorDrawable(i10));
        this.f65095u.setOnClickListener(new View$OnClickListenerC0516b(i10));
        this.f65093s.addTextChangedListener(this.f65098x);
        this.f65092r.setOnColorChangeListener(new c());
        this.f65097w.setVisibility(Z().getBoolean(f65091z) ? 0 : 8);
        this.f65096v.setOnSeekBarChangeListener(new d());
        return K0;
    }

    @Override // eltos.simpledialogfragment.b
    protected Bundle R0(int i4) {
        Bundle bundle = new Bundle();
        bundle.putInt(f65090y, this.f65092r.getColor());
        return bundle;
    }

    public b b1(boolean z9) {
        return (b) w0(f65091z, z9);
    }

    public b d1(int i4) {
        return (b) t0(f65090y, i4);
    }

    public b e1(boolean z9) {
        return (b) w0(A, z9);
    }
}
