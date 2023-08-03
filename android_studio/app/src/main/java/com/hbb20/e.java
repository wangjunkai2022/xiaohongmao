package com.hbb20;

import android.app.Dialog;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.hbb20.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CountryCodeAdapter.java */
/* loaded from: classes2.dex */
public class e extends RecyclerView.Adapter<C0294e> implements com.futuremind.recyclerviewfastscroll.b {

    /* renamed from: a  reason: collision with root package name */
    List<com.hbb20.b> f37102a;

    /* renamed from: b  reason: collision with root package name */
    List<com.hbb20.b> f37103b;

    /* renamed from: c  reason: collision with root package name */
    TextView f37104c;

    /* renamed from: d  reason: collision with root package name */
    CountryCodePicker f37105d;

    /* renamed from: e  reason: collision with root package name */
    LayoutInflater f37106e;

    /* renamed from: f  reason: collision with root package name */
    EditText f37107f;

    /* renamed from: g  reason: collision with root package name */
    Dialog f37108g;

    /* renamed from: h  reason: collision with root package name */
    Context f37109h;

    /* renamed from: i  reason: collision with root package name */
    RelativeLayout f37110i;

    /* renamed from: j  reason: collision with root package name */
    ImageView f37111j;

    /* renamed from: k  reason: collision with root package name */
    int f37112k = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountryCodeAdapter.java */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v9) {
            e.this.f37107f.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountryCodeAdapter.java */
    /* loaded from: classes2.dex */
    public class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s9) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s9, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s9, int start, int before, int count) {
            e.this.e(s9.toString());
            if (s9.toString().trim().equals("")) {
                e.this.f37111j.setVisibility(8);
            } else {
                e.this.f37111j.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountryCodeAdapter.java */
    /* loaded from: classes2.dex */
    public class c implements TextView.OnEditorActionListener {
        c() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView v9, int actionId, KeyEvent event) {
            if (actionId == 3) {
                ((InputMethodManager) e.this.f37109h.getSystemService("input_method")).hideSoftInputFromWindow(e.this.f37107f.getWindowToken(), 0);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountryCodeAdapter.java */
    /* loaded from: classes2.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37116a;

        d(final int val$i) {
            this.f37116a = val$i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<com.hbb20.b> list;
            List<com.hbb20.b> list2 = e.this.f37102a;
            if (list2 != null) {
                int size = list2.size();
                int i4 = this.f37116a;
                if (size > i4) {
                    e eVar = e.this;
                    eVar.f37105d.H(eVar.f37102a.get(i4));
                }
            }
            if (view == null || (list = e.this.f37102a) == null) {
                return;
            }
            int size2 = list.size();
            int i10 = this.f37116a;
            if (size2 <= i10 || e.this.f37102a.get(i10) == null) {
                return;
            }
            ((InputMethodManager) e.this.f37109h.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            e.this.f37108g.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountryCodeAdapter.java */
    /* renamed from: com.hbb20.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0294e extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f37118a;

        /* renamed from: b  reason: collision with root package name */
        TextView f37119b;

        /* renamed from: c  reason: collision with root package name */
        TextView f37120c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f37121d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f37122e;

        /* renamed from: f  reason: collision with root package name */
        View f37123f;

        public C0294e(View itemView) {
            super(itemView);
            RelativeLayout relativeLayout = (RelativeLayout) itemView;
            this.f37118a = relativeLayout;
            this.f37119b = (TextView) relativeLayout.findViewById(i.h.f37743q3);
            this.f37120c = (TextView) this.f37118a.findViewById(i.h.f37738p3);
            this.f37121d = (ImageView) this.f37118a.findViewById(i.h.T1);
            this.f37122e = (LinearLayout) this.f37118a.findViewById(i.h.f37672c2);
            this.f37123f = this.f37118a.findViewById(i.h.f37737p2);
            if (e.this.f37105d.getDialogTextColor() != 0) {
                this.f37119b.setTextColor(e.this.f37105d.getDialogTextColor());
                this.f37120c.setTextColor(e.this.f37105d.getDialogTextColor());
                this.f37123f.setBackgroundColor(e.this.f37105d.getDialogTextColor());
            }
            try {
                if (e.this.f37105d.getDialogTypeFace() != null) {
                    if (e.this.f37105d.getDialogTypeFaceStyle() != -99) {
                        this.f37120c.setTypeface(e.this.f37105d.getDialogTypeFace(), e.this.f37105d.getDialogTypeFaceStyle());
                        this.f37119b.setTypeface(e.this.f37105d.getDialogTypeFace(), e.this.f37105d.getDialogTypeFaceStyle());
                        return;
                    }
                    this.f37120c.setTypeface(e.this.f37105d.getDialogTypeFace());
                    this.f37119b.setTypeface(e.this.f37105d.getDialogTypeFace());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        public RelativeLayout b() {
            return this.f37118a;
        }

        public void c(com.hbb20.b ccpCountry) {
            if (ccpCountry != null) {
                this.f37123f.setVisibility(8);
                this.f37119b.setVisibility(0);
                this.f37120c.setVisibility(0);
                if (e.this.f37105d.t()) {
                    this.f37120c.setVisibility(0);
                } else {
                    this.f37120c.setVisibility(8);
                }
                String str = "";
                if (e.this.f37105d.getCcpDialogShowFlag() && e.this.f37105d.M) {
                    str = "" + com.hbb20.b.o(ccpCountry) + "   ";
                }
                String str2 = str + ccpCountry.getName();
                if (e.this.f37105d.getCcpDialogShowNameCode()) {
                    str2 = str2 + " (" + ccpCountry.v().toUpperCase() + ")";
                }
                this.f37119b.setText(str2);
                this.f37120c.setText("+" + ccpCountry.x());
                if (e.this.f37105d.getCcpDialogShowFlag() && !e.this.f37105d.M) {
                    this.f37122e.setVisibility(0);
                    this.f37121d.setImageResource(ccpCountry.p());
                    return;
                }
                this.f37122e.setVisibility(8);
                return;
            }
            this.f37123f.setVisibility(0);
            this.f37119b.setVisibility(8);
            this.f37120c.setVisibility(8);
            this.f37122e.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, List<com.hbb20.b> countries, CountryCodePicker codePicker, RelativeLayout rlQueryHolder, final EditText editText_search, TextView textView_noResult, Dialog dialog, ImageView imgClearQuery) {
        this.f37102a = null;
        this.f37109h = context;
        this.f37103b = countries;
        this.f37105d = codePicker;
        this.f37108g = dialog;
        this.f37104c = textView_noResult;
        this.f37107f = editText_search;
        this.f37110i = rlQueryHolder;
        this.f37111j = imgClearQuery;
        this.f37106e = LayoutInflater.from(context);
        this.f37102a = f("");
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String query) {
        this.f37104c.setVisibility(8);
        String lowerCase = query.toLowerCase();
        if (lowerCase.length() > 0 && lowerCase.charAt(0) == '+') {
            lowerCase = lowerCase.substring(1);
        }
        List<com.hbb20.b> f10 = f(lowerCase);
        this.f37102a = f10;
        if (f10.size() == 0) {
            this.f37104c.setVisibility(0);
        }
        notifyDataSetChanged();
    }

    private List<com.hbb20.b> f(String query) {
        ArrayList arrayList = new ArrayList();
        this.f37112k = 0;
        List<com.hbb20.b> list = this.f37105d.W;
        if (list != null && list.size() > 0) {
            for (com.hbb20.b bVar : this.f37105d.W) {
                if (bVar.z(query)) {
                    arrayList.add(bVar);
                    this.f37112k++;
                }
            }
            if (arrayList.size() > 0) {
                arrayList.add(null);
                this.f37112k++;
            }
        }
        for (com.hbb20.b bVar2 : this.f37103b) {
            if (bVar2.z(query)) {
                arrayList.add(bVar2);
            }
        }
        return arrayList;
    }

    private void i() {
        this.f37111j.setOnClickListener(new a());
    }

    private void j() {
        if (this.f37105d.z()) {
            this.f37111j.setVisibility(8);
            k();
            i();
            return;
        }
        this.f37110i.setVisibility(8);
    }

    private void k() {
        EditText editText = this.f37107f;
        if (editText != null) {
            editText.addTextChangedListener(new b());
            this.f37107f.setOnEditorActionListener(new c());
        }
    }

    @Override // com.futuremind.recyclerviewfastscroll.b
    public String b(int position) {
        com.hbb20.b bVar = this.f37102a.get(position);
        return this.f37112k > position ? "★" : bVar != null ? bVar.getName().substring(0, 1) : "☺";
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(C0294e countryCodeViewHolder, final int i4) {
        countryCodeViewHolder.c(this.f37102a.get(i4));
        if (this.f37102a.size() > i4 && this.f37102a.get(i4) != null) {
            countryCodeViewHolder.b().setOnClickListener(new d(i4));
        } else {
            countryCodeViewHolder.b().setOnClickListener(null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f37102a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public C0294e onCreateViewHolder(ViewGroup viewGroup, int i4) {
        return new C0294e(this.f37106e.inflate(i.k.H, viewGroup, false));
    }
}
