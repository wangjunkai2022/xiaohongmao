package eltos.simpledialogfragment.color;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.color.ColorView;
import eltos.simpledialogfragment.f;
import eltos.simpledialogfragment.list.a;
import eltos.simpledialogfragment.list.c;

/* compiled from: SimpleColorDialog.java */
/* loaded from: classes3.dex */
public class a extends c<a> implements f.c {
    private static final String E2 = "SimpleColorDialog.selected";
    private static final String F2 = "SimpleColorDialog.outline";
    public static final String R = "SimpleColorDialog.color";
    public static final String S = "SimpleColorDialog.colors";
    protected static final String T1 = "SimpleColorDialog.picker";
    public static final String TAG = "SimpleColorDialog.";
    protected static final String V1 = "SimpleColorDialog.custom";

    /* renamed from: b2  reason: collision with root package name */
    protected static final String f65078b2 = "SimpleColorDialog.custom_alpha";

    /* renamed from: g1  reason: collision with root package name */
    public static final int f65079g1 = 0;

    /* renamed from: g2  reason: collision with root package name */
    protected static final String f65080g2 = "SimpleColorDialog.custom_hide_hex";

    /* renamed from: p1  reason: collision with root package name */
    public static final int f65081p1 = 16777215;

    /* renamed from: p2  reason: collision with root package name */
    protected static final String f65082p2 = "SimpleColorDialog.custom_title";

    /* renamed from: x2  reason: collision with root package name */
    protected static final String f65084x2 = "SimpleColorDialog.custom_pos";

    /* renamed from: y1  reason: collision with root package name */
    protected static final int f65085y1 = 12245589;

    /* renamed from: y2  reason: collision with root package name */
    protected static final String f65086y2 = "SimpleColorDialog.custom_neut";
    @ColorInt
    private int P = 0;
    @ColorInt
    private int Q = 0;
    @ArrayRes
    public static final int T = c.C0513c.f63502c;
    @ArrayRes
    public static final int U = c.C0513c.f63504e;
    @ArrayRes
    public static final int V = c.C0513c.f63503d;
    @ArrayRes
    public static final int W = c.C0513c.f63500a;
    @ArrayRes

    /* renamed from: b1  reason: collision with root package name */
    public static final int f65077b1 = c.C0513c.f63501b;
    @ColorInt

    /* renamed from: x1  reason: collision with root package name */
    public static final int[] f65083x1 = {-769226, -1499549, -6543440, -10011977, -12627531, -14575885, -16537100, -16728876, -16738680, -11751600, -7617718, -3285959, -5317, -16121, -26624, -43230, -8825528, -6381922, -10453621};

