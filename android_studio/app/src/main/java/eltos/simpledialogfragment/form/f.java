package eltos.simpledialogfragment.form;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.material.textfield.TextInputLayout;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.form.g;
import eltos.simpledialogfragment.input.TextInputAutoCompleteTextView;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InputViewHolder.java */
/* loaded from: classes3.dex */
public class f extends eltos.simpledialogfragment.form.d<Input> {

    /* renamed from: d  reason: collision with root package name */
    protected static final String f65167d = "savedText";

    /* renamed from: b  reason: collision with root package name */
    private TextInputAutoCompleteTextView f65168b;

    /* renamed from: c  reason: collision with root package name */
    private TextInputLayout f65169c;

    /* compiled from: InputViewHolder.java */
    /* loaded from: classes3.dex */
    class a implements View.OnFocusChangeListener {

        /* compiled from: InputViewHolder.java */
        /* renamed from: eltos.simpledialogfragment.form.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0520a implements Runnable {
            RunnableC0520a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                f.this.f65168b.setSelectAllOnFocus(false);
                f.this.f65168b.setOnFocusChangeListener(null);
            }
        }

        a() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z9) {
            if (z9) {
                f.this.f65168b.postDelayed(new RunnableC0520a(), 10L);
            }
        }
    }

    /* compiled from: InputViewHolder.java */
    /* loaded from: classes3.dex */
    class b implements TextView.OnEditorActionListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65172a;

        b(g.b bVar) {
            this.f65172a = bVar;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
            if (i4 == 5) {
                f fVar = f.this;
                if (((Input) fVar.f65166a).forceSuggestion && fVar.f65168b.isPopupShowing() && f.this.f65168b.getAdapter().getCount() > 0) {
                    f.this.f65168b.setText(f.this.f65168b.getAdapter().getItem(0).toString());
                }
            } else if (i4 != 6) {
                return false;
            }
            this.f65172a.d(true);
            return true;
        }
    }

