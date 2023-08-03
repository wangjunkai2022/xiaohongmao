package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.play.core.internal.b0;
import com.google.android.play.core.internal.u;
import com.google.android.play.core.internal.w;
import com.google.android.play.core.internal.y;
import com.google.android.play.core.internal.z;
import com.google.android.play.core.internal.zzbt;
import com.google.android.play.core.splitinstall.e1;
import com.google.android.play.core.splitinstall.f1;
import com.google.android.play.core.splitinstall.k1;
import com.google.android.play.core.splitinstall.n0;
import com.google.android.play.core.splitinstall.zzo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicReference f31816e = new AtomicReference(null);

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ int f31817f = 0;

    /* renamed from: a  reason: collision with root package name */
    private final f f31818a;

    /* renamed from: b  reason: collision with root package name */
    private final n0 f31819b;
    @GuardedBy("emulatedSplits")

    /* renamed from: c  reason: collision with root package name */
    private final Set f31820c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final b f31821d;

    private a(Context context) {
        try {
            f fVar = new f(context);
            this.f31818a = fVar;
            this.f31821d = new b(fVar);
            this.f31819b = new n0(context);
        } catch (PackageManager.NameNotFoundException e4) {
            throw new zzbt("Failed to initialize FileStorage", e4);
        }
    }

    public static boolean a(@NonNull Context context) {
        return k(context, false);
    }

    public static boolean b(@NonNull Context context) {
        if (l()) {
            return false;
        }
        a aVar = (a) f31816e.get();
        if (aVar == null) {
            if (context.getApplicationContext() != null) {
                a(context.getApplicationContext());
            }
            return a(context);
        }
        return aVar.f31821d.b(context, aVar.h());
    }

    public static boolean f(Context context) {
        return k(context, true);
    }

    public static boolean g() {
        return f31816e.get() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set h() {
        HashSet hashSet;
        synchronized (this.f31820c) {
            hashSet = new HashSet(this.f31820c);
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(Set set) throws IOException {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            f.l(this.f31818a.g((String) it.next()));
        }
        this.f31819b.b();
    }

    @RequiresApi(21)
    private final synchronized void j(Context context, boolean z9) throws IOException {
        List<String> asList;
        ZipFile zipFile;
        if (z9) {
            this.f31818a.k();
        } else {
            e.a().execute(new q(this));
        }
        String packageName = context.getPackageName();
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(packageName, 0).splitNames;
            if (strArr == null) {
                asList = new ArrayList();
            } else {
                asList = Arrays.asList(strArr);
            }
            Set<t> j4 = this.f31818a.j();
            Set a10 = this.f31819b.a();
            HashSet hashSet = new HashSet();
            Iterator it = j4.iterator();
            while (it.hasNext()) {
                String b10 = ((t) it.next()).b();
                if (asList.contains(b10) || a10.contains(f1.b(b10))) {
                    hashSet.add(b10);
                    it.remove();
                }
            }
            if (z9) {
                i(hashSet);
            } else if (!hashSet.isEmpty()) {
                e.a().execute(new r(this, hashSet));
            }
            HashSet hashSet2 = new HashSet();
            for (t tVar : j4) {
                String b11 = tVar.b();
                if (!f1.f(b11)) {
                    hashSet2.add(b11);
                }
            }
            for (String str : asList) {
                if (!f1.f(str)) {
                    hashSet2.add(str);
                }
            }
            HashSet<t> hashSet3 = new HashSet(j4.size());
            for (t tVar2 : j4) {
                if (f1.e(tVar2.b()) || hashSet2.contains(f1.b(tVar2.b()))) {
                    hashSet3.add(tVar2);
                }
            }
            n nVar = new n(this.f31818a);
            z a11 = b0.a();
            ClassLoader classLoader = context.getClassLoader();
            if (z9) {
                a11.b(classLoader, nVar.c());
            } else {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    Set b12 = nVar.b((t) it2.next());
                    if (b12 == null) {
                        it2.remove();
                    } else {
                        a11.b(classLoader, b12);
                    }
                }
            }
            HashSet hashSet4 = new HashSet();
            for (t tVar3 : hashSet3) {
                try {
                    zipFile = new ZipFile(tVar3.a());
                    try {
                        ZipEntry entry = zipFile.getEntry("classes.dex");
                        zipFile.close();
                        if (entry != null && !a11.a(classLoader, this.f31818a.a(tVar3.b()), tVar3.a(), z9)) {
                            Log.w("SplitCompat", "split was not installed ".concat(tVar3.a().toString()));
                        }
                        hashSet4.add(tVar3.a());
                    } catch (IOException e4) {
                        e = e4;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw e;
                    }
                } catch (IOException e10) {
                    e = e10;
                    zipFile = null;
                }
            }
            this.f31821d.a(context, hashSet4);
            HashSet hashSet5 = new HashSet();
            for (t tVar4 : hashSet3) {
                if (hashSet4.contains(tVar4.a())) {
                    String b13 = tVar4.b();
                    StringBuilder sb = new StringBuilder(b13.length() + 30);
                    sb.append("Split '");
                    sb.append(b13);
                    sb.append("' installation emulated");
                    Log.d("SplitCompat", sb.toString());
                    hashSet5.add(tVar4.b());
                } else {
                    String b14 = tVar4.b();
                    StringBuilder sb2 = new StringBuilder(b14.length() + 35);
                    sb2.append("Split '");
                    sb2.append(b14);
                    sb2.append("' installation not emulated.");
                    Log.d("SplitCompat", sb2.toString());
                }
            }
            synchronized (this.f31820c) {
                this.f31820c.addAll(hashSet5);
            }
        } catch (PackageManager.NameNotFoundException e11) {
            throw new IOException(String.format("Cannot load data for application '%s'", packageName), e11);
        }
    }

    private static boolean k(final Context context, boolean z9) {
        if (l()) {
            return false;
        }
        AtomicReference atomicReference = f31816e;
        boolean compareAndSet = atomicReference.compareAndSet(null, new a(context));
        a aVar = (a) atomicReference.get();
        if (compareAndSet) {
            zzo.INSTANCE.zzb(new w(context, e.a(), new y(context, aVar.f31818a, new u()), aVar.f31818a, new s(), null));
            e1.b(new p(aVar));
            e.a().execute(new Runnable() { // from class: com.google.android.play.core.splitcompat.o
                @Override // java.lang.Runnable
                public final void run() {
                    Context context2 = context;
                    int i4 = a.f31817f;
                    try {
                        k1.j(context2).e(true);
                    } catch (SecurityException unused) {
                        Log.e("SplitCompat", "Failed to set broadcast receiver to always on.");
                    }
                }
            });
        }
        try {
            aVar.j(context, z9);
            return true;
        } catch (Exception e4) {
            Log.e("SplitCompat", "Error installing additional splits", e4);
            return false;
        }
    }

    private static boolean l() {
        return false;
    }
}