    /* compiled from: SimpleColorDialog.java */
    /* renamed from: eltos.simpledialogfragment.color.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    protected class C0514a extends eltos.simpledialogfragment.list.a<Integer> {

        /* compiled from: SimpleColorDialog.java */
        /* renamed from: eltos.simpledialogfragment.color.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0515a implements a.c<Integer> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a f65088a;

            C0515a(a aVar) {
                this.f65088a = aVar;
            }

            @Override // eltos.simpledialogfragment.list.a.c
            @Nullable
            /* renamed from: b */
            public Long a(Integer num) {
                return Long.valueOf(num.intValue());
            }
        }

        public C0514a(int[] iArr, boolean z9) {
            iArr = iArr == null ? new int[0] : iArr;
            int length = iArr.length + (z9 ? 1 : 0);
            Integer[] numArr = new Integer[length];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                numArr[i4] = Integer.valueOf(iArr[i4]);
            }
            if (z9) {
                numArr[length - 1] = Integer.valueOf((int) a.f65085y1);
            }
            t(numArr, new C0515a(a.this));
        }

        @Override // eltos.simpledialogfragment.list.a, android.widget.Adapter
        public View getView(int i4, View view, ViewGroup viewGroup) {
            ColorView colorView;
            if (view instanceof ColorView) {
                colorView = (ColorView) view;
            } else {
                colorView = new ColorView(a.this.getContext());
            }
            if (((Integer) getItem(i4)).intValue() == a.f65085y1) {
                colorView.setColor(a.this.P);
                colorView.setStyle(ColorView.Style.PALETTE);
            } else {
                colorView.setColor(((Integer) getItem(i4)).intValue());
                colorView.setStyle(ColorView.Style.CHECK);
            }
            int i10 = a.this.Z().getInt(a.F2, 0);
            if (i10 != 0) {
                colorView.setOutlineWidth((int) TypedValue.applyDimension(1, 2.0f, a.this.getResources().getDisplayMetrics()));
                colorView.setOutlineColor(i10);
            }
            return super.getView(i4, colorView, viewGroup);
        }
    }

    public a() {
        o1();
        p1(c.g.J1);
        f1(1);
        e1(1);
        C1(f65083x1);
        t0(f65084x2, 17039370);
    }

    private int D1(int[] iArr, int i4) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (iArr[i10] == i4) {
                return i10;
            }
        }
        return -1;
    }

    public static a z1() {
        return new a();
    }

    public a A1(@ColorInt int i4) {
        Z().putInt(R, i4);
        return this;
    }

    public a B1(Context context, @ArrayRes int i4) {
        return C1(context.getResources().getIntArray(i4));
    }

    public a C1(@ColorInt int[] iArr) {
        Z().putIntArray(S, iArr);
        return this;
    }

    public a E1(boolean z9) {
        return (a) w0(f65078b2, z9);
    }

    public a F1(boolean z9) {
        return (a) w0(f65080g2, z9);
    }

    public a G1(String str) {
        return (a) v0(f65086y2, str);
    }

    @Override // eltos.simpledialogfragment.b
    protected boolean H0() {
        return (Z().getInt("CustomListDialogchoiceMode") == 11 && this.Q == 0) ? false : true;
    }

    public a H1(String str) {
        return (a) v0(f65084x2, str);
    }

    public a I1(String str) {
        return (a) v0(f65082p2, str);
    }

    public a J1(@ColorInt int i4) {
        return (a) t0(F2, i4);
    }

    @Override // eltos.simpledialogfragment.f.c
    public boolean R(@NonNull String str, int i4, @NonNull Bundle bundle) {
        if (T1.equals(str) && i4 == -1) {
            int i10 = bundle.getInt(b.f65090y);
            this.P = i10;
            this.Q = i10;
            r1();
            if (Z().getInt("CustomListDialogchoiceMode") == 11) {
                S0();
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // eltos.simpledialogfragment.list.c, eltos.simpledialogfragment.b
    protected Bundle R0(int i4) {
        Bundle R0 = super.R0(i4);
        int i10 = (int) R0.getLong(eltos.simpledialogfragment.list.c.C);
        if (i10 == f65085y1) {
            R0.putInt(R, this.P);
        } else {
            R0.putInt(R, i10);
        }
        long[] longArray = R0.getLongArray(eltos.simpledialogfragment.list.c.A);
        if (longArray != null) {
            int[] iArr = new int[longArray.length];
            for (int i11 = 0; i11 < longArray.length; i11++) {
                if (longArray[i11] == 12245589) {
                    iArr[i11] = this.P;
                } else {
                    iArr[i11] = (int) longArray[i11];
                }
            }
            R0.putIntArray(S, iArr);
        }
        return R0;
    }

    @Override // eltos.simpledialogfragment.b, eltos.simpledialogfragment.f, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            int i4 = bundle.getInt(V1, this.P);
            this.P = i4;
            this.Q = bundle.getInt(E2, i4);
        }
    }

    @Override // eltos.simpledialogfragment.list.c, android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
        if (j4 == 12245589) {
            b e12 = ((b) ((b) ((b) ((b) b.c1().E0(getTheme())).G0(Y(f65082p2))).s0(Y(f65084x2))).q0(Y(f65086y2))).b1(Z().getBoolean(f65078b2)).e1(Z().getBoolean(f65080g2));
            int i10 = this.P;
            if (i10 != 0) {
                e12.d1(i10);
            } else {
                int i11 = this.Q;
                if (i11 != 0) {
                    e12.d1(i11);
                    this.P = this.Q;
                }
            }
            e12.y0(this, T1);
            this.Q = 0;
            return;
        }
        this.Q = (int) j4;
    }

    @Override // eltos.simpledialogfragment.list.c, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(V1, this.P);
        bundle.putInt(E2, this.Q);
        super.onSaveInstanceState(bundle);
    }

    @Override // eltos.simpledialogfragment.list.c
    protected eltos.simpledialogfragment.list.a s1() {
        int[] intArray = Z().getIntArray(S);
        if (intArray == null) {
            intArray = new int[0];
        }
        boolean z9 = Z().getBoolean(V1);
        if (this.Q == 0 && Z().containsKey(R)) {
            int i4 = Z().getInt(R, 0);
            int D1 = D1(intArray, i4);
            if (D1 < 0) {
                this.P = i4;
                this.Q = i4;
                if (z9) {
                    g1(intArray.length);
                }
            } else {
                g1(D1);
                this.Q = i4;
            }
        }
        n1().setSelector(new ColorDrawable(0));
        return new C0514a(intArray, z9);
    }

    public a y1(boolean z9) {
        return (a) w0(V1, z9);
    }
}
