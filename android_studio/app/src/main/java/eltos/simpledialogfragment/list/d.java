package eltos.simpledialogfragment.list;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.ArrayRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.core.util.Pair;
import eltos.simpledialogfragment.c;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: SimpleListDialog.java */
/* loaded from: classes3.dex */
public class d extends c<d> {
    public static final String Q = "SimpleListDialog.selectedLabels";
    public static final String R = "SimpleListDialog.selectedSingleLabel";
    @LayoutRes
    public static final int S = -1;
    public static final String TAG = "SimpleListDialog.";

    /* renamed from: b1  reason: collision with root package name */
    protected static final String f65269b1 = "SimpleListDialog.data_set";

    /* renamed from: g1  reason: collision with root package name */
    protected static final String f65270g1 = "SimpleListDialog.highlight";

    /* renamed from: p1  reason: collision with root package name */
    protected static final String f65271p1 = "SimpleListDialog.icon";
    ArrayList<SimpleListItem> P;
    @LayoutRes
    public static final int T = c.l.D0;
    @LayoutRes
    public static final int U = c.l.G0;
    @LayoutRes
    public static final int V = c.l.F0;
    @LayoutRes
    public static final int W = c.l.E0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleListDialog.java */
    /* loaded from: classes3.dex */
    public class a extends eltos.simpledialogfragment.list.a<String> {

        /* renamed from: j  reason: collision with root package name */
        private int f65272j;

        /* renamed from: k  reason: collision with root package name */
        eltos.simpledialogfragment.list.a<String>.AbstractC0524a f65273k = new C0525a(true, true);

        /* compiled from: SimpleListDialog.java */
        /* renamed from: eltos.simpledialogfragment.list.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0525a extends eltos.simpledialogfragment.list.a<String>.AbstractC0524a {
            C0525a(boolean z9, boolean z10) {
                super(z9, z10);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // eltos.simpledialogfragment.list.a.AbstractC0524a
            /* renamed from: g */
            public boolean d(String str, @NonNull CharSequence charSequence) {
                return e(str);
            }
        }

        a(@LayoutRes int i4, ArrayList<SimpleListItem> arrayList) {
            this.f65272j = i4;
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            Iterator<SimpleListItem> it = arrayList.iterator();
            while (it.hasNext()) {
                SimpleListItem next = it.next();
                arrayList2.add(new Pair(next.getString(), Long.valueOf(next.getId())));
            }
            u(arrayList2);
        }

        @Override // eltos.simpledialogfragment.list.a, android.widget.Adapter
        public View getView(int i4, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                view = d.this.L0(this.f65272j, viewGroup, false);
                textView = (TextView) view.findViewById(16908308);
                view.setTag(textView);
            } else {
                textView = (TextView) view.getTag();
            }
            if (d.this.Z().getBoolean(d.f65270g1)) {
                textView.setText(m(getItem(i4), d.this.getContext()));
            } else {
                textView.setText((CharSequence) getItem(i4));
            }
            return super.getView(i4, view, viewGroup);
        }

        @Override // eltos.simpledialogfragment.list.a, android.widget.Filterable
        /* renamed from: k */
        public eltos.simpledialogfragment.list.a<String>.AbstractC0524a getFilter() {
            return this.f65273k;
        }
    }

    public static d y1() {
        return new d();
    }

    public d A1(Context context, @ArrayRes int i4) {
        return D1(context.getResources().getStringArray(i4));
    }

    public d B1(Context context, @StringRes int[] iArr) {
        ArrayList<SimpleListItem> arrayList = new ArrayList<>(iArr.length);
        for (int i4 : iArr) {
            arrayList.add(new SimpleListItem(context.getString(i4), i4));
        }
        return C1(arrayList);
    }

    public d C1(ArrayList<SimpleListItem> arrayList) {
        Z().putParcelableArrayList(f65269b1, arrayList);
        return this;
    }

    public d D1(String[] strArr) {
        ArrayList<SimpleListItem> arrayList = new ArrayList<>(strArr.length);
        for (String str : strArr) {
            arrayList.add(new SimpleListItem(str, str.hashCode()));
        }
        return C1(arrayList);
    }

    public d E1(String[] strArr, long[] jArr) {
        if (strArr.length == jArr.length) {
            ArrayList<SimpleListItem> arrayList = new ArrayList<>(strArr.length);
            for (int i4 = 0; i4 < strArr.length && i4 < jArr.length; i4++) {
                arrayList.add(new SimpleListItem(strArr[i4], jArr[i4]));
            }
            return C1(arrayList);
        }
        throw new IllegalArgumentException("Length of ID-array must match label array length!");
    }

    public d F1(@LayoutRes int i4) {
        return (d) t0(f65271p1, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.list.c
    /* renamed from: G1 */
    public a s1() {
        int i4 = Z().getInt(f65271p1, -1);
        if (i4 == -1) {
            int i10 = Z().getInt("CustomListDialogchoiceMode", 0);
            boolean z9 = Z().containsKey("CustomListDialoginitCheckPos") || Z().containsKey("CustomListDialoginitCheckId");
            if (i10 == 1) {
                i4 = U;
            } else if (i10 == 2) {
                i4 = V;
            } else if (i10 == 11 && z9) {
                i4 = U;
            } else {
                i4 = T;
            }
        }
        ArrayList<SimpleListItem> parcelableArrayList = Z().getParcelableArrayList(f65269b1);
        this.P = parcelableArrayList;
        if (parcelableArrayList == null) {
            this.P = new ArrayList<>(0);
        }
        return new a(i4, this.P);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.list.c, eltos.simpledialogfragment.b
    public Bundle R0(int i4) {
        Bundle R0 = super.R0(i4);
        if (R0 != null) {
            ArrayList<Integer> integerArrayList = R0.getIntegerArrayList(c.B);
            if (integerArrayList != null) {
                ArrayList<String> arrayList = new ArrayList<>(integerArrayList.size());
                Iterator<Integer> it = integerArrayList.iterator();
                while (it.hasNext()) {
                    arrayList.add(this.P.get(it.next().intValue()).getString());
                }
                R0.putStringArrayList(Q, arrayList);
            }
            if (R0.containsKey(c.D)) {
                R0.putString(R, this.P.get(R0.getInt(c.D)).getString());
            }
        }
        return R0;
    }

    public d z1(boolean z9, boolean z10) {
        w0(f65270g1, z10);
        return (d) super.m1(z9);
    }
}
