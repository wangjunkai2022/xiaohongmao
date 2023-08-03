package com.google.android.play.core.splitinstall.testing;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.play.core.internal.j1;
import com.google.android.play.core.internal.n1;
import com.google.android.play.core.splitinstall.SplitInstallException;
import com.google.android.play.core.splitinstall.f1;
import com.google.android.play.core.splitinstall.u0;
import com.google.android.play.core.splitinstall.y0;
import com.google.android.play.core.splitinstall.zzo;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class a implements com.google.android.play.core.splitinstall.c {

    /* renamed from: p  reason: collision with root package name */
    private static final long f31934p = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: q  reason: collision with root package name */
    public static final /* synthetic */ int f31935q = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f31936a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f31937b;

    /* renamed from: c  reason: collision with root package name */
    private final f1 f31938c;

    /* renamed from: d  reason: collision with root package name */
    private final n1 f31939d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.play.core.internal.f1 f31940e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.play.core.internal.g f31941f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.play.core.internal.g f31942g;

    /* renamed from: h  reason: collision with root package name */
    private final Executor f31943h;

    /* renamed from: i  reason: collision with root package name */
    private final u0 f31944i;

    /* renamed from: j  reason: collision with root package name */
    private final File f31945j;

    /* renamed from: k  reason: collision with root package name */
    private final AtomicReference f31946k;

    /* renamed from: l  reason: collision with root package name */
    private final Set f31947l;

    /* renamed from: m  reason: collision with root package name */
    private final Set f31948m;

    /* renamed from: n  reason: collision with root package name */
    private final AtomicBoolean f31949n;

    /* renamed from: o  reason: collision with root package name */
    private final f f31950o;

    @Deprecated
    public a(Context context, File file) {
        this(context, file, new f1(context, context.getPackageName()), l.f31975a);
    }

    @Nullable
    private final com.google.android.play.core.splitinstall.f A() {
        return (com.google.android.play.core.splitinstall.f) this.f31946k.get();
    }

    @Nullable
    private final synchronized com.google.android.play.core.splitinstall.f B(r rVar) {
        com.google.android.play.core.splitinstall.f A = A();
        com.google.android.play.core.splitinstall.f a10 = rVar.a(A);
        if (this.f31946k.compareAndSet(A, a10)) {
            return a10;
        }
        return null;
    }

    private final com.google.android.play.core.tasks.d C(@g3.a final int i4) {
        B(new r() { // from class: com.google.android.play.core.splitinstall.testing.i
            @Override // com.google.android.play.core.splitinstall.testing.r
            public final com.google.android.play.core.splitinstall.f a(com.google.android.play.core.splitinstall.f fVar) {
                int i10 = i4;
                int i11 = a.f31935q;
                if (fVar == null) {
                    return null;
                }
                return com.google.android.play.core.splitinstall.f.b(fVar.h(), 6, i10, fVar.a(), fVar.j(), fVar.f(), fVar.e());
            }
        });
        return com.google.android.play.core.tasks.f.d(new SplitInstallException(i4));
    }

    private static String D(String str) {
        return str.split("\\.config\\.", 2)[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(List list, List list2, List list3, long j4, boolean z9) {
        this.f31944i.zza().a(list, new q(this, list2, list3, j4, z9, list));
    }

    private final void F(final com.google.android.play.core.splitinstall.f fVar) {
        this.f31936a.post(new Runnable() { // from class: com.google.android.play.core.splitinstall.testing.o
            @Override // java.lang.Runnable
            public final void run() {
                a.this.v(fVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(List list, List list2, long j4) {
        this.f31947l.addAll(list);
        this.f31948m.addAll(list2);
        Long valueOf = Long.valueOf(j4);
        H(5, 0, valueOf, valueOf, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean H(final int i4, final int i10, @Nullable final Long l10, @Nullable final Long l11, @Nullable final List list, @Nullable final Integer num, @Nullable final List list2) {
        com.google.android.play.core.splitinstall.f B = B(new r() { // from class: com.google.android.play.core.splitinstall.testing.k
            @Override // com.google.android.play.core.splitinstall.testing.r
            public final com.google.android.play.core.splitinstall.f a(com.google.android.play.core.splitinstall.f fVar) {
                long longValue;
                Integer num2 = num;
                int i11 = i4;
                int i12 = i10;
                Long l12 = l10;
                Long l13 = l11;
                List<String> list3 = list;
                List<String> list4 = list2;
                int i13 = a.f31935q;
                com.google.android.play.core.splitinstall.f b10 = fVar == null ? com.google.android.play.core.splitinstall.f.b(0, 0, 0, 0L, 0L, new ArrayList(), new ArrayList()) : fVar;
                int h4 = num2 == null ? b10.h() : num2.intValue();
                long a10 = l12 == null ? b10.a() : l12.longValue();
                if (l13 == null) {
                    longValue = b10.j();
                } else {
                    longValue = l13.longValue();
                }
                return com.google.android.play.core.splitinstall.f.b(h4, i11, i12, a10, longValue, list3 == null ? b10.f() : list3, list4 == null ? b10.e() : list4);
            }
        });
        if (B != null) {
            F(B);
            return true;
        }
        return false;
    }

    private final y0 z() {
        y0 a10 = this.f31938c.a();
        if (a10 != null) {
            return a10;
        }
        throw new IllegalStateException("Language information could not be found. Make sure you are using the target application context, not the tests context, and the app is built as a bundle.");
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final boolean a(com.google.android.play.core.splitinstall.f fVar, Activity activity, int i4) throws IntentSender.SendIntentException {
        return false;
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> b(List<Locale> list) {
        return com.google.android.play.core.tasks.f.d(new SplitInstallException(-5));
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> c(final int i4) {
        try {
            com.google.android.play.core.splitinstall.f B = B(new r() { // from class: com.google.android.play.core.splitinstall.testing.h
                @Override // com.google.android.play.core.splitinstall.testing.r
                public final com.google.android.play.core.splitinstall.f a(com.google.android.play.core.splitinstall.f fVar) {
                    int i10;
                    int i11 = i4;
                    int i12 = a.f31935q;
                    if (fVar != null && i11 == fVar.h() && ((i10 = fVar.i()) == 1 || i10 == 2 || i10 == 8 || i10 == 9 || i10 == 7)) {
                        return com.google.android.play.core.splitinstall.f.b(i11, 7, fVar.c(), fVar.a(), fVar.j(), fVar.f(), fVar.e());
                    }
                    throw new SplitInstallException(-3);
                }
            });
            if (B != null) {
                F(B);
            }
            return com.google.android.play.core.tasks.f.e(null);
        } catch (SplitInstallException e4) {
            return com.google.android.play.core.tasks.f.d(e4);
        }
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<List<com.google.android.play.core.splitinstall.f>> d() {
        com.google.android.play.core.splitinstall.f A = A();
        return com.google.android.play.core.tasks.f.e(A != null ? Collections.singletonList(A) : Collections.emptyList());
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> e(List<Locale> list) {
        return com.google.android.play.core.tasks.f.d(new SplitInstallException(-5));
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final boolean f(com.google.android.play.core.splitinstall.f fVar, com.google.android.play.core.common.a aVar, int i4) throws IntentSender.SendIntentException {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0130, code lost:
        if (r0.contains(r7) == false) goto L51;
     */
    @Override // com.google.android.play.core.splitinstall.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.play.core.tasks.d<java.lang.Integer> g(final com.google.android.play.core.splitinstall.e r22) {
        /*
            Method dump skipped, instructions count: 605
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.splitinstall.testing.a.g(com.google.android.play.core.splitinstall.e):com.google.android.play.core.tasks.d");
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> h(List<String> list) {
        return com.google.android.play.core.tasks.f.d(new SplitInstallException(-5));
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<com.google.android.play.core.splitinstall.f> i(int i4) {
        com.google.android.play.core.splitinstall.f A = A();
        if (A != null && A.h() == i4) {
            return com.google.android.play.core.tasks.f.e(A);
        }
        return com.google.android.play.core.tasks.f.d(new SplitInstallException(-4));
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final Set<String> j() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.f31938c.c());
        hashSet.addAll(this.f31947l);
        return hashSet;
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final void k(com.google.android.play.core.splitinstall.g gVar) {
        this.f31941f.a(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final com.google.android.play.core.tasks.d<Void> l(List<String> list) {
        return com.google.android.play.core.tasks.f.d(new SplitInstallException(-5));
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final void m(com.google.android.play.core.splitinstall.g gVar) {
        this.f31941f.b(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final void n(com.google.android.play.core.splitinstall.g gVar) {
        this.f31942g.b(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final void o(com.google.android.play.core.splitinstall.g gVar) {
        this.f31942g.a(gVar);
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final Set<String> p() {
        HashSet hashSet = new HashSet();
        if (this.f31938c.d() != null) {
            hashSet.addAll(this.f31938c.d());
        }
        hashSet.addAll(this.f31948m);
        return hashSet;
    }

    public void q(boolean z9) {
        this.f31949n.set(z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File r() {
        return this.f31945j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void u(final long j4, final List list, final List list2, final List list3) {
        long j10 = j4 / 3;
        long j11 = 0;
        for (int i4 = 0; i4 < 3; i4++) {
            j11 = Math.min(j4, j11 + j10);
            H(2, 0, Long.valueOf(j11), Long.valueOf(j4), null, null, null);
            SystemClock.sleep(f31934p);
            com.google.android.play.core.splitinstall.f A = A();
            if (A.i() == 9 || A.i() == 7 || A.i() == 6) {
                return;
            }
        }
        this.f31943h.execute(new Runnable() { // from class: com.google.android.play.core.splitinstall.testing.g
            @Override // java.lang.Runnable
            public final void run() {
                a.this.w(list, list2, list3, j4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void v(com.google.android.play.core.splitinstall.f fVar) {
        this.f31941f.c(fVar);
        this.f31942g.c(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void w(List list, List list2, List list3, long j4) {
        if (this.f31949n.get()) {
            H(6, -6, null, null, null, null, null);
        } else if (this.f31944i.zza() != null) {
            E(list, list2, list3, j4, false);
        } else {
            G(list2, list3, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void x(List list, final List list2) {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            String a10 = j1.a(file);
            Uri fromFile = Uri.fromFile(file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(fromFile, this.f31937b.getContentResolver().getType(fromFile));
            intent.addFlags(1);
            intent.putExtra("module_name", D(a10));
            intent.putExtra("split_id", a10);
            arrayList.add(intent);
            arrayList2.add(D(j1.a(file)));
        }
        com.google.android.play.core.splitinstall.f A = A();
        if (A == null) {
            return;
        }
        final long j4 = A.j();
        this.f31943h.execute(new Runnable() { // from class: com.google.android.play.core.splitinstall.testing.n
            @Override // java.lang.Runnable
            public final void run() {
                a.this.u(j4, arrayList, arrayList2, list2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, @Nullable File file, f1 f1Var, n1 n1Var) {
        Executor a10 = com.google.android.play.core.splitcompat.e.a();
        com.google.android.play.core.internal.f1 f1Var2 = new com.google.android.play.core.internal.f1(context);
        f fVar = f.f31959a;
        this.f31936a = new Handler(Looper.getMainLooper());
        this.f31946k = new AtomicReference();
        this.f31947l = Collections.synchronizedSet(new HashSet());
        this.f31948m = Collections.synchronizedSet(new HashSet());
        this.f31949n = new AtomicBoolean(false);
        this.f31937b = context;
        this.f31945j = file;
        this.f31938c = f1Var;
        this.f31939d = n1Var;
        this.f31943h = a10;
        this.f31940e = f1Var2;
        this.f31950o = fVar;
        this.f31942g = new com.google.android.play.core.internal.g();
        this.f31941f = new com.google.android.play.core.internal.g();
        this.f31944i = zzo.INSTANCE;
    }
}
