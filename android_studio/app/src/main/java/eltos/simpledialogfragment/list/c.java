package eltos.simpledialogfragment.list;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.EditText;
import androidx.annotation.DimenRes;
import androidx.annotation.StringRes;
import eltos.simpledialogfragment.list.c;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CustomListDialog.java */
/* loaded from: classes3.dex */
public abstract class c<This extends c<This>> extends eltos.simpledialogfragment.b<This> implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
    public static final String A = "CustomListDialogselectedIds";
    public static final String B = "CustomListDialogselectedPos";
    public static final String C = "CustomListDialogselectedSingleId";
    public static final String D = "CustomListDialogselectedSinglePos";
    protected static final String E = "CustomListDialogchoiceMode";
    protected static final String F = "CustomListDialogchoiceMin";
    protected static final String G = "CustomListDialogchoiceMax";
    protected static final String H = "CustomListDialoginitCheckPos";
    protected static final String I = "CustomListDialoginitCheckId";
    private static final String J = "CustomListDialoggrid";
    private static final String K = "CustomListDialoggridN";
    private static final String L = "CustomListDialoggridW";
    private static final String M = "CustomListDialogshowDivider";
    private static final String N = "CustomListDialogfilter";
    private static final String O = "CustomListDialogemptyText";

    /* renamed from: v  reason: collision with root package name */
    protected static final String f65258v = "CustomListDialog";

    /* renamed from: w  reason: collision with root package name */
    public static final int f65259w = 0;

    /* renamed from: x  reason: collision with root package name */
    public static final int f65260x = 1;

    /* renamed from: y  reason: collision with root package name */
    public static final int f65261y = 11;

    /* renamed from: z  reason: collision with root package name */
    public static final int f65262z = 2;

    /* renamed from: r  reason: collision with root package name */
    private boolean f65263r = false;

    /* renamed from: s  reason: collision with root package name */
    private AbsListView f65264s;

    /* renamed from: t  reason: collision with root package name */
    private eltos.simpledialogfragment.list.a<?> f65265t;

    /* renamed from: u  reason: collision with root package name */
    private EditText f65266u;

    /* compiled from: CustomListDialog.java */
    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (c.this.f65265t.getFilter() != null) {
                c.this.f65265t.getFilter().filter(editable);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* compiled from: CustomListDialog.java */
    /* loaded from: classes3.dex */
    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
            c.this.onItemClick(adapterView, view, i4, j4);
            c.this.f65265t.A(i4);
            c.this.f65265t.notifyDataSetChanged();
            c.this.v1();
            if (c.this.f65265t.f() <= 0 || c.this.Z().getInt(c.E) != 11) {
                return;
            }
            c.this.S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v1() {
        boolean z9 = true;
        if (Z().getInt(E) == 0) {
            V0(true);
            return;
        }
        int i4 = Z().getInt(F, -1);
        int i10 = Z().getInt(G, -1);
        if ((i4 >= 0 && this.f65265t.f() < i4) || (i10 >= 0 && this.f65265t.f() > i10)) {
            z9 = false;
        }
        V0(z9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00a0, code lost:
        if (r1 != 11) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0151  */
    @Override // eltos.simpledialogfragment.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected android.view.View M0(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: eltos.simpledialogfragment.list.c.M0(android.os.Bundle):android.view.View");
    }

    @Override // eltos.simpledialogfragment.b
    protected void N0() {
        v1();
        if (Z().getBoolean(N)) {
            D0(this.f65266u);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.b
    public Bundle R0(int i4) {
        Bundle bundle = new Bundle();
        ArrayList<Integer> h4 = this.f65265t.h();
        ArrayList<Long> g4 = this.f65265t.g();
        if (Z().getInt(E) != 0) {
            bundle.putIntegerArrayList(B, h4);
            int size = g4.size();
            long[] jArr = new long[size];
            for (int i10 = 0; i10 < size; i10++) {
                jArr[i10] = g4.get(i10).longValue();
            }
            bundle.putLongArray(A, jArr);
        }
        if (Z().getInt(E) == 1 || Z().getInt(E) == 11) {
            if (h4.size() >= 1) {
                bundle.putInt(D, h4.get(0).intValue());
            }
            if (g4.size() >= 1) {
                bundle.putLong(C, g4.get(0).longValue());
            }
        }
        return bundle;
    }

    public This a1(long j4) {
        return c1(new long[]{j4});
    }

    public This b1(List<Long> list) {
        int size = list.size();
        long[] jArr = new long[size];
        for (int i4 = 0; i4 < size; i4++) {
            jArr[i4] = list.get(i4).longValue();
        }
        return c1(jArr);
    }

    public This c1(long[] jArr) {
        Z().putLongArray(I, jArr);
        return this;
    }

    public This d1(int i4) {
        return (This) t0(G, i4);
    }

    public This e1(int i4) {
        return (This) t0(F, i4);
    }

    public This f1(int i4) {
        if (!this.f65263r && i4 == 11) {
            s0(null);
        }
        return (This) t0(E, i4);
    }

    public This g1(int i4) {
        return i1(new int[]{i4});
    }

    public This h1(List<Integer> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr[i4] = list.get(i4).intValue();
        }
        return i1(iArr);
    }

    public This i1(int[] iArr) {
        Z().putIntArray(H, iArr);
        return this;
    }

    public This j1(boolean z9) {
        return (This) w0(M, z9);
    }

    public This k1(@StringRes int i4) {
        return (This) t0(O, i4);
    }

    public This l1(String str) {
        return (This) v0(O, str);
    }

    public This m1(boolean z9) {
        return (This) w0(N, z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbsListView n1() {
        return this.f65264s;
    }

    public This o1() {
        return (This) w0(J, true);
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i4, long j4) {
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putIntegerArrayList(B, this.f65265t.h());
        super.onSaveInstanceState(bundle);
    }

    public This p1(@DimenRes int i4) {
        return (This) t0(L, i4);
    }

    public This q1(int i4) {
        return (This) t0(K, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r1() {
        this.f65265t.notifyDataSetChanged();
    }

    protected abstract eltos.simpledialogfragment.list.a s1();

    @Override // eltos.simpledialogfragment.f
    /* renamed from: t1 */
    public This r0(int i4) {
        this.f65263r = true;
        return (This) super.r0(i4);
    }

    @Override // eltos.simpledialogfragment.f
    /* renamed from: u1 */
    public This s0(String str) {
        this.f65263r = true;
        return (This) super.s0(str);
    }
}
