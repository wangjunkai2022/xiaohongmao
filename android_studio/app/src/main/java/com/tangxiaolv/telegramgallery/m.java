package com.tangxiaolv.telegramgallery;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.TextViewCompat;
import com.tangxiaolv.telegramgallery.Actionbar.a;
import com.tangxiaolv.telegramgallery.Components.e;
import com.tangxiaolv.telegramgallery.Components.g;
import com.tangxiaolv.telegramgallery.Utils.g;
import com.tangxiaolv.telegramgallery.Utils.h;
import com.tangxiaolv.telegramgallery.n;
import com.tangxiaolv.telegramgallery.o;
import com.tangxiaolv.telegramgallery.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: PhotoAlbumPickerActivity.java */
/* loaded from: classes3.dex */
public class m extends com.tangxiaolv.telegramgallery.Actionbar.f implements h.c {
    public static int F = 0;
    public static String G = null;
    private static final int H = 2;
    private static final int I = 3;
    private int A;
    private final String[] B;
    private final int[] C;
    private h D;
    private n E;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<g.d> f56764k = null;

    /* renamed from: l  reason: collision with root package name */
    private ArrayList<g.d> f56765l = null;

    /* renamed from: m  reason: collision with root package name */
    private HashMap<Integer, g.k> f56766m = new HashMap<>();

    /* renamed from: n  reason: collision with root package name */
    private HashMap<Integer, Integer> f56767n = new HashMap<>();

    /* renamed from: o  reason: collision with root package name */
    private List<g.k> f56768o = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    private boolean f56769p = false;

    /* renamed from: q  reason: collision with root package name */
    private int f56770q = 2;

    /* renamed from: r  reason: collision with root package name */
    private ListView f56771r;

    /* renamed from: s  reason: collision with root package name */
    private g f56772s;

    /* renamed from: t  reason: collision with root package name */
    private FrameLayout f56773t;

    /* renamed from: u  reason: collision with root package name */
    private TextView f56774u;

    /* renamed from: v  reason: collision with root package name */
    private AppCompatTextView f56775v;

    /* renamed from: w  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Actionbar.d f56776w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f56777x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f56778y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f56779z;

    /* compiled from: PhotoAlbumPickerActivity.java */
    /* loaded from: classes3.dex */
    class a extends a.e {
        a() {
        }

        @Override // com.tangxiaolv.telegramgallery.Actionbar.a.e
        public void b(int i4) {
            if (i4 == -1) {
                m.this.t();
            } else if (i4 == 1) {
                if (m.this.D != null) {
                    m.this.u(false);
                    m.this.D.b();
                }
            } else if (i4 == 2) {
                if (m.this.A == 0) {
                    return;
                }
                m.this.A = 0;
                m.this.f56775v.setText(q.o.f58230p);
                m.this.f56774u.setText(q.o.f58206j);
                m.this.f56772s.notifyDataSetChanged();
            } else if (i4 != 3 || m.this.A == 1) {
            } else {
                m.this.A = 1;
                m.this.f56775v.setText(q.o.f58234q);
                m.this.f56774u.setText(q.o.f58222n);
                m.this.f56772s.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: PhotoAlbumPickerActivity.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m.this.f56776w.u();
        }
    }

