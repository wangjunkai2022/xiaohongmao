package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import com.google.android.play.core.common.LocalTestingException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class y2 implements x4 {

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31677i = new com.google.android.play.core.internal.h("FakeAssetPackService");

    /* renamed from: j  reason: collision with root package name */
    private static final AtomicInteger f31678j = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private final String f31679a;

    /* renamed from: b  reason: collision with root package name */
    private final j0 f31680b;

    /* renamed from: c  reason: collision with root package name */
    private final x1 f31681c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f31682d;

    /* renamed from: e  reason: collision with root package name */
    private final o3 f31683e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31684f;

    /* renamed from: g  reason: collision with root package name */
    private final m3 f31685g;

    /* renamed from: h  reason: collision with root package name */
    private final Handler f31686h = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public y2(File file, j0 j0Var, x1 x1Var, Context context, o3 o3Var, com.google.android.play.core.internal.n1 n1Var, m3 m3Var) {
        this.f31679a = file.getAbsolutePath();
        this.f31680b = j0Var;
        this.f31681c = x1Var;
        this.f31682d = context;
        this.f31683e = o3Var;
        this.f31684f = n1Var;
        this.f31685g = m3Var;
    }

    @VisibleForTesting
    static long j(@b3.b int i4, long j4) {
        if (i4 != 2) {
            if (i4 == 3 || i4 == 4) {
                return j4;
            }
            return 0L;
        }
        return j4 / 2;
    }

    private final Bundle p(int i4, String str, @b3.b int i10) throws LocalTestingException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_version_code", this.f31683e.a());
        bundle.putInt("session_id", i4);
        File[] s9 = s(str);
        ArrayList<String> arrayList = new ArrayList<>();
        long j4 = 0;
        for (File file : s9) {
            j4 += file.length();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            arrayList2.add(i10 == 3 ? new Intent().setData(Uri.EMPTY) : null);
            String a10 = com.google.android.play.core.internal.j1.a(file);
            bundle.putParcelableArrayList(b3.e.b("chunk_intents", str, a10), arrayList2);
            bundle.putString(b3.e.b("uncompressed_hash_sha256", str, a10), r(file));
            bundle.putLong(b3.e.b("uncompressed_size", str, a10), file.length());
            arrayList.add(a10);
        }
        bundle.putStringArrayList(b3.e.a("slice_ids", str), arrayList);
        bundle.putLong(b3.e.a("pack_version", str), this.f31683e.a());
        bundle.putInt(b3.e.a("status", str), i10);
        bundle.putInt(b3.e.a("error_code", str), 0);
        bundle.putLong(b3.e.a("bytes_downloaded", str), j(i10, j4));
        bundle.putLong(b3.e.a("total_bytes_to_download", str), j4);
        bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str)));
        bundle.putLong("bytes_downloaded", j(i10, j4));
        bundle.putLong("total_bytes_to_download", j4);
        final Intent putExtra = new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle);
        this.f31686h.post(new Runnable() { // from class: com.google.android.play.core.assetpacks.v2
            @Override // java.lang.Runnable
            public final void run() {
                y2.this.k(putExtra);
            }
        });
        return bundle;
    }

    private final AssetPackState q(String str, @b3.b int i4) throws LocalTestingException {
        long j4 = 0;
        for (File file : s(str)) {
            j4 += file.length();
        }
        return AssetPackState.h(str, i4, 0, j(i4, j4), j4, this.f31681c.a(str), 1, String.valueOf(this.f31683e.a()), this.f31685g.a(str));
    }

    private static String r(File file) throws LocalTestingException {
        try {
            return a3.a(Arrays.asList(file));
        } catch (IOException e4) {
            throw new LocalTestingException(String.format("Could not digest file: %s.", file), e4);
        } catch (NoSuchAlgorithmException e10) {
            throw new LocalTestingException("SHA256 algorithm not supported.", e10);
        }
    }

    private final File[] s(final String str) throws LocalTestingException {
        File file = new File(this.f31679a);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles(new FilenameFilter() { // from class: com.google.android.play.core.assetpacks.t2
                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str2) {
                    return str2.startsWith(String.valueOf(str).concat("-")) && str2.endsWith(".apk");
                }
            });
            if (listFiles != null) {
                if (listFiles.length != 0) {
                    for (File file2 : listFiles) {
                        if (com.google.android.play.core.internal.j1.a(file2).equals(str)) {
                            return listFiles;
                        }
                    }
                    throw new LocalTestingException(String.format("No main slice available for pack '%s'.", str));
                }
                throw new LocalTestingException(String.format("No APKs available for pack '%s'.", str));
            }
            throw new LocalTestingException(String.format("Failed fetching APKs for pack '%s'.", str));
        }
        throw new LocalTestingException(String.format("Local testing directory '%s' not found.", file));
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final com.google.android.play.core.tasks.d a(final List list, final m0 m0Var, Map map) {
        f31677i.d("getPackStates(%s)", list);
        final com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        ((Executor) this.f31684f.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.w2
            @Override // java.lang.Runnable
            public final void run() {
                y2.this.l(list, m0Var, oVar);
            }
        });
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void b(final int i4, final String str) {
        f31677i.d("notifyModuleCompleted", new Object[0]);
        ((Executor) this.f31684f.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.u2
            @Override // java.lang.Runnable
            public final void run() {
                y2.this.m(i4, str);
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final com.google.android.play.core.tasks.d c(int i4, String str, String str2, int i10) {
        File[] s9;
        int i11;
        f31677i.d("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i4), str, str2, Integer.valueOf(i10));
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        try {
        } catch (LocalTestingException e4) {
            f31677i.e("getChunkFileDescriptor failed", e4);
            oVar.b(e4);
        } catch (FileNotFoundException e10) {
            f31677i.e("getChunkFileDescriptor failed", e10);
            oVar.b(new LocalTestingException("Asset Slice file not found.", e10));
        }
        for (File file : s(str)) {
            if (com.google.android.play.core.internal.j1.a(file).equals(str2)) {
                oVar.c(ParcelFileDescriptor.open(file, 268435456));
                return oVar.a();
            }
        }
        throw new LocalTestingException(String.format("Local testing slice for '%s' not found.", str2));
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final com.google.android.play.core.tasks.d d(final List list, final List list2, Map map) {
        f31677i.d("startDownload(%s)", list2);
        final com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        ((Executor) this.f31684f.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.x2
            @Override // java.lang.Runnable
            public final void run() {
                y2.this.o(list2, oVar, list);
            }
        });
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void e(int i4) {
        f31677i.d("notifySessionFailed", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void f(List list) {
        f31677i.d("cancelDownload(%s)", list);
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void g(int i4, String str, String str2, int i10) {
        f31677i.d("notifyChunkTransferred", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final com.google.android.play.core.tasks.d h(Map map) {
        f31677i.d("syncPacks()", new Object[0]);
        return com.google.android.play.core.tasks.f.e(new ArrayList());
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void i(String str) {
        f31677i.d("removePack(%s)", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void k(Intent intent) {
        this.f31680b.a(this.f31682d, intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void l(List list, m0 m0Var, com.google.android.play.core.tasks.o oVar) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        long j4 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                AssetPackState q9 = q(str, ((k3) m0Var).f31385a.l(8, str));
                j4 += q9.e();
                hashMap.put(str, q9);
            } catch (LocalTestingException e4) {
                oVar.b(e4);
                return;
            }
        }
        oVar.c(new w0(j4, hashMap));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void m(int i4, String str) {
        try {
            p(i4, str, 4);
        } catch (LocalTestingException e4) {
            f31677i.e("notifyModuleCompleted failed", e4);
        }
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void n() {
        f31677i.d("keepAlive", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void o(List list, com.google.android.play.core.tasks.o oVar, List list2) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        long j4 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                AssetPackState q9 = q(str, 1);
                j4 += q9.e();
                hashMap.put(str, q9);
            } catch (LocalTestingException e4) {
                oVar.b(e4);
                return;
            }
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            try {
                int andIncrement = f31678j.getAndIncrement();
                p(andIncrement, str2, 1);
                p(andIncrement, str2, 2);
                p(andIncrement, str2, 3);
            } catch (LocalTestingException e10) {
                oVar.b(e10);
                return;
            }
        }
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            String str3 = (String) it3.next();
            hashMap.put(str3, AssetPackState.h(str3, 4, 0, 0L, 0L, 0.0d, 1, String.valueOf(this.f31683e.a()), String.valueOf(this.f31683e.a())));
        }
        oVar.c(new w0(j4, hashMap));
    }
}
