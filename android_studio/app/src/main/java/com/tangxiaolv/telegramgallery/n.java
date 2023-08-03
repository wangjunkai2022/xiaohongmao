package com.tangxiaolv.telegramgallery;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tangxiaolv.telegramgallery.Actionbar.a;
import com.tangxiaolv.telegramgallery.Components.BackupImageView;
import com.tangxiaolv.telegramgallery.Utils.g;
import com.tangxiaolv.telegramgallery.Utils.h;
import com.tangxiaolv.telegramgallery.o;
import com.tangxiaolv.telegramgallery.q;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: PhotoPickerActivity.java */
/* loaded from: classes3.dex */
public class n extends com.tangxiaolv.telegramgallery.Actionbar.f implements h.c, o.b0 {
    private com.tangxiaolv.telegramgallery.Components.h A;
    private FrameLayout B;
    private TextView C;
    private com.tangxiaolv.telegramgallery.Actionbar.d D;
    private boolean F;
    private boolean G;
    private k H;

    /* renamed from: k  reason: collision with root package name */
    private int f56792k;

    /* renamed from: l  reason: collision with root package name */
    private HashMap<Integer, g.k> f56793l;

    /* renamed from: m  reason: collision with root package name */
    private ArrayList<g.l> f56794m;

    /* renamed from: o  reason: collision with root package name */
    private boolean f56796o;

    /* renamed from: p  reason: collision with root package name */
    private String f56797p;

    /* renamed from: r  reason: collision with root package name */
    private String f56799r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f56800s;

    /* renamed from: t  reason: collision with root package name */
    private int f56801t;

    /* renamed from: u  reason: collision with root package name */
    private int f56802u;

    /* renamed from: v  reason: collision with root package name */
    private int f56803v;

    /* renamed from: w  reason: collision with root package name */
    private final int f56804w;

    /* renamed from: x  reason: collision with root package name */
    private g.d f56805x;

    /* renamed from: y  reason: collision with root package name */
    private GridView f56806y;

    /* renamed from: z  reason: collision with root package name */
    private j f56807z;

