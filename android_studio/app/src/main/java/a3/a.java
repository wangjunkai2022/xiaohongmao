package a3;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.Nullable;
import com.google.android.play.core.appupdate.b;
import com.google.android.play.core.appupdate.g;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.tasks.f;
import d3.c;
import d3.d;
import d3.e;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final g f47a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f48b;

    /* renamed from: c  reason: collision with root package name */
    private final List f49c = new ArrayList();
    @d

    /* renamed from: d  reason: collision with root package name */
    private int f50d = 0;
    @c

    /* renamed from: e  reason: collision with root package name */
    private int f51e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f52f = false;

    /* renamed from: g  reason: collision with root package name */
    private int f53g = 0;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Integer f54h = null;

    /* renamed from: i  reason: collision with root package name */
    private int f55i = 0;

    /* renamed from: j  reason: collision with root package name */
    private long f56j = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f57k = 0;

    /* renamed from: l  reason: collision with root package name */
    private boolean f58l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f59m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f60n = false;
    @Nullable
    @d3.b

    /* renamed from: o  reason: collision with root package name */
    private Integer f61o;

    public a(Context context) {
        this.f47a = new g(context);
        this.f48b = context;
    }

    private static int D() {
        return Build.VERSION.SDK_INT >= 23 ? 67108864 : 0;
    }

    @e
    private final int E() {
        if (this.f52f) {
            int i4 = this.f50d;
            return (i4 == 0 || i4 == 4 || i4 == 5 || i4 == 6) ? 2 : 3;
        }
        return 1;
    }

    private final void F() {
        this.f47a.g(InstallState.f(this.f50d, this.f56j, this.f57k, this.f51e, this.f48b.getPackageName()));
    }

    private final boolean G(com.google.android.play.core.appupdate.a aVar, com.google.android.play.core.appupdate.d dVar) {
        if (aVar.f(dVar) || (com.google.android.play.core.appupdate.d.c(dVar.b()).equals(dVar) && aVar.e(dVar.b()))) {
            if (dVar.b() == 1) {
                this.f59m = true;
                this.f61o = 1;
            } else {
                this.f58l = true;
                this.f61o = 0;
            }
            return true;
        }
        return false;
    }

    public void A() {
        if (this.f58l || this.f59m) {
            this.f58l = false;
            this.f50d = 1;
            Integer num = 0;
            if (num.equals(this.f61o)) {
                F();
            }
        }
    }

    public void B() {
        int i4 = this.f50d;
        if (i4 == 1 || i4 == 2) {
            this.f50d = 6;
            Integer num = 0;
            if (num.equals(this.f61o)) {
                F();
            }
            this.f61o = null;
            this.f59m = false;
            this.f50d = 0;
        }
    }

    public void C() {
        if (this.f58l || this.f59m) {
            this.f58l = false;
            this.f59m = false;
            this.f61o = null;
            this.f50d = 0;
        }
    }

    @Override // com.google.android.play.core.appupdate.b
    public final boolean a(com.google.android.play.core.appupdate.a aVar, Activity activity, com.google.android.play.core.appupdate.d dVar, int i4) {
        return G(aVar, dVar);
    }

    @Override // com.google.android.play.core.appupdate.b
    public boolean b(com.google.android.play.core.appupdate.a aVar, @d3.b int i4, com.google.android.play.core.common.a aVar2, int i10) {
        return G(aVar, com.google.android.play.core.appupdate.d.d(i4).a());
    }

    @Override // com.google.android.play.core.appupdate.b
    public com.google.android.play.core.tasks.d<Void> c() {
        int i4 = this.f51e;
        if (i4 != 0) {
            return f.d(new InstallException(i4));
        }
        int i10 = this.f50d;
        if (i10 != 11) {
            if (i10 == 3) {
                return f.d(new InstallException(-8));
            }
            return f.d(new InstallException(-7));
        }
        this.f50d = 3;
        this.f60n = true;
        Integer num = 0;
        if (num.equals(this.f61o)) {
            F();
        }
        return f.e(null);
    }

    @Override // com.google.android.play.core.appupdate.b
    public com.google.android.play.core.tasks.d<com.google.android.play.core.appupdate.a> d() {
        PendingIntent pendingIntent;
        PendingIntent pendingIntent2;
        PendingIntent pendingIntent3;
        PendingIntent pendingIntent4;
        PendingIntent pendingIntent5;
        PendingIntent pendingIntent6;
        int i4 = this.f51e;
        if (i4 != 0) {
            return f.d(new InstallException(i4));
        }
        if (E() == 2) {
            if (this.f49c.contains(0)) {
                pendingIntent5 = PendingIntent.getBroadcast(this.f48b, 0, new Intent(), D());
                pendingIntent6 = PendingIntent.getBroadcast(this.f48b, 0, new Intent(), D());
            } else {
                pendingIntent5 = null;
                pendingIntent6 = null;
            }
            if (this.f49c.contains(1)) {
                PendingIntent broadcast = PendingIntent.getBroadcast(this.f48b, 0, new Intent(), D());
                pendingIntent2 = pendingIntent5;
                pendingIntent3 = PendingIntent.getBroadcast(this.f48b, 0, new Intent(), D());
                pendingIntent = broadcast;
            } else {
                pendingIntent2 = pendingIntent5;
                pendingIntent = null;
                pendingIntent3 = null;
            }
            pendingIntent4 = pendingIntent6;
        } else {
            pendingIntent = null;
            pendingIntent2 = null;
            pendingIntent3 = null;
            pendingIntent4 = null;
        }
        return f.e(com.google.android.play.core.appupdate.a.l(this.f48b.getPackageName(), this.f53g, E(), this.f50d, this.f54h, this.f55i, this.f56j, this.f57k, 0L, 0L, pendingIntent, pendingIntent2, pendingIntent3, pendingIntent4));
    }

    @Override // com.google.android.play.core.appupdate.b
    public void e(com.google.android.play.core.install.a aVar) {
        this.f47a.d(aVar);
    }

    @Override // com.google.android.play.core.appupdate.b
    public final boolean f(com.google.android.play.core.appupdate.a aVar, com.google.android.play.core.common.a aVar2, com.google.android.play.core.appupdate.d dVar, int i4) {
        return G(aVar, dVar);
    }

    @Override // com.google.android.play.core.appupdate.b
    public final com.google.android.play.core.tasks.d<Integer> g(com.google.android.play.core.appupdate.a aVar, Activity activity, com.google.android.play.core.appupdate.d dVar) {
        if (G(aVar, dVar)) {
            return f.e(-1);
        }
        return f.d(new InstallException(-6));
    }

    @Override // com.google.android.play.core.appupdate.b
    public boolean h(com.google.android.play.core.appupdate.a aVar, @d3.b int i4, Activity activity, int i10) {
        return G(aVar, com.google.android.play.core.appupdate.d.d(i4).a());
    }

    @Override // com.google.android.play.core.appupdate.b
    public void i(com.google.android.play.core.install.a aVar) {
        this.f47a.f(aVar);
    }

    public void j() {
        int i4 = this.f50d;
        if (i4 == 2 || i4 == 1) {
            this.f50d = 11;
            this.f56j = 0L;
            this.f57k = 0L;
            Integer num = 0;
            if (num.equals(this.f61o)) {
                F();
                return;
            }
            Integer num2 = 1;
            if (num2.equals(this.f61o)) {
                c();
            }
        }
    }

    public void k() {
        int i4 = this.f50d;
        if (i4 == 1 || i4 == 2) {
            this.f50d = 5;
            Integer num = 0;
            if (num.equals(this.f61o)) {
                F();
            }
            this.f61o = null;
            this.f59m = false;
            this.f50d = 0;
        }
    }

    public void l() {
        if (this.f50d == 1) {
            this.f50d = 2;
            Integer num = 0;
            if (num.equals(this.f61o)) {
                F();
            }
        }
    }

    @Nullable
    @d3.b
    public Integer m() {
        return this.f61o;
    }

    public void n() {
        if (this.f50d == 3) {
            this.f50d = 4;
            this.f52f = false;
            this.f53g = 0;
            this.f54h = null;
            this.f55i = 0;
            this.f56j = 0L;
            this.f57k = 0L;
            this.f59m = false;
            this.f60n = false;
            Integer num = 0;
            if (num.equals(this.f61o)) {
                F();
            }
            this.f61o = null;
            this.f50d = 0;
        }
    }

    public void o() {
        if (this.f50d == 3) {
            this.f50d = 5;
            Integer num = 0;
            if (num.equals(this.f61o)) {
                F();
            }
            this.f61o = null;
            this.f60n = false;
            this.f59m = false;
            this.f50d = 0;
        }
    }

    public boolean p() {
        return this.f58l;
    }

    public boolean q() {
        return this.f59m;
    }

    public boolean r() {
        return this.f60n;
    }

    public void s(long j4) {
        if (this.f50d != 2 || j4 > this.f57k) {
            return;
        }
        this.f56j = j4;
        Integer num = 0;
        if (num.equals(this.f61o)) {
            F();
        }
    }

    public void t(@Nullable Integer num) {
        if (this.f52f) {
            this.f54h = num;
        }
    }

    public void u(@c int i4) {
        this.f51e = i4;
    }

    public void v(long j4) {
        if (this.f50d == 2) {
            this.f57k = j4;
            Integer num = 0;
            if (num.equals(this.f61o)) {
                F();
            }
        }
    }

    public void w(int i4) {
        this.f52f = true;
        this.f49c.clear();
        this.f49c.add(0);
        this.f49c.add(1);
        this.f53g = i4;
    }

    public void x(int i4, @d3.b int i10) {
        this.f52f = true;
        this.f49c.clear();
        this.f49c.add(Integer.valueOf(i10));
        this.f53g = i4;
    }

    public void y() {
        this.f52f = false;
        this.f54h = null;
    }

    public void z(int i4) {
        if (this.f52f) {
            this.f55i = i4;
        }
    }
}