    /* compiled from: PhotoAlbumPickerActivity.java */
    /* loaded from: classes3.dex */
    class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoAlbumPickerActivity.java */
    /* loaded from: classes3.dex */
    public class d implements ViewTreeObserver.OnPreDrawListener {
        d() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            m.this.y0();
            if (m.this.f56771r != null) {
                m.this.f56771r.getViewTreeObserver().removeOnPreDrawListener(this);
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoAlbumPickerActivity.java */
    /* loaded from: classes3.dex */
    public class e implements n.k {
        e() {
        }

        @Override // com.tangxiaolv.telegramgallery.n.k
        public boolean a(String str) {
            m.this.T();
            return m.this.D.a(str);
        }

        @Override // com.tangxiaolv.telegramgallery.n.k
        public void b() {
            m.this.b();
        }

        @Override // com.tangxiaolv.telegramgallery.n.k
        public void c(int i4) {
            Integer num = (Integer) m.this.f56767n.remove(Integer.valueOf(i4));
            if (num != null) {
                m.this.C[num.intValue() - 1] = -1;
            }
        }

        @Override // com.tangxiaolv.telegramgallery.n.k
        public int d(int i4) {
            Integer num = (Integer) m.this.f56767n.get(Integer.valueOf(i4));
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // com.tangxiaolv.telegramgallery.n.k
        public int e() {
            int length = m.this.C.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (m.this.C[i4] <= 0) {
                    return i4 + 1;
                }
            }
            return -1;
        }

        @Override // com.tangxiaolv.telegramgallery.n.k
        public void f() {
        }

        @Override // com.tangxiaolv.telegramgallery.n.k
        public void g(boolean z9) {
            if (!z9) {
                m.this.A0();
            } else {
                m.this.y().finish();
            }
            m.this.T();
        }

        @Override // com.tangxiaolv.telegramgallery.n.k
        public void h(int i4, int i10) {
            m.this.C[i10 - 1] = i10;
            m.this.f56767n.put(Integer.valueOf(i4), Integer.valueOf(i10));
        }
    }

    /* compiled from: PhotoAlbumPickerActivity.java */
    /* loaded from: classes3.dex */
    public class f extends o.d0 {

        /* renamed from: a  reason: collision with root package name */
        private g.k[] f56785a;

        /* renamed from: b  reason: collision with root package name */
        private g.k[] f56786b;

        public f(List<Object> list) {
            int size = list.size();
            this.f56785a = new g.k[size];
            this.f56786b = new g.k[size];
            for (int i4 = 0; i4 < size; i4++) {
                this.f56785a[i4] = (g.k) list.get(i4);
            }
        }

        private int q() {
            int i4 = 0;
            int i10 = 0;
            while (true) {
                g.k[] kVarArr = this.f56785a;
                if (i4 >= kVarArr.length) {
                    return i10;
                }
                if (kVarArr[i4] != null) {
                    i10++;
                }
                i4++;
            }
        }

        @Override // com.tangxiaolv.telegramgallery.o.y, com.tangxiaolv.telegramgallery.o.b0
        public boolean a(int i4) {
            return this.f56785a[i4] != null;
        }

        @Override // com.tangxiaolv.telegramgallery.o.y, com.tangxiaolv.telegramgallery.o.b0
        public void b() {
            m.this.b();
        }

        @Override // com.tangxiaolv.telegramgallery.o.y, com.tangxiaolv.telegramgallery.o.b0
        public int d() {
            return q();
        }

        @Override // com.tangxiaolv.telegramgallery.o.d0
        public void h() {
            super.h();
        }

        @Override // com.tangxiaolv.telegramgallery.o.y, com.tangxiaolv.telegramgallery.o.b0
        public boolean k() {
            return q() <= m.F;
        }

        @Override // com.tangxiaolv.telegramgallery.o.y, com.tangxiaolv.telegramgallery.o.b0
        public void m(int i4) {
            m.this.f56766m.clear();
            int i10 = 0;
            while (true) {
                g.k[] kVarArr = this.f56785a;
                if (i10 < kVarArr.length) {
                    g.k kVar = kVarArr[i10];
                    if (kVar != null) {
                        m.this.f56766m.put(Integer.valueOf(kVar.f56656c), kVar);
                    }
                    i10++;
                } else {
                    m.this.A0();
                    m.this.y().finish();
                    return;
                }
            }
        }

        @Override // com.tangxiaolv.telegramgallery.o.y, com.tangxiaolv.telegramgallery.o.b0
        public int n(int i4) {
            return i4 + 1;
        }

        @Override // com.tangxiaolv.telegramgallery.o.d0
        public void p(int i4, boolean z9) {
            g.k kVar;
            if (z9) {
                g.k[] kVarArr = this.f56785a;
                g.k[] kVarArr2 = this.f56786b;
                kVarArr[i4] = kVarArr2[i4];
                kVar = kVarArr2[i4];
                System.arraycopy(kVarArr2, i4, kVarArr, i4, 1);
                this.f56786b[i4] = null;
            } else {
                g.k[] kVarArr3 = this.f56786b;
                g.k[] kVarArr4 = this.f56785a;
                kVarArr3[i4] = kVarArr4[i4];
                kVar = kVarArr4[i4];
                System.arraycopy(kVarArr4, i4, kVarArr3, i4, 1);
                this.f56785a[i4] = null;
            }
            m.this.E.z0(kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhotoAlbumPickerActivity.java */
    /* loaded from: classes3.dex */
    public class g extends com.tangxiaolv.telegramgallery.b {

        /* renamed from: a  reason: collision with root package name */
        private Context f56788a;

        /* compiled from: PhotoAlbumPickerActivity.java */
        /* loaded from: classes3.dex */
        class a implements e.c {
            a() {
            }

            @Override // com.tangxiaolv.telegramgallery.Components.e.c
            public void a(g.d dVar) {
                m.this.z0(dVar, 0, false);
            }
        }

        /* compiled from: PhotoAlbumPickerActivity.java */
        /* loaded from: classes3.dex */
        class b implements g.c {
            b() {
            }

            @Override // com.tangxiaolv.telegramgallery.Components.g.c
            public void a(int i4) {
                m.this.z0(null, i4, false);
            }
        }

        public g(Context context) {
            this.f56788a = context;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return true;
        }

        @Override // com.tangxiaolv.telegramgallery.b, android.widget.Adapter
        public int getCount() {
            if (!m.this.f56778y && m.this.A != 0) {
                if (m.this.f56765l != null) {
                    return (int) Math.ceil(m.this.f56765l.size() / m.this.f56770q);
                }
                return 0;
            } else if (m.this.f56764k != null) {
                return (int) Math.ceil(m.this.f56764k.size() / m.this.f56770q);
            } else {
                return 0;
            }
        }

        @Override // com.tangxiaolv.telegramgallery.b, android.widget.Adapter
        public Object getItem(int i4) {
            return null;
        }

        @Override // com.tangxiaolv.telegramgallery.b, android.widget.Adapter
        public long getItemId(int i4) {
            return i4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i4) {
            if (m.this.f56778y) {
                return 0;
            }
            int unused = m.this.A;
            return 0;
        }

        @Override // com.tangxiaolv.telegramgallery.b, android.widget.Adapter
        public View getView(int i4, View view, ViewGroup viewGroup) {
            com.tangxiaolv.telegramgallery.Components.e eVar;
            com.tangxiaolv.telegramgallery.Components.e eVar2;
            int itemViewType = getItemViewType(i4);
            if (itemViewType != 0) {
                if (itemViewType == 1 && view == null) {
                    com.tangxiaolv.telegramgallery.Components.g gVar = new com.tangxiaolv.telegramgallery.Components.g(this.f56788a, m.this.f56779z);
                    gVar.setDelegate(new b());
                    return gVar;
                }
                return view;
            }
            if (view == null) {
                eVar2 = new com.tangxiaolv.telegramgallery.Components.e(this.f56788a);
                eVar2.setDelegate(new a());
                eVar = eVar2;
            } else {
                eVar = view;
                eVar2 = (com.tangxiaolv.telegramgallery.Components.e) view;
            }
            eVar2.setAlbumsCount(m.this.f56770q);
            for (int i10 = 0; i10 < m.this.f56770q; i10++) {
                int i11 = (m.this.f56770q * i4) + i10;
                if (!m.this.f56778y && m.this.A != 0) {
                    if (i11 < m.this.f56765l.size()) {
                        eVar2.c(i10, (g.d) m.this.f56765l.get(i11));
                    } else {
                        eVar2.c(i10, null);
                    }
                } else if (i11 < m.this.f56764k.size()) {
                    eVar2.c(i10, (g.d) m.this.f56764k.get(i11));
                } else {
                    eVar2.c(i10, null);
                }
            }
            eVar2.requestLayout();
            return eVar;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return (m.this.f56778y || m.this.A == 1) ? 1 : 2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i4) {
            return true;
        }
    }

    /* compiled from: PhotoAlbumPickerActivity.java */
    /* loaded from: classes3.dex */
    public interface h {
        boolean a(String str);

        void b();

        void c(ArrayList<String> arrayList, ArrayList<String> arrayList2);
    }

    public m(String[] strArr, int i4, boolean z9, String str, boolean z10) {
        F = i4;
        G = str;
        this.B = strArr;
        this.C = new int[i4];
        this.f56778y = z9;
        this.f56779z = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0() {
        if ((this.f56766m.isEmpty() && this.D == null) || this.f56777x) {
            return;
        }
        w0();
        this.f56777x = true;
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (g.k kVar : this.f56768o) {
            String str = kVar.f56661h;
            if (str != null) {
                arrayList.add(str);
                CharSequence charSequence = kVar.f56663j;
                arrayList2.add(charSequence != null ? charSequence.toString() : null);
            } else {
                String str2 = kVar.f56658e;
                if (str2 != null) {
                    arrayList.add(str2);
                    CharSequence charSequence2 = kVar.f56663j;
                    arrayList2.add(charSequence2 != null ? charSequence2.toString() : null);
                }
            }
        }
        this.D.c(arrayList, arrayList2);
    }

    private void w0() {
        Object[] objArr = new Object[F];
        for (Integer num : this.f56766m.keySet()) {
            g.k kVar = this.f56766m.get(num);
            objArr[kVar.f56654a - 1] = kVar;
        }
        this.f56768o.clear();
        for (int i4 = 0; i4 < F; i4++) {
            Object obj = objArr[i4];
            if (obj != null) {
                this.f56768o.add((g.k) obj);
            }
        }
    }

    private void x0() {
        ListView listView = this.f56771r;
        if (listView != null) {
            listView.getViewTreeObserver().addOnPreDrawListener(new d());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0() {
        if (y() == null) {
            return;
        }
        int rotation = ((WindowManager) com.tangxiaolv.telegramgallery.e.f56717a.getSystemService("window")).getDefaultDisplay().getRotation();
        this.f56770q = 2;
        if (!com.tangxiaolv.telegramgallery.Utils.a.z() && (rotation == 3 || rotation == 1)) {
            this.f56770q = 4;
        }
        this.f56772s.notifyDataSetChanged();
        if (this.f56776w != null) {
            if (!com.tangxiaolv.telegramgallery.Utils.a.z()) {
                this.f56776w.setLayoutParams((FrameLayout.LayoutParams) this.f56776w.getLayoutParams());
            }
            if (!com.tangxiaolv.telegramgallery.Utils.a.z() && com.tangxiaolv.telegramgallery.e.f56717a.getResources().getConfiguration().orientation == 2) {
                this.f56775v.setTextSize(18.0f);
            } else {
                this.f56775v.setTextSize(20.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z0(g.d dVar, int i4, boolean z9) {
        n nVar = new n(i4, F, dVar, this.f56766m, null, this.f56778y);
        this.E = nVar;
        nVar.y0(new e());
        S(this.E, false, z9);
    }

    public void B0(h hVar) {
        this.D = hVar;
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public void F(Configuration configuration) {
        super.F(configuration);
        x0();
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public boolean I() {
        this.f56769p = true;
        com.tangxiaolv.telegramgallery.Utils.g.o(this.f56046f, this.B);
        com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.E);
        return super.I();
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public void J() {
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.E);
        super.J();
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public void L() {
        super.L();
        com.tangxiaolv.telegramgallery.Actionbar.d dVar = this.f56776w;
        if (dVar != null) {
            dVar.l();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public void N() {
        super.N();
        g gVar = this.f56772s;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
        x0();
    }

    public void b() {
        List<Object> v02 = v0();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : v02) {
            g.k kVar = (g.k) obj;
            if (kVar.f56662i) {
                arrayList2.add(kVar);
            } else {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            o.E0().Z0(y());
            o E0 = o.E0();
            boolean z9 = this.f56778y;
            E0.T0(arrayList, true, 0, z9 ? 1 : 0, new f(arrayList));
        } else if (!arrayList2.isEmpty()) {
            y().S(((g.k) arrayList2.get(0)).f56658e);
        }
    }

    @Override // com.tangxiaolv.telegramgallery.Utils.h.c
    public void h(int i4, Object... objArr) {
        if (i4 == com.tangxiaolv.telegramgallery.Utils.h.E) {
            if (this.f56046f == ((Integer) objArr[0]).intValue()) {
                this.f56764k = (ArrayList) objArr[1];
                this.f56765l = (ArrayList) objArr[3];
                FrameLayout frameLayout = this.f56773t;
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
                ListView listView = this.f56771r;
                if (listView != null && listView.getEmptyView() == null) {
                    this.f56771r.setEmptyView(this.f56774u);
                }
                g gVar = this.f56772s;
                if (gVar != null) {
                    gVar.notifyDataSetChanged();
                }
                this.f56769p = false;
            }
        }
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public View r(Context context) {
        ArrayList<g.d> arrayList;
        this.f56045e.setBackgroundColor(r.f(context));
        this.f56045e.setItemsBackgroundColor(r.f(context));
        this.f56045e.setBackButtonImage(q.h.f57730r1);
        this.f56045e.setActionBarMenuOnItemClick(new a());
        FrameLayout frameLayout = new FrameLayout(context);
        this.f56043c = frameLayout;
        frameLayout.setBackgroundColor(-1118482);
        if (!this.f56778y) {
            this.A = 0;
            com.tangxiaolv.telegramgallery.Actionbar.d dVar = new com.tangxiaolv.telegramgallery.Actionbar.d(context, this.f56045e.m(), 0);
            this.f56776w = dVar;
            dVar.setSubMenuOpenSide(1);
            com.tangxiaolv.telegramgallery.Actionbar.d dVar2 = this.f56776w;
            int i4 = q.o.f58230p;
            dVar2.k(2, context.getString(i4), 0);
            this.f56776w.k(3, context.getString(q.o.f58234q), 0);
            this.f56045e.addView(this.f56776w);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f56776w.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -2;
            layoutParams.rightMargin = com.tangxiaolv.telegramgallery.Utils.a.g(40.0f);
            layoutParams.leftMargin = com.tangxiaolv.telegramgallery.Utils.a.g(56.0f);
            layoutParams.gravity = 51;
            this.f56776w.setLayoutParams(layoutParams);
            this.f56776w.setOnClickListener(new b());
            AppCompatTextView appCompatTextView = new AppCompatTextView(context);
            this.f56775v = appCompatTextView;
            appCompatTextView.setGravity(3);
            this.f56775v.setSingleLine(true);
            this.f56775v.setLines(1);
            this.f56775v.setMaxLines(1);
            this.f56775v.setEllipsize(TextUtils.TruncateAt.END);
            this.f56775v.setTextColor(r.e(context));
            this.f56775v.setCompoundDrawablesWithIntrinsicBounds(0, 0, q.h.f57750v1, 0);
            this.f56775v.setCompoundDrawablePadding(com.tangxiaolv.telegramgallery.Utils.a.g(4.0f));
            TextViewCompat.setCompoundDrawableTintList(this.f56775v, ColorStateList.valueOf(r.e(context)));
            this.f56775v.setText(i4);
            this.f56776w.addView(this.f56775v);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f56775v.getLayoutParams();
            layoutParams2.width = -2;
            layoutParams2.height = -2;
            layoutParams2.gravity = 16;
            this.f56775v.setLayoutParams(layoutParams2);
        } else {
            this.f56045e.setTitle(context.getString(q.o.f58170a));
        }
        ListView listView = new ListView(context);
        this.f56771r = listView;
        listView.setPadding(com.tangxiaolv.telegramgallery.Utils.a.g(4.0f), 0, com.tangxiaolv.telegramgallery.Utils.a.g(4.0f), com.tangxiaolv.telegramgallery.Utils.a.g(4.0f));
        this.f56771r.setClipToPadding(false);
        this.f56771r.setHorizontalScrollBarEnabled(false);
        this.f56771r.setVerticalScrollBarEnabled(false);
        this.f56771r.setSelector(new ColorDrawable(0));
        this.f56771r.setDividerHeight(0);
        this.f56771r.setDivider(null);
        this.f56771r.setDrawingCacheEnabled(false);
        this.f56771r.setScrollingCacheEnabled(false);
        frameLayout.addView(this.f56771r);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f56771r.getLayoutParams();
        layoutParams3.width = -1;
        layoutParams3.height = -1;
        this.f56771r.setLayoutParams(layoutParams3);
        ListView listView2 = this.f56771r;
        g gVar = new g(context);
        this.f56772s = gVar;
        listView2.setAdapter((ListAdapter) gVar);
        com.tangxiaolv.telegramgallery.Utils.a.F(this.f56771r, -13421773);
        TextView textView = new TextView(context);
        this.f56774u = textView;
        textView.setTextColor(-8355712);
        this.f56774u.setTextSize(20.0f);
        this.f56774u.setGravity(17);
        this.f56774u.setVisibility(8);
        this.f56774u.setText(q.o.f58206j);
        frameLayout.addView(this.f56774u);
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.f56774u.getLayoutParams();
        layoutParams4.width = -1;
        layoutParams4.height = -1;
        layoutParams4.bottomMargin = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        this.f56774u.setLayoutParams(layoutParams4);
        this.f56774u.setOnTouchListener(new c());
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.f56773t = frameLayout2;
        frameLayout2.setVisibility(8);
        frameLayout.addView(this.f56773t);
        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.f56773t.getLayoutParams();
        layoutParams5.width = -1;
        layoutParams5.height = -1;
        layoutParams5.bottomMargin = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        this.f56773t.setLayoutParams(layoutParams5);
        this.f56773t.addView(new ProgressBar(context));
        FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) this.f56773t.getLayoutParams();
        layoutParams6.width = -2;
        layoutParams6.height = -2;
        layoutParams6.gravity = 17;
        this.f56773t.setLayoutParams(layoutParams6);
        if (this.f56769p && ((arrayList = this.f56764k) == null || (arrayList != null && arrayList.isEmpty()))) {
            this.f56773t.setVisibility(0);
            this.f56771r.setEmptyView(null);
        } else {
            this.f56773t.setVisibility(8);
            this.f56771r.setEmptyView(this.f56774u);
        }
        return this.f56043c;
    }

    public List<Object> v0() {
        if (this.f56766m.size() > 0) {
            Object[] objArr = new Object[F];
            for (Integer num : this.f56766m.keySet()) {
                g.k kVar = this.f56766m.get(num);
                objArr[kVar.f56654a - 1] = kVar;
            }
            this.f56768o.clear();
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < F; i4++) {
                Object obj = objArr[i4];
                if (obj != null) {
                    arrayList.add(obj);
                    this.f56768o.add((g.k) obj);
                }
            }
            return arrayList;
        }
        return null;
    }
}
