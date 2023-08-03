package eltos.simpledialogfragment.form;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: SimpleFormDialog.java */
/* loaded from: classes3.dex */
public class g extends eltos.simpledialogfragment.b<g> implements f.c {
    public static final String TAG = "SimpleFormDialog.";

    /* renamed from: u  reason: collision with root package name */
    protected static final String f65181u = "SimpleFormDialog.inputFields";

    /* renamed from: v  reason: collision with root package name */
    protected static final String f65182v = "SimpleFormDialog.autofocus";

    /* renamed from: w  reason: collision with root package name */
    protected static final String f65183w = "form.";

    /* renamed from: r  reason: collision with root package name */
    private c f65184r = new c();

    /* renamed from: s  reason: collision with root package name */
    ArrayList<eltos.simpledialogfragment.form.d<?>> f65185s = new ArrayList<>(0);

    /* renamed from: t  reason: collision with root package name */
    ViewGroup f65186t;

    /* compiled from: SimpleFormDialog.java */
    /* loaded from: classes3.dex */
    public class b extends c {

        /* renamed from: b  reason: collision with root package name */
        private int f65187b;

        /* renamed from: c  reason: collision with root package name */
        private int f65188c;

        public void d(boolean z9) {
            if (z9 && e()) {
                g.this.S0();
                return;
            }
            g gVar = g.this;
            gVar.s1(gVar.l1(this.f65187b));
        }

        public boolean e() {
            return g.this.n1(this.f65187b);
        }

        public boolean f() {
            return g.this.o1(this.f65187b);
        }

        public void g(eltos.simpledialogfragment.f fVar, String str) {
            fVar.y0(g.this, str);
        }

        public void h() {
            g gVar = g.this;
            gVar.V0(gVar.r1());
        }

        private b(int i4, int i10) {
            super();
            this.f65187b = i4;
            this.f65188c = i10;
        }
    }

    /* compiled from: SimpleFormDialog.java */
    /* loaded from: classes3.dex */
    public class c {
        public c() {
        }

        public void a() {
            g.this.f65186t.requestFocus();
        }

        public void b() {
            InputMethodManager inputMethodManager;
            View currentFocus = g.this.getDialog().getCurrentFocus();
            if (currentFocus == null || (inputMethodManager = (InputMethodManager) g.this.getContext().getSystemService("input_method")) == null) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }

        public void c(View view) {
            g.this.D0(view);
        }
    }

    /* compiled from: SimpleFormDialog.java */
    /* loaded from: classes3.dex */
    public interface d {
        String a(String str, String str2, @Nullable String str3, @NonNull Bundle bundle);
    }

    public static g b1() {
        return new g();
    }

    public static g c1(String str) {
        return b1().j1(Input.email(str).required());
    }

    public static g d1(String str, String str2) {
        g b12 = b1();
        int i4 = c.n.Y;
        return ((g) ((g) b12.F0(i4)).r0(i4)).j1(Input.plain(str).hint(c.n.f64414a1).required(), Input.password(str2).required());
    }

    public static g e1(String str, String str2) {
        g b12 = b1();
        int i4 = c.n.Y;
        return ((g) ((g) b12.F0(i4)).r0(i4)).j1(Input.email(str).required(), Input.password(str2).required());
    }

    public static g f1(String str) {
        return b1().j1(Input.phone(str).required());
    }

    public static g g1(String str) {
        return b1().j1(Input.password(str).required());
    }

    public static g h1(String str) {
        return b1().j1(Input.pin(str).required());
    }

    public static g i1(String str, int i4) {
        return b1().j1(Input.pin(str).required().min(i4).max(i4));
    }