    /* compiled from: InputViewHolder.java */
    /* loaded from: classes3.dex */
    class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z9) {
            if (z9) {
                return;
            }
            f.this.g(view.getContext());
        }
    }

    /* compiled from: InputViewHolder.java */
    /* loaded from: classes3.dex */
    class d implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65175a;

        d(g.b bVar) {
            this.f65175a = bVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            this.f65175a.h();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* compiled from: InputViewHolder.java */
    /* loaded from: classes3.dex */
    class e implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65177a;

        e(g.b bVar) {
            this.f65177a = bVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
            f fVar = f.this;
            E e4 = fVar.f65166a;
            if (((Input) e4).isSpinner && !((Input) e4).required && i4 == fVar.f65168b.getAdapter().getCount() - 1) {
                f.this.f65168b.setText((CharSequence) null);
            }
            f.this.g(view.getContext());
            this.f65177a.h();
            this.f65177a.d(true);
        }
    }

    /* compiled from: InputViewHolder.java */
    /* renamed from: eltos.simpledialogfragment.form.f$f  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0521f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65179a;

        View$OnClickListenerC0521f(g.b bVar) {
            this.f65179a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f65179a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Input input) {
        super(input);
    }

    private boolean j() {
        return i() == null || i().isEmpty();
    }

    private boolean k() {
        return ((Input) this.f65166a).maxLength > 0 && i() != null && i().length() > ((Input) this.f65166a).maxLength;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean a(g.c cVar) {
        if (((Input) this.f65166a).isSpinner) {
            cVar.b();
            this.f65168b.showDropDown();
        } else {
            cVar.c(this.f65168b);
        }
        if (((Input) this.f65166a).forceSuggestion) {
            this.f65168b.showDropDown();
        }
        return this.f65168b.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public int b() {
        return c.l.Q0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean c(Context context) {
        return ((((Input) this.f65166a).required && j()) || k()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void d(Bundle bundle, String str) {
        bundle.putString(str, i());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void e(Bundle bundle) {
        bundle.putString(f65167d, i());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void f(View view, Context context, Bundle bundle, g.b bVar) {
        this.f65168b = (TextInputAutoCompleteTextView) view.findViewById(c.i.D1);
        this.f65169c = (TextInputLayout) view.findViewById(c.i.f64200k2);
        if (bundle == null) {
            this.f65168b.setText(((Input) this.f65166a).getText(context));
            this.f65168b.setSelectAllOnFocus(true);
            this.f65168b.setOnFocusChangeListener(new a());
        } else {
            this.f65168b.setText(bundle.getString(f65167d));
        }
        this.f65169c.setHint(((Input) this.f65166a).getHint(context));
        E e4 = this.f65166a;
        if ((((Input) e4).inputType & 15) == 0) {
            ((Input) e4).inputType |= 1;
        }
        this.f65168b.setInputType(((Input) e4).inputType);
        if ((((Input) this.f65166a).inputType & 15) == 3) {
            this.f65168b.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
        }
        if (((Input) this.f65166a).passwordToggleVisible) {
            this.f65169c.setEndIconMode(1);
        }
        E e10 = this.f65166a;
        if (((Input) e10).maxLength > 0) {
            this.f65169c.setCounterMaxLength(((Input) e10).maxLength);
            this.f65169c.setCounterEnabled(true);
        }
        this.f65168b.setImeOptions(bVar.e() ? 6 : 5);
        this.f65168b.setOnEditorActionListener(new b(bVar));
        this.f65168b.setOnFocusChangeListener(new c());
        if (bVar.f()) {
            this.f65168b.addTextChangedListener(new d(bVar));
        }
        String[] suggestions = ((Input) this.f65166a).getSuggestions(context);
        if (suggestions != null) {
            E e11 = this.f65166a;
            if (((Input) e11).isSpinner && !((Input) e11).required) {
                suggestions = (String[]) Arrays.copyOf(suggestions, suggestions.length + 1);
                suggestions[suggestions.length - 1] = "";
            }
            this.f65168b.setAdapter(new ArrayAdapter(context, 17367043, suggestions));
            this.f65168b.setThreshold(1);
            this.f65168b.setOnItemClickListener(new e(bVar));
            E e12 = this.f65166a;
            if (((Input) e12).isSpinner || (((Input) e12).forceSuggestion && !((Input) e12).passwordToggleVisible)) {
                this.f65169c.setBoxBackgroundMode(2);
                this.f65169c.setEndIconMode(3);
            }
            if (((Input) this.f65166a).isSpinner) {
                this.f65168b.setInputType(0);
                this.f65168b.setKeyListener(null);
                TextInputAutoCompleteTextView textInputAutoCompleteTextView = this.f65168b;
                textInputAutoCompleteTextView.f65206a = true;
                textInputAutoCompleteTextView.setOnClickListener(new View$OnClickListenerC0521f(bVar));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean g(Context context) {
        boolean z9;
        if (((Input) this.f65166a).required && j()) {
            l(true, context.getString(c.n.T0));
            return false;
        } else if (k()) {
            l(true, null);
            return false;
        } else if (i() != null && i().length() < ((Input) this.f65166a).minLength) {
            Resources resources = context.getResources();
            int i4 = c.m.f64410a;
            E e4 = this.f65166a;
            l(true, resources.getQuantityString(i4, ((Input) e4).minLength, Integer.valueOf(((Input) e4).minLength)));
            return false;
        } else {
            if (((Input) this.f65166a).forceSuggestion && !j()) {
                String[] suggestions = ((Input) this.f65166a).getSuggestions(context);
                String i10 = i();
                if (suggestions != null && i10 != null && suggestions.length > 0) {
                    int length = suggestions.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            z9 = false;
                            break;
                        }
                        String str = suggestions[i11];
                        if (str != null && i10.equalsIgnoreCase(str)) {
                            this.f65168b.setTextKeepState(str);
                            z9 = true;
                            break;
                        }
                        i11++;
                    }
                    if (!z9) {
                        l(true, context.getString(c.n.U));
                        return false;
                    }
                }
            }
            String validatePattern = ((Input) this.f65166a).validatePattern(context, i());
            l(validatePattern != null, validatePattern);
            return validatePattern == null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public String i() {
        if (this.f65168b.getText() != null) {
            return this.f65168b.getText().toString().trim();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(boolean z9, @Nullable String str) {
        this.f65169c.setError(str);
        this.f65169c.setErrorEnabled(z9);
    }
}
