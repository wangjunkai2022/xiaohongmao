package eltos.simpledialogfragment.input;

import android.content.Context;
import android.os.Bundle;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.material.textfield.TextInputLayout;
import eltos.simpledialogfragment.c;

/* compiled from: SimpleInputDialog.java */
/* loaded from: classes3.dex */
public class b extends eltos.simpledialogfragment.b<b> {
    public static final String TAG = "SimpleInputDialog.";

    /* renamed from: t  reason: collision with root package name */
    public static final String f65208t = "SimpleInputDialog.text";

    /* renamed from: u  reason: collision with root package name */
    protected static final String f65209u = "SimpleInputDialog.hint";

    /* renamed from: v  reason: collision with root package name */
    protected static final String f65210v = "SimpleInputDialog.input_type";

    /* renamed from: w  reason: collision with root package name */
    protected static final String f65211w = "SimpleInputDialog.allow_empty";

    /* renamed from: x  reason: collision with root package name */
    protected static final String f65212x = "SimpleInputDialog.max_length";

    /* renamed from: y  reason: collision with root package name */
    protected static final String f65213y = "SimpleInputDialog.suggestions";

    /* renamed from: r  reason: collision with root package name */
    private AutoCompleteTextView f65214r;

    /* renamed from: s  reason: collision with root package name */
    private TextInputLayout f65215s;

    /* compiled from: SimpleInputDialog.java */
    /* loaded from: classes3.dex */
    class a implements TextView.OnEditorActionListener {
        a() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
            if (i4 == 6) {
                b.this.S0();
                return true;
            }
            return false;
        }
    }

    /* compiled from: SimpleInputDialog.java */
    /* renamed from: eltos.simpledialogfragment.input.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0522b implements TextWatcher {
        C0522b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            b bVar = b.this;
            bVar.V0(bVar.h1());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* compiled from: SimpleInputDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        String a(String str, @Nullable String str2, @NonNull Bundle bundle);
    }

    public static b Y0() {
        return new b();
    }

    @Override // eltos.simpledialogfragment.b
    protected boolean H0() {
        String f12 = f1(Z0());
        if (f12 == null) {
            return true;
        }
        this.f65215s.setError(f12);
        this.f65215s.setErrorEnabled(true);
        return false;
    }

    @Override // eltos.simpledialogfragment.b
    public View M0(Bundle bundle) {
        View K0 = K0(c.l.W0);
        this.f65214r = (AutoCompleteTextView) K0.findViewById(c.i.D1);
        this.f65215s = (TextInputLayout) K0.findViewById(c.i.f64200k2);
        this.f65214r.setInputType(Z().getInt(f65210v, 1));
        if ((Z().getInt(f65210v) & 15) == 3) {
            this.f65214r.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
        }
        this.f65215s.setHint(Y(f65209u));
        if (Z().getInt(f65212x) > 0) {
            this.f65215s.setCounterMaxLength(Z().getInt(f65212x));
            this.f65215s.setCounterEnabled(true);
        }
        if (bundle != null) {
            this.f65214r.setText(bundle.getString("SimpleInputDialog.text"));
        } else {
            this.f65214r.setText(Y("SimpleInputDialog.text"));
            AutoCompleteTextView autoCompleteTextView = this.f65214r;
            autoCompleteTextView.setSelection(0, autoCompleteTextView.length());
        }
        this.f65214r.setImeOptions(6);
        this.f65214r.setOnEditorActionListener(new a());
        this.f65214r.addTextChangedListener(new C0522b());
        String[] stringArray = Z().getStringArray(f65213y);
        if (stringArray != null) {
            this.f65214r.setAdapter(new ArrayAdapter(getContext(), 17367043, stringArray));
            this.f65214r.setThreshold(1);
        }
        return K0;
    }

    @Override // eltos.simpledialogfragment.b
    protected void N0() {
        V0(h1());
        D0(this.f65214r);
    }

    @Override // eltos.simpledialogfragment.b
    public Bundle R0(int i4) {
        Bundle bundle = new Bundle();
        bundle.putString("SimpleInputDialog.text", Z0());
        return bundle;
    }

    public b X0(boolean z9) {
        return (b) w0(f65211w, z9);
    }

    @Nullable
    public String Z0() {
        if (this.f65214r.getText() != null) {
            return this.f65214r.getText().toString();
        }
        return null;
    }

    public b a1(@StringRes int i4) {
        return (b) t0(f65209u, i4);
    }

    public b b1(String str) {
        return (b) v0(f65209u, str);
    }

    public b c1(int i4) {
        return (b) t0(f65210v, i4);
    }

    public boolean d1() {
        return Z0() == null || Z0().trim().isEmpty();
    }

    public b e1(int i4) {
        return (b) t0(f65212x, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String f1(@Nullable String str) {
        Bundle a02 = a0();
        if (getTargetFragment() instanceof c) {
            return ((c) getTargetFragment()).a(getTag(), str, a02);
        }
        if (getActivity() instanceof c) {
            return ((c) getActivity()).a(getTag(), str, a02);
        }
        return null;
    }

    public void g1() {
        D0(this.f65214r);
    }

    protected boolean h1() {
        return (!d1() || Z().getBoolean(f65211w)) && (Z0() == null || Z0().length() <= Z().getInt(f65212x, Z0().length()));
    }

    public b i1(Context context, int[] iArr) {
        String[] strArr = new String[iArr.length];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            strArr[i4] = context.getString(iArr[i4]);
        }
        return j1(strArr);
    }

    public b j1(String[] strArr) {
        Z().putStringArray(f65213y, strArr);
        return this;
    }

    public b k1(@StringRes int i4) {
        return (b) t0("SimpleInputDialog.text", i4);
    }

    public b l1(String str) {
        return (b) v0("SimpleInputDialog.text", str);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("SimpleInputDialog.text", Z0());
    }
}
