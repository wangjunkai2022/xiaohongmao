package com.google.android.gms.dynamite;

import dalvik.system.PathClassLoader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class c extends PathClassLoader {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    protected final Class<?> loadClass(String str, boolean z9) throws ClassNotFoundException {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        return super.loadClass(str, z9);
    }
}