    private int k1() {
        return l1(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int l1(int i4) {
        ArrayList parcelableArrayList = Z().getParcelableArrayList(f65181u);
        do {
            i4++;
            if (parcelableArrayList == null || i4 >= parcelableArrayList.size()) {
                return Integer.MAX_VALUE;
            }
        } while (!m1(i4));
        return i4;
    }

    private boolean m1(int i4) {
        ArrayList parcelableArrayList = Z().getParcelableArrayList(f65181u);
        return i4 >= 0 && parcelableArrayList != null && i4 < parcelableArrayList.size() && !(parcelableArrayList.get(i4) instanceof Hint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n1(int i4) {
        return m1(i4) && l1(i4) == Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o1(int i4) {
        return i4 == k1() && n1(i4);
    }

    @Override // eltos.simpledialogfragment.b
    protected boolean H0() {
        Iterator<eltos.simpledialogfragment.form.d<?>> it = this.f65185s.iterator();
        boolean z9 = true;
        while (it.hasNext()) {
            eltos.simpledialogfragment.form.d<?> next = it.next();
            if (next.g(getContext())) {
                if (next instanceof f) {
                    f fVar = (f) next;
                    String p12 = p1(next.f65166a.resultKey, fVar.i());
                    if (p12 != null) {
                        fVar.l(true, p12);
                        if (z9) {
                            next.a(this.f65184r);
                        }
                    }
                }
            } else if (z9) {
                next.a(this.f65184r);
            }
            z9 = false;
        }
        return z9;
    }

    @Override // eltos.simpledialogfragment.b
    public View M0(Bundle bundle) {
        View K0 = K0(c.l.L0);
        q1((ViewGroup) K0.findViewById(c.i.V0), bundle);
        V0(r1());
        return K0;
    }

    @Override // eltos.simpledialogfragment.b
    protected void N0() {
        if (getDialog() != null && getDialog().getWindow() != null) {
            getDialog().getWindow().setSoftInputMode(16);
        }
        V0(r1());
        if (Z().getBoolean(f65182v, true)) {
            s1(0);
        }
    }

    @Override // eltos.simpledialogfragment.f.c
    public boolean R(@NonNull String str, int i4, @NonNull Bundle bundle) {
        if (Z().getParcelableArrayList(f65181u) != null) {
            Iterator<eltos.simpledialogfragment.form.d<?>> it = this.f65185s.iterator();
            while (it.hasNext()) {
                eltos.simpledialogfragment.form.d<?> next = it.next();
                if ((next instanceof f.c) && ((f.c) next).R(str, i4, bundle)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // eltos.simpledialogfragment.b
    public Bundle R0(int i4) {
        Bundle bundle = new Bundle();
        Iterator<eltos.simpledialogfragment.form.d<?>> it = this.f65185s.iterator();
        while (it.hasNext()) {
            eltos.simpledialogfragment.form.d<?> next = it.next();
            next.d(bundle, next.f65166a.resultKey);
        }
        return bundle;
    }

    public g a1(boolean z9) {
        return (g) w0(f65182v, z9);
    }

    public g j1(FormElement... formElementArr) {
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(formElementArr.length);
        Collections.addAll(arrayList, formElementArr);
        Z().putParcelableArrayList(f65181u, arrayList);
        return this;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        for (int i4 = 0; i4 < this.f65185s.size(); i4++) {
            Bundle bundle2 = new Bundle();
            this.f65185s.get(i4).e(bundle2);
            bundle.putBundle(f65183w + i4, bundle2);
        }
        super.onSaveInstanceState(bundle);
    }

    protected String p1(String str, @Nullable String str2) {
        Bundle a02 = a0();
        if (getTargetFragment() instanceof d) {
            return ((d) getTargetFragment()).a(getTag(), str, str2, a02);
        }
        if (getActivity() instanceof d) {
            return ((d) getActivity()).a(getTag(), str, str2, a02);
        }
        return null;
    }

    protected void q1(@NonNull ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.f65186t = viewGroup;
        ArrayList parcelableArrayList = Z().getParcelableArrayList(f65181u);
        if (parcelableArrayList != null) {
            this.f65185s = new ArrayList<>(parcelableArrayList.size());
            int size = parcelableArrayList.size() - 1;
            for (int i4 = 0; i4 < parcelableArrayList.size(); i4++) {
                eltos.simpledialogfragment.form.d<?> buildViewHolder = ((FormElement) parcelableArrayList.get(i4)).buildViewHolder();
                View L0 = L0(buildViewHolder.b(), this.f65186t, false);
                buildViewHolder.f(L0, getContext(), bundle == null ? null : bundle.getBundle(f65183w + i4), new b(i4, size));
                this.f65186t.addView(L0);
                this.f65185s.add(buildViewHolder);
            }
        }
    }

    protected boolean r1() {
        int k12 = k1();
        if (k12 < 0 || !n1(k12) || k12 >= this.f65185s.size()) {
            return true;
        }
        return this.f65185s.get(k12).c(getContext());
    }

    protected void s1(int i4) {
        if (i4 < 0 || i4 >= this.f65185s.size()) {
            return;
        }
        this.f65185s.get(i4).a(this.f65184r);
    }
}
