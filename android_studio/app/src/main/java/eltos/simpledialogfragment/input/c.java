package eltos.simpledialogfragment.input;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.alimuzaffar.lib.pin.PinEntryEditText;
import com.google.android.material.textfield.TextInputLayout;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.input.b;

/* compiled from: SimplePinDialog.java */
/* loaded from: classes3.dex */
public class c extends eltos.simpledialogfragment.b<c> {
    public static final String TAG = "SimplePinDialog.";

    /* renamed from: t  reason: collision with root package name */
    public static final String f65218t = "SimplePinDialog.pin";

    /* renamed from: u  reason: collision with root package name */
    protected static final String f65219u = "SimplePinDialog.mask";

    /* renamed from: v  reason: collision with root package name */
    protected static final String f65220v = "SimplePinDialog.length";

    /* renamed from: w  reason: collision with root package name */
    protected static final String f65221w = "SimplePinDialog.checkPin";

    /* renamed from: r  reason: collision with root package name */
    private PinEntryEditText f65222r;

    /* renamed from: s  reason: collision with root package name */
    private TextInputLayout f65223s;

    /* compiled from: SimplePinDialog.java */
    /* loaded from: classes3.dex */
    class a implements TextView.OnEditorActionListener {
        a() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
            if (i4 == 6) {
                if (c.this.f1()) {
                    c.this.S0();
                    return true;
                }
                return true;
            }
            return false;
        }
    }

    /* compiled from: SimplePinDialog.java */
    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            c.this.f65223s.setErrorEnabled(false);
            c cVar = c.this;
            cVar.V0(cVar.f1());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* compiled from: SimplePinDialog.java */
    /* renamed from: eltos.simpledialogfragment.input.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0523c implements PinEntryEditText.i {
        C0523c() {
        }

        @Override // com.alimuzaffar.lib.pin.PinEntryEditText.i
        public void a(CharSequence charSequence) {
            c.this.S0();
        }
    }

    public c() {
        F0(c.n.S0);
        s0(null);
    }

    public static c Z0() {
        return new c();
    }

    @Override // eltos.simpledialogfragment.b
    protected boolean H0() {
        String c12 = c1(a1());
        if (c12 == null) {
            return true;
        }
        this.f65223s.setError(c12);
        this.f65223s.setErrorEnabled(true);
        return false;
    }

    @Override // eltos.simpledialogfragment.b
    public View M0(Bundle bundle) {
        View K0 = K0(c.l.Z0);
        this.f65222r = (PinEntryEditText) K0.findViewById(c.i.B3);
        this.f65223s = (TextInputLayout) K0.findViewById(c.i.f64200k2);
        this.f65222r.setMaxLength(Z().getInt(f65220v, 4));
        if (bundle != null) {
            this.f65222r.setText(bundle.getString(f65218t));
        }
        this.f65222r.setImeOptions(6);
        this.f65222r.setOnEditorActionListener(new a());
        this.f65222r.addTextChangedListener(new b());
        this.f65222r.setOnPinEnteredListener(new C0523c());
        return K0;
    }

    @Override // eltos.simpledialogfragment.b
    protected void N0() {
        V0(f1());
        D0(this.f65222r);
    }

    @Override // eltos.simpledialogfragment.b
    public Bundle R0(int i4) {
        Bundle bundle = new Bundle();
        bundle.putString(f65218t, a1());
        return bundle;
    }

    @Nullable
    public String a1() {
        if (this.f65222r.getText() != null) {
            return this.f65222r.getText().toString();
        }
        return null;
    }

    public c b1(int i4) {
        return (c) t0(f65220v, i4);
    }

    protected String c1(@Nullable String str) {
        String string = Z().getString(f65221w);
        if (string != null && !string.equals(a1())) {
            return getString(c.n.f64417b1);
        }
        Bundle a02 = a0();
        if (getTargetFragment() instanceof b.c) {
            return ((b.c) getTargetFragment()).a(getTag(), str, a02);
        }
        if (getActivity() instanceof b.c) {
            return ((b.c) getActivity()).a(getTag(), str, a02);
        }
        return null;
    }

    public void d1() {
        D0(this.f65222r);
    }

    public c e1(String str) {
        if (str != null) {
            b1(str.length());
        }
        return (c) v0(f65221w, str);
    }

    protected boolean f1() {
        return a1() != null && a1().length() == Z().getInt(f65220v, 4);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(f65218t, a1());
    }
}