    /* renamed from: n  reason: collision with root package name */
    private ArrayList<g.l> f56795n = new ArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    private boolean f56798q = true;
    private int E = 100;

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    class a extends a.e {
        a() {
        }

        @Override // com.tangxiaolv.telegramgallery.Actionbar.a.e
        public void b(int i4) {
            if (i4 == -1) {
                n.this.t();
            }
        }
    }

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n.this.t();
            n.this.H.g(true);
        }
    }

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
            ArrayList<g.k> arrayList;
            if (n.this.f56805x != null) {
                arrayList = n.this.f56805x.f56639d;
            } else if (n.this.f56795n.isEmpty() && n.this.f56799r == null) {
                arrayList = n.this.f56794m;
            } else {
                arrayList = n.this.f56795n;
            }
            ArrayList<g.k> arrayList2 = arrayList;
            if (i4 < 0 || i4 >= arrayList2.size()) {
                return;
            }
            if (n.this.D != null) {
                com.tangxiaolv.telegramgallery.Utils.a.t(n.this.D.getSearchField());
            }
            if (n.this.f56805x != null && n.this.f56805x.f56641f) {
                n.this.y().S(n.this.f56805x.f56639d.get(i4).f56658e);
                return;
            }
            o.E0().Z0(n.this.y());
            o E0 = o.E0();
            boolean z9 = n.this.G;
            E0.T0(arrayList2, false, i4, z9 ? 1 : 0, n.this);
        }
    }

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    class d implements AdapterView.OnItemLongClickListener {

        /* compiled from: PhotoPickerActivity.java */
        /* loaded from: classes3.dex */
        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i4) {
                n.this.f56794m.clear();
                if (n.this.f56807z != null) {
                    n.this.f56807z.notifyDataSetChanged();
                }
            }
        }

        d() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i4, long j4) {
            if (n.this.f56795n.isEmpty() && n.this.f56799r == null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(n.this.y());
                builder.setTitle(q.o.f58179c0).setMessage(q.o.f58194g).setPositiveButton(q.o.f58190f, new a()).setNegativeButton(q.o.f58186e, (DialogInterface.OnClickListener) null);
                n.this.Y(builder.create());
                return true;
            }
            return false;
        }
    }

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    class e implements View.OnTouchListener {
        e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    class f implements AbsListView.OnScrollListener {
        f() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i4, int i10, int i11) {
            if (i10 == 0 || i4 + i10 <= i11 - 2) {
                return;
            }
            boolean unused = n.this.f56796o;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i4) {
            if (i4 == 1) {
                com.tangxiaolv.telegramgallery.Utils.a.t(n.this.y().getCurrentFocus());
            }
        }
    }

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n.this.H.b();
        }
    }

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n.this.x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    public class i implements ViewTreeObserver.OnPreDrawListener {
        i() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            n.this.v0();
            if (n.this.f56806y != null) {
                n.this.f56806y.getViewTreeObserver().removeOnPreDrawListener(this);
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    public class j extends com.tangxiaolv.telegramgallery.b {

        /* renamed from: a  reason: collision with root package name */
        private Context f56818a;

        /* compiled from: PhotoPickerActivity.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intValue = ((Integer) ((View) view.getParent()).getTag()).intValue();
                if (n.this.f56805x != null) {
                    g.k kVar = n.this.f56805x.f56639d.get(intValue);
                    if (n.this.f56793l.containsKey(Integer.valueOf(kVar.f56656c))) {
                        kVar.f56654a = -1;
                        n.this.f56793l.remove(Integer.valueOf(kVar.f56656c));
                        kVar.f56661h = null;
                        kVar.f56660g = null;
                        n.this.i(intValue);
                        n.this.H.c(kVar.f56656c);
                    } else if (n.this.f56793l.size() < n.this.f56804w) {
                        n.this.f56793l.put(Integer.valueOf(kVar.f56656c), kVar);
                        int e4 = n.this.H.e();
                        kVar.f56654a = e4;
                        n.this.H.h(kVar.f56656c, e4);
                    } else {
                        String str = m.G;
                        String format = String.format(com.tangxiaolv.telegramgallery.e.f56717a.getString(q.o.f58202i), Integer.valueOf(n.this.f56804w));
                        if (!TextUtils.isEmpty(str)) {
                            format = m.G;
                        }
                        com.tangxiaolv.telegramgallery.Utils.a.J(format);
                    }
                    if (n.this.f56793l.size() <= n.this.f56804w) {
                        ((com.tangxiaolv.telegramgallery.Components.f) view.getParent()).c(n.this.H.d(kVar.f56656c), n.this.f56793l.containsKey(Integer.valueOf(kVar.f56656c)), true);
                    }
                } else {
                    com.tangxiaolv.telegramgallery.Utils.a.t(n.this.y().getCurrentFocus());
                    if (n.this.f56795n.isEmpty() && n.this.f56799r == null) {
                        g.l lVar = (g.l) n.this.f56794m.get(((Integer) ((View) view.getParent()).getTag()).intValue());
                    } else {
                        g.l lVar2 = (g.l) n.this.f56795n.get(((Integer) ((View) view.getParent()).getTag()).intValue());
                    }
                    ((com.tangxiaolv.telegramgallery.Components.f) view.getParent()).d(false, true);
                }
                n.this.A.a(n.this.f56793l.size(), true);
                n.this.H.f();
            }
        }

        public j(Context context) {
            this.f56818a = context;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return n.this.f56805x != null;
        }

        @Override // com.tangxiaolv.telegramgallery.b, android.widget.Adapter
        public int getCount() {
            if (n.this.f56805x == null) {
                if (n.this.f56795n.isEmpty() && n.this.f56799r == null) {
                    return n.this.f56794m.size();
                }
                if (n.this.f56792k == 0) {
                    return n.this.f56795n.size() + (n.this.f56797p == null ? 0 : 1);
                } else if (n.this.f56792k == 1) {
                    return n.this.f56795n.size() + (1 ^ (n.this.f56798q ? 1 : 0));
                }
            }
            return n.this.f56805x.f56639d.size();
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
            if (n.this.f56805x == null) {
                return (!(n.this.f56795n.isEmpty() && n.this.f56799r == null && i4 < n.this.f56794m.size()) && i4 >= n.this.f56795n.size()) ? 1 : 0;
            }
            return 0;
        }

        @Override // com.tangxiaolv.telegramgallery.b, android.widget.Adapter
        public View getView(int i4, View view, ViewGroup viewGroup) {
            g.l lVar;
            com.tangxiaolv.telegramgallery.TL.l lVar2;
            boolean I0;
            int itemViewType = getItemViewType(i4);
            int i10 = 0;
            if (itemViewType == 0) {
                com.tangxiaolv.telegramgallery.Components.f fVar = (com.tangxiaolv.telegramgallery.Components.f) view;
                if (view == null) {
                    fVar = new com.tangxiaolv.telegramgallery.Components.f(this.f56818a);
                    fVar.f56203b.setOnClickListener(new a());
                    fVar.f56203b.setVisibility(n.this.G ? 8 : 0);
                    view = fVar;
                }
                fVar.f56206e = n.this.E;
                BackupImageView backupImageView = ((com.tangxiaolv.telegramgallery.Components.f) view).f56202a;
                backupImageView.setTag(Integer.valueOf(i4));
                view.setTag(Integer.valueOf(i4));
                backupImageView.j(0, true);
                if (n.this.f56805x != null) {
                    g.k kVar = n.this.f56805x.f56639d.get(i4);
                    String str = kVar.f56660g;
                    if (str != null) {
                        backupImageView.i(str, null, this.f56818a.getResources().getDrawable(q.h.f57756w2));
                    } else if (kVar.f56658e != null) {
                        backupImageView.j(kVar.f56659f, true);
                        if (kVar.f56662i) {
                            backupImageView.i("vthumb://" + kVar.f56656c + ":" + kVar.f56658e, null, this.f56818a.getResources().getDrawable(q.h.f57756w2));
                        } else {
                            backupImageView.i("thumb://" + kVar.f56656c + ":" + kVar.f56658e, null, this.f56818a.getResources().getDrawable(q.h.f57756w2));
                        }
                    } else {
                        backupImageView.setImageResource(q.h.f57756w2);
                    }
                    fVar.c(n.this.H.d(kVar.f56656c), n.this.f56793l.containsKey(Integer.valueOf(kVar.f56656c)), false);
                    I0 = o.E0().I0(kVar.f56658e);
                } else {
                    if (n.this.f56795n.isEmpty() && n.this.f56799r == null) {
                        lVar = (g.l) n.this.f56794m.get(i4);
                    } else {
                        lVar = (g.l) n.this.f56795n.get(i4);
                    }
                    String str2 = lVar.f56673j;
                    if (str2 != null) {
                        backupImageView.i(str2, null, this.f56818a.getResources().getDrawable(q.h.f57756w2));
                    } else {
                        String str3 = lVar.f56666c;
                        if (str3 != null && str3.length() > 0) {
                            backupImageView.i(lVar.f56666c, null, this.f56818a.getResources().getDrawable(q.h.f57756w2));
                        } else {
                            com.tangxiaolv.telegramgallery.TL.b bVar = lVar.f56676m;
                            if (bVar != null && (lVar2 = bVar.f56255j) != null) {
                                backupImageView.d(lVar2.f56347d, null, this.f56818a.getResources().getDrawable(q.h.f57756w2));
                            } else {
                                backupImageView.setImageResource(q.h.f57756w2);
                            }
                        }
                    }
                    fVar.d(false, false);
                    if (lVar.f56676m != null) {
                        I0 = o.E0().I0(com.tangxiaolv.telegramgallery.Utils.d.G(lVar.f56676m, true).getAbsolutePath());
                    } else {
                        I0 = o.E0().I0(lVar.f56665b);
                    }
                }
                backupImageView.getImageReceiver().q0(!I0, true);
                fVar.f56204c.setVisibility((n.this.G || I0) ? 8 : 8);
            } else if (itemViewType == 1) {
                if (view == null) {
                    view = ((LayoutInflater) this.f56818a.getSystemService("layout_inflater")).inflate(q.l.F0, viewGroup, false);
                }
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.width = n.this.E;
                layoutParams.height = n.this.E;
                view.setLayoutParams(layoutParams);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (n.this.f56805x != null) {
                return n.this.f56805x.f56639d.isEmpty();
            }
            if (n.this.f56795n.isEmpty() && n.this.f56799r == null) {
                return n.this.f56794m.isEmpty();
            }
            return n.this.f56795n.isEmpty();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i4) {
            if (n.this.f56805x == null) {
                return (n.this.f56795n.isEmpty() && n.this.f56799r == null) ? i4 < n.this.f56794m.size() : i4 < n.this.f56795n.size();
            }
            return true;
        }
    }

    /* compiled from: PhotoPickerActivity.java */
    /* loaded from: classes3.dex */
    public interface k {
        boolean a(String str);

        void b();

        void c(int i4);

        int d(int i4);

        int e();

        void f();

        void g(boolean z9);

        void h(int i4, int i10);
    }

    public n(int i4, int i10, g.d dVar, HashMap<Integer, g.k> hashMap, ArrayList<g.l> arrayList, boolean z9) {
        this.f56804w = i10;
        this.f56805x = dVar;
        this.f56793l = hashMap;
        this.f56792k = i4;
        this.f56794m = arrayList;
        this.G = z9;
    }

    private void A0() {
        j jVar = this.f56807z;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
        if ((this.f56796o && this.f56795n.isEmpty()) || (this.f56800s && this.f56799r == null)) {
            this.B.setVisibility(0);
            this.f56806y.setEmptyView(null);
            this.C.setVisibility(8);
            return;
        }
        this.B.setVisibility(8);
        this.C.setVisibility(0);
        this.f56806y.setEmptyView(this.C);
    }

    private void u0() {
        GridView gridView = this.f56806y;
        if (gridView != null) {
            gridView.getViewTreeObserver().addOnPreDrawListener(new i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0() {
        if (y() == null) {
            return;
        }
        int firstVisiblePosition = this.f56806y.getFirstVisiblePosition();
        int rotation = ((WindowManager) com.tangxiaolv.telegramgallery.e.f56717a.getSystemService("window")).getDefaultDisplay().getRotation();
        int i4 = 3;
        if (!com.tangxiaolv.telegramgallery.Utils.a.z() && (rotation == 3 || rotation == 1)) {
            i4 = 5;
        }
        this.f56806y.setNumColumns(i4);
        if (com.tangxiaolv.telegramgallery.Utils.a.z()) {
            this.E = (com.tangxiaolv.telegramgallery.Utils.a.g(490.0f) - ((i4 + 1) * com.tangxiaolv.telegramgallery.Utils.a.g(4.0f))) / i4;
        } else {
            this.E = (com.tangxiaolv.telegramgallery.Utils.a.f56375d.x - ((i4 + 1) * com.tangxiaolv.telegramgallery.Utils.a.g(4.0f))) / i4;
        }
        this.f56806y.setColumnWidth(this.E);
        this.f56807z.notifyDataSetChanged();
        this.f56806y.setSelection(firstVisiblePosition);
        if (this.f56805x == null) {
            this.C.setPadding(0, 0, 0, (int) ((com.tangxiaolv.telegramgallery.Utils.a.f56375d.y - com.tangxiaolv.telegramgallery.Actionbar.a.getCurrentActionBarHeight()) * 0.4f));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.tangxiaolv.telegramgallery.Components.f w0(int r6) {
        /*
            r5 = this;
            android.widget.GridView r0 = r5.f56806y
            int r0 = r0.getChildCount()
            r1 = 0
        L7:
            if (r1 >= r0) goto L50
            android.widget.GridView r2 = r5.f56806y
            android.view.View r2 = r2.getChildAt(r1)
            boolean r3 = r2 instanceof com.tangxiaolv.telegramgallery.Components.f
            if (r3 == 0) goto L4d
            com.tangxiaolv.telegramgallery.Components.f r2 = (com.tangxiaolv.telegramgallery.Components.f) r2
            com.tangxiaolv.telegramgallery.Components.BackupImageView r3 = r2.f56202a
            java.lang.Object r3 = r3.getTag()
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            com.tangxiaolv.telegramgallery.Utils.g$d r4 = r5.f56805x
            if (r4 == 0) goto L30
            if (r3 < 0) goto L4d
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$k> r4 = r4.f56639d
            int r4 = r4.size()
            if (r3 < r4) goto L4a
            goto L4d
        L30:
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$l> r4 = r5.f56795n
            boolean r4 = r4.isEmpty()
            if (r4 == 0) goto L3f
            java.lang.String r4 = r5.f56799r
            if (r4 != 0) goto L3f
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$l> r4 = r5.f56794m
            goto L41
        L3f:
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$l> r4 = r5.f56795n
        L41:
            if (r3 < 0) goto L4d
            int r4 = r4.size()
            if (r3 < r4) goto L4a
            goto L4d
        L4a:
            if (r3 != r6) goto L4d
            return r2
        L4d:
            int r1 = r1 + 1
            goto L7
        L50:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.n.w0(int):com.tangxiaolv.telegramgallery.Components.f");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        k kVar;
        if (this.f56793l.isEmpty() || (kVar = this.H) == null || this.F) {
            return;
        }
        this.F = true;
        kVar.g(false);
        t();
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public void F(Configuration configuration) {
        super.F(configuration);
        u0();
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public boolean I() {
        return super.I();
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public void J() {
        super.J();
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public void N() {
        super.N();
        j jVar = this.f56807z;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
        com.tangxiaolv.telegramgallery.Actionbar.d dVar = this.D;
        if (dVar != null) {
            dVar.o(true);
            y().getWindow().setSoftInputMode(32);
        }
        u0();
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public void O(boolean z9, boolean z10) {
        com.tangxiaolv.telegramgallery.Actionbar.d dVar;
        if (!z9 || (dVar = this.D) == null) {
            return;
        }
        com.tangxiaolv.telegramgallery.Utils.a.I(dVar.getSearchField());
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public boolean a(int i4) {
        g.d dVar = this.f56805x;
        return dVar != null && i4 >= 0 && i4 < dVar.f56639d.size() && this.f56793l.containsKey(Integer.valueOf(this.f56805x.f56639d.get(i4).f56656c));
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public void b() {
        this.H.b();
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public void c() {
        j jVar = this.f56807z;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public int d() {
        return this.f56793l.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0055 A[SYNTHETIC] */
    @Override // com.tangxiaolv.telegramgallery.o.b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void e(com.tangxiaolv.telegramgallery.TL.d r6, int r7) {
        /*
            r5 = this;
            android.widget.GridView r6 = r5.f56806y
            int r6 = r6.getChildCount()
            r0 = 0
            r1 = 0
        L8:
            if (r1 >= r6) goto L58
            android.widget.GridView r2 = r5.f56806y
            android.view.View r2 = r2.getChildAt(r1)
            java.lang.Object r3 = r2.getTag()
            if (r3 != 0) goto L17
            goto L55
        L17:
            r3 = r2
            com.tangxiaolv.telegramgallery.Components.f r3 = (com.tangxiaolv.telegramgallery.Components.f) r3
            java.lang.Object r2 = r2.getTag()
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            com.tangxiaolv.telegramgallery.Utils.g$d r4 = r5.f56805x
            if (r4 == 0) goto L33
            if (r2 < 0) goto L55
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$k> r4 = r4.f56639d
            int r4 = r4.size()
            if (r2 < r4) goto L4d
            goto L55
        L33:
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$l> r4 = r5.f56795n
            boolean r4 = r4.isEmpty()
            if (r4 == 0) goto L42
            java.lang.String r4 = r5.f56799r
            if (r4 != 0) goto L42
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$l> r4 = r5.f56794m
            goto L44
        L42:
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$l> r4 = r5.f56795n
        L44:
            if (r2 < 0) goto L55
            int r4 = r4.size()
            if (r2 < r4) goto L4d
            goto L55
        L4d:
            if (r2 != r7) goto L55
            com.tangxiaolv.telegramgallery.Components.b r6 = r3.f56204c
            r6.setVisibility(r0)
            goto L58
        L55:
            int r1 = r1 + 1
            goto L8
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.n.e(com.tangxiaolv.telegramgallery.TL.d, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @Override // com.tangxiaolv.telegramgallery.o.b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void f(int r9) {
        /*
            r8 = this;
            com.tangxiaolv.telegramgallery.Utils.g$d r0 = r8.f56805x
            r1 = -1
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L68
            if (r9 < 0) goto L67
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$k> r0 = r0.f56639d
            int r0 = r0.size()
            if (r9 < r0) goto L12
            goto L67
        L12:
            com.tangxiaolv.telegramgallery.Utils.g$d r0 = r8.f56805x
            java.util.ArrayList<com.tangxiaolv.telegramgallery.Utils.g$k> r0 = r0.f56639d
            java.lang.Object r0 = r0.get(r9)
            com.tangxiaolv.telegramgallery.Utils.g$k r0 = (com.tangxiaolv.telegramgallery.Utils.g.k) r0
            int r4 = r0.f56656c
            java.util.HashMap<java.lang.Integer, com.tangxiaolv.telegramgallery.Utils.g$k> r5 = r8.f56793l
            java.lang.Integer r6 = java.lang.Integer.valueOf(r4)
            boolean r5 = r5.containsKey(r6)
            if (r5 == 0) goto L41
            r0.f56654a = r1
            java.util.HashMap<java.lang.Integer, com.tangxiaolv.telegramgallery.Utils.g$k> r1 = r8.f56793l
            int r5 = r0.f56656c
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r1.remove(r5)
            com.tangxiaolv.telegramgallery.n$k r1 = r8.H
            int r0 = r0.f56656c
            r1.c(r0)
            r1 = r4
            r0 = 0
            goto L69
        L41:
            java.util.HashMap<java.lang.Integer, com.tangxiaolv.telegramgallery.Utils.g$k> r1 = r8.f56793l
            int r1 = r1.size()
            int r5 = r8.f56804w
            if (r1 >= r5) goto L65
            java.util.HashMap<java.lang.Integer, com.tangxiaolv.telegramgallery.Utils.g$k> r1 = r8.f56793l
            int r5 = r0.f56656c
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r1.put(r5, r0)
            com.tangxiaolv.telegramgallery.n$k r1 = r8.H
            int r1 = r1.e()
            r0.f56654a = r1
            com.tangxiaolv.telegramgallery.n$k r5 = r8.H
            int r0 = r0.f56656c
            r5.h(r0, r1)
        L65:
            r1 = r4
            goto L68
        L67:
            return
        L68:
            r0 = 1
        L69:
            java.util.HashMap<java.lang.Integer, com.tangxiaolv.telegramgallery.Utils.g$k> r4 = r8.f56793l
            int r4 = r4.size()
            int r5 = r8.f56804w
            if (r4 > r5) goto Lad
            android.widget.GridView r4 = r8.f56806y
            int r4 = r4.getChildCount()
            r5 = 0
        L7a:
            if (r5 >= r4) goto L9d
            android.widget.GridView r6 = r8.f56806y
            android.view.View r6 = r6.getChildAt(r5)
            java.lang.Object r7 = r6.getTag()
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            if (r7 != r9) goto L9a
            com.tangxiaolv.telegramgallery.Components.f r6 = (com.tangxiaolv.telegramgallery.Components.f) r6
            com.tangxiaolv.telegramgallery.n$k r9 = r8.H
            int r9 = r9.d(r1)
            r6.c(r9, r0, r2)
            goto L9d
        L9a:
            int r5 = r5 + 1
            goto L7a
        L9d:
            com.tangxiaolv.telegramgallery.Components.h r9 = r8.A
            java.util.HashMap<java.lang.Integer, com.tangxiaolv.telegramgallery.Utils.g$k> r0 = r8.f56793l
            int r0 = r0.size()
            r9.a(r0, r3)
            com.tangxiaolv.telegramgallery.n$k r9 = r8.H
            r9.f()
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.n.f(int):void");
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public boolean g() {
        return this.G;
    }

    @Override // com.tangxiaolv.telegramgallery.Utils.h.c
    public void h(int i4, Object... objArr) {
        if (i4 == com.tangxiaolv.telegramgallery.Utils.h.f56682k) {
            T();
        } else if (i4 == com.tangxiaolv.telegramgallery.Utils.h.f56688q && this.f56805x == null && this.f56792k == ((Integer) objArr[0]).intValue()) {
            this.f56794m = (ArrayList) objArr[1];
            this.f56800s = false;
            A0();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public void i(int i4) {
        ArrayList<g.l> arrayList;
        com.tangxiaolv.telegramgallery.TL.l lVar;
        com.tangxiaolv.telegramgallery.Components.f w02 = w0(i4);
        if (w02 != null) {
            if (this.f56805x != null) {
                w02.f56202a.j(0, true);
                g.k kVar = this.f56805x.f56639d.get(i4);
                String str = kVar.f56660g;
                if (str != null) {
                    w02.f56202a.i(str, null, w02.getContext().getResources().getDrawable(q.h.f57756w2));
                    return;
                } else if (kVar.f56658e != null) {
                    w02.f56202a.j(kVar.f56659f, true);
                    if (kVar.f56662i) {
                        BackupImageView backupImageView = w02.f56202a;
                        backupImageView.i("vthumb://" + kVar.f56656c + ":" + kVar.f56658e, null, w02.getContext().getResources().getDrawable(q.h.f57756w2));
                        return;
                    }
                    BackupImageView backupImageView2 = w02.f56202a;
                    backupImageView2.i("thumb://" + kVar.f56656c + ":" + kVar.f56658e, null, w02.getContext().getResources().getDrawable(q.h.f57756w2));
                    return;
                } else {
                    w02.f56202a.setImageResource(q.h.f57756w2);
                    return;
                }
            }
            if (this.f56795n.isEmpty() && this.f56799r == null) {
                arrayList = this.f56794m;
            } else {
                arrayList = this.f56795n;
            }
            g.l lVar2 = arrayList.get(i4);
            com.tangxiaolv.telegramgallery.TL.b bVar = lVar2.f56676m;
            if (bVar != null && (lVar = bVar.f56255j) != null) {
                w02.f56202a.d(lVar.f56347d, null, w02.getContext().getResources().getDrawable(q.h.f57756w2));
                return;
            }
            String str2 = lVar2.f56673j;
            if (str2 != null) {
                w02.f56202a.i(str2, null, w02.getContext().getResources().getDrawable(q.h.f57756w2));
                return;
            }
            String str3 = lVar2.f56666c;
            if (str3 != null && str3.length() > 0) {
                w02.f56202a.i(lVar2.f56666c, null, w02.getContext().getResources().getDrawable(q.h.f57756w2));
            } else {
                w02.f56202a.setImageResource(q.h.f57756w2);
            }
        }
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public Bitmap j(com.tangxiaolv.telegramgallery.TL.d dVar, int i4) {
        com.tangxiaolv.telegramgallery.Components.f w02 = w0(i4);
        if (w02 != null) {
            return w02.f56202a.getImageReceiver().g();
        }
        return null;
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public boolean k() {
        return this.f56793l.size() <= this.f56804w;
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public boolean l() {
        this.H.g(true);
        t();
        return true;
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public void m(int i4) {
        if (this.G) {
            this.f56793l.clear();
            if (i4 < 0 || i4 >= this.f56805x.f56639d.size()) {
                return;
            }
            g.k kVar = this.f56805x.f56639d.get(i4);
            kVar.f56654a = 1;
            this.f56793l.put(Integer.valueOf(kVar.f56656c), kVar);
        } else if (this.f56805x != null && this.f56793l.isEmpty()) {
            if (i4 < 0 || i4 >= this.f56805x.f56639d.size()) {
                return;
            }
            g.k kVar2 = this.f56805x.f56639d.get(i4);
            this.f56793l.put(Integer.valueOf(kVar2.f56656c), kVar2);
        }
        x0();
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public int n(int i4) {
        return this.H.d(this.f56805x.f56639d.get(i4).f56656c);
    }

    @Override // com.tangxiaolv.telegramgallery.o.b0
    public o.c0 o(com.tangxiaolv.telegramgallery.TL.d dVar, int i4) {
        com.tangxiaolv.telegramgallery.Components.f w02 = w0(i4);
        if (w02 != null) {
            int[] iArr = new int[2];
            w02.f56202a.getLocationInWindow(iArr);
            o.c0 c0Var = new o.c0();
            c0Var.f56893b = iArr[0];
            c0Var.f56894c = iArr[1] - com.tangxiaolv.telegramgallery.Utils.a.f56373b;
            c0Var.f56895d = this.f56806y;
            com.tangxiaolv.telegramgallery.k imageReceiver = w02.f56202a.getImageReceiver();
            c0Var.f56892a = imageReceiver;
            c0Var.f56896e = imageReceiver.g();
            c0Var.f56903l = w02.f56202a.getScaleX();
            w02.f56204c.setVisibility(8);
            return c0Var;
        }
        return null;
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.f
    public View r(Context context) {
        this.f56045e.setBackgroundColor(r.f(context));
        this.f56045e.setItemsBackgroundColor(r.f(context));
        this.f56045e.setBackButtonImage(q.h.f57730r1);
        g.d dVar = this.f56805x;
        if (dVar != null) {
            this.f56045e.setTitle(dVar.f56637b);
        }
        this.f56045e.setActionBarMenuOnItemClick(new a());
        com.tangxiaolv.telegramgallery.Actionbar.c m9 = this.f56045e.m();
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams d4 = com.tangxiaolv.telegramgallery.Utils.f.d(-2, -1);
        textView.setTextSize(18.0f);
        textView.setText(q.o.f58186e);
        textView.setTextColor(r.e(context));
        textView.setGravity(21);
        d4.setMargins(0, 0, com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), 0);
        textView.setLayoutParams(d4);
        textView.setOnClickListener(new b());
        m9.addView(textView);
        if (this.f56805x == null) {
            int i4 = this.f56792k;
            if (i4 == 0) {
                this.D.getSearchField().setHint(q.o.f58258w);
            } else if (i4 == 1) {
                this.D.getSearchField().setHint(q.o.f58246t);
            }
        }
        FrameLayout frameLayout = new FrameLayout(context);
        this.f56043c = frameLayout;
        frameLayout.setBackgroundColor(-1118482);
        GridView gridView = new GridView(context);
        this.f56806y = gridView;
        gridView.setPadding(com.tangxiaolv.telegramgallery.Utils.a.g(4.0f), com.tangxiaolv.telegramgallery.Utils.a.g(4.0f), com.tangxiaolv.telegramgallery.Utils.a.g(4.0f), com.tangxiaolv.telegramgallery.Utils.a.g(4.0f));
        this.f56806y.setClipToPadding(false);
        this.f56806y.setDrawSelectorOnTop(true);
        this.f56806y.setStretchMode(2);
        this.f56806y.setHorizontalScrollBarEnabled(false);
        this.f56806y.setVerticalScrollBarEnabled(false);
        this.f56806y.setNumColumns(-1);
        this.f56806y.setVerticalSpacing(com.tangxiaolv.telegramgallery.Utils.a.g(4.0f));
        this.f56806y.setHorizontalSpacing(com.tangxiaolv.telegramgallery.Utils.a.g(4.0f));
        this.f56806y.setSelector(q.h.Y1);
        frameLayout.addView(this.f56806y);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f56806y.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.bottomMargin = this.G ? 0 : com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        this.f56806y.setLayoutParams(layoutParams);
        GridView gridView2 = this.f56806y;
        j jVar = new j(context);
        this.f56807z = jVar;
        gridView2.setAdapter((ListAdapter) jVar);
        com.tangxiaolv.telegramgallery.Utils.a.F(this.f56806y, -13421773);
        this.f56806y.setOnItemClickListener(new c());
        if (this.f56805x == null) {
            this.f56806y.setOnItemLongClickListener(new d());
        }
        TextView textView2 = new TextView(context);
        this.C = textView2;
        textView2.setTextColor(-8355712);
        this.C.setTextSize(20.0f);
        this.C.setGravity(17);
        this.C.setVisibility(8);
        if (this.f56805x != null) {
            this.C.setText(q.o.f58206j);
        } else {
            int i10 = this.f56792k;
            if (i10 == 0) {
                this.C.setText(q.o.f58214l);
            } else if (i10 == 1) {
                this.C.setText(q.o.f58210k);
            }
        }
        frameLayout.addView(this.C);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.C.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        layoutParams2.bottomMargin = this.G ? 0 : com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        this.C.setLayoutParams(layoutParams2);
        this.C.setOnTouchListener(new e());
        if (this.f56805x == null) {
            this.f56806y.setOnScrollListener(new f());
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.B = frameLayout2;
            frameLayout2.setVisibility(8);
            frameLayout.addView(this.B);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.B.getLayoutParams();
            layoutParams3.width = -1;
            layoutParams3.height = -1;
            layoutParams3.bottomMargin = this.G ? 0 : com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
            this.B.setLayoutParams(layoutParams3);
            ProgressBar progressBar = new ProgressBar(context);
            this.B.addView(progressBar);
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) progressBar.getLayoutParams();
            layoutParams4.width = -2;
            layoutParams4.height = -2;
            layoutParams4.gravity = 17;
            progressBar.setLayoutParams(layoutParams4);
            A0();
        }
        com.tangxiaolv.telegramgallery.Components.h hVar = new com.tangxiaolv.telegramgallery.Components.h(context);
        this.A = hVar;
        frameLayout.addView(hVar);
        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.A.getLayoutParams();
        layoutParams5.width = -1;
        layoutParams5.height = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        layoutParams5.gravity = 80;
        this.A.setLayoutParams(layoutParams5);
        this.A.f56220b.setOnClickListener(new g());
        this.A.f56219a.setOnClickListener(new h());
        if (this.G) {
            this.A.setVisibility(8);
        }
        this.f56806y.setEmptyView(this.C);
        this.A.a(this.f56793l.size(), true);
        return this.f56043c;
    }

    public void y0(k kVar) {
        this.H = kVar;
    }

    public void z0(g.k kVar) {
        int i4 = kVar.f56656c;
        g.d dVar = this.f56805x;
        if (dVar != null) {
            int size = dVar.f56639d.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    i10 = -1;
                    break;
                } else if (i4 == this.f56805x.f56639d.get(i10).f56656c) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 != -1) {
                f(i10);
                return;
            }
            g.k kVar2 = this.f56793l.get(Integer.valueOf(i4));
            if (kVar2 != null) {
                kVar2.f56654a = -1;
                this.f56793l.remove(Integer.valueOf(kVar2.f56656c));
                this.H.c(i4);
            } else {
                this.f56793l.put(Integer.valueOf(i4), kVar);
                int e4 = this.H.e();
                kVar.f56654a = e4;
                this.H.h(i4, e4);
            }
            this.A.a(this.f56793l.size(), true);
        }
    }
}
