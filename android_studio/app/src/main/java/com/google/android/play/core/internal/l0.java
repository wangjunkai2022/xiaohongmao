package com.google.android.play.core.internal;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class l0 implements z {
    public static void c(ClassLoader classLoader, Set set, k0 k0Var) {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(((File) it.next()).getParentFile());
        }
        Object c10 = g0.c(classLoader);
        v0 b10 = w0.b(c10, "nativeLibraryDirectories", List.class);
        synchronized (com.google.android.play.core.splitinstall.b1.class) {
            ArrayList arrayList = new ArrayList((Collection) b10.a());
            hashSet.removeAll(arrayList);
            arrayList.addAll(hashSet);
            b10.c(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        Object[] a10 = k0Var.a(c10, new ArrayList(hashSet), null, arrayList2);
        if (!arrayList2.isEmpty()) {
            zzbt zzbtVar = new zzbt("Error in makePathElements");
            int size = arrayList2.size();
            for (int i4 = 0; i4 < size; i4++) {
                IOException iOException = (IOException) arrayList2.get(i4);
            }
            throw zzbtVar;
        }
        synchronized (com.google.android.play.core.splitinstall.b1.class) {
            w0.a(c10, "nativeLibraryPathElements", Object.class).e(Arrays.asList(a10));
        }
    }

    public static boolean d(ClassLoader classLoader, File file, File file2, boolean z9, String str) {
        return g0.e(classLoader, file, file2, z9, new i0(), "zip", new d0());
    }

    @Override // com.google.android.play.core.internal.z
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z9) {
        return d(classLoader, file, file2, z9, "zip");
    }

    @Override // com.google.android.play.core.internal.z
    public final void b(ClassLoader classLoader, Set set) {
        c(classLoader, set, new j0());
    }
}
