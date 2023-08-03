package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f31911a;

    public n0(@NonNull Context context) {
        this.f31911a = context;
    }

    private final SharedPreferences e() {
        return this.f31911a.getSharedPreferences("playcore_split_install_internal", 0);
    }

    public final Set a() {
        Set<String> hashSet;
        synchronized (n0.class) {
            try {
                hashSet = e().getStringSet("modules_to_uninstall_if_emulated", new HashSet());
                if (hashSet == null) {
                    hashSet = new HashSet<>();
                }
            } catch (Exception unused) {
                hashSet = new HashSet<>();
            }
        }
        return hashSet;
    }

    public final void b() {
        synchronized (n0.class) {
            e().edit().putStringSet("modules_to_uninstall_if_emulated", new HashSet()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Collection collection) {
        synchronized (n0.class) {
            HashSet hashSet = new HashSet(a());
            Iterator it = collection.iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                z9 |= hashSet.add((String) it.next());
            }
            if (z9) {
                try {
                    e().edit().putStringSet("modules_to_uninstall_if_emulated", hashSet).apply();
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(Collection collection) {
        synchronized (n0.class) {
            Set<String> a10 = a();
            HashSet hashSet = new HashSet();
            boolean z9 = false;
            for (String str : a10) {
                if (collection.contains(str)) {
                    z9 = true;
                } else {
                    hashSet.add(str);
                }
            }
            if (z9) {
                try {
                    e().edit().putStringSet("modules_to_uninstall_if_emulated", hashSet).apply();
                } catch (Exception unused) {
                }
            }
        }
    }
}
