package com.google.android.gms.internal.mlkit_common;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class d7 {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f29564a = {"com.android.", "com.google.", "com.chrome.", "com.nest.", "com.waymo.", "com.waze"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f29565b;

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f29566c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f29567d = 0;

    static {
        String[] strArr = new String[2];
        strArr[0] = "media";
        String str = Build.HARDWARE;
        strArr[1] = true != (str.equals("goldfish") || str.equals("ranchu")) ? "" : "androidx.test.services.storage.runfiles";
        f29565b = strArr;
        String[] strArr2 = new String[3];
        int i4 = Build.VERSION.SDK_INT;
        strArr2[0] = i4 <= 25 ? "com.google.android.inputmethod.latin.inputcontent" : "";
        strArr2[1] = i4 <= 25 ? "com.google.android.inputmethod.latin.dev.inputcontent" : "";
        strArr2[2] = "com.google.android.apps.docs.storage.legacy";
        f29566c = strArr2;
    }

    public static AssetFileDescriptor a(Context context, Uri uri, String str) throws FileNotFoundException {
        c6 c6Var = c6.f29519d;
        ContentResolver contentResolver = context.getContentResolver();
        Uri c10 = c(uri);
        String scheme = c10.getScheme();
        if (com.facebook.common.util.f.f11058h.equals(scheme)) {
            return contentResolver.openAssetFileDescriptor(c10, "r");
        }
        if ("content".equals(scheme)) {
            if (i(context, c10, 1, c6Var)) {
                AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(c10, "r");
                d(openAssetFileDescriptor);
                return openAssetFileDescriptor;
            }
            throw new FileNotFoundException("Can't open content uri.");
        } else if ("file".equals(scheme)) {
            AssetFileDescriptor openAssetFileDescriptor2 = contentResolver.openAssetFileDescriptor(c10, "r");
            d(openAssetFileDescriptor2);
            try {
                h(context, openAssetFileDescriptor2.getParcelFileDescriptor(), c10, c6Var);
                return openAssetFileDescriptor2;
            } catch (FileNotFoundException e4) {
                f(openAssetFileDescriptor2, e4);
                throw e4;
            } catch (IOException e10) {
                FileNotFoundException fileNotFoundException = new FileNotFoundException("Validation failed.");
                fileNotFoundException.initCause(e10);
                f(openAssetFileDescriptor2, fileNotFoundException);
                throw fileNotFoundException;
            }
        } else {
            throw new FileNotFoundException("Unsupported scheme");
        }
    }

    public static InputStream b(Context context, Uri uri) throws FileNotFoundException {
        c6 c6Var = c6.f29519d;
        ContentResolver contentResolver = context.getContentResolver();
        Uri c10 = c(uri);
        String scheme = c10.getScheme();
        if (com.facebook.common.util.f.f11058h.equals(scheme)) {
            return contentResolver.openInputStream(c10);
        }
        if ("content".equals(scheme)) {
            if (i(context, c10, 1, c6Var)) {
                InputStream openInputStream = contentResolver.openInputStream(c10);
                d(openInputStream);
                return openInputStream;
            }
            throw new FileNotFoundException("Can't open content uri.");
        } else if ("file".equals(scheme)) {
            try {
                ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(Uri.fromFile(new File(c10.getPath()).getCanonicalFile()), "r");
                try {
                    h(context, openFileDescriptor, c10, c6Var);
                    return new ParcelFileDescriptor.AutoCloseInputStream(openFileDescriptor);
                } catch (FileNotFoundException e4) {
                    g(openFileDescriptor, e4);
                    throw e4;
                } catch (IOException e10) {
                    FileNotFoundException fileNotFoundException = new FileNotFoundException("Validation failed.");
                    fileNotFoundException.initCause(e10);
                    g(openFileDescriptor, fileNotFoundException);
                    throw fileNotFoundException;
                }
            } catch (IOException e11) {
                FileNotFoundException fileNotFoundException2 = new FileNotFoundException("Canonicalization failed.");
                fileNotFoundException2.initCause(e11);
                throw fileNotFoundException2;
            }
        } else {
            throw new FileNotFoundException("Unsupported scheme");
        }
    }

    private static Uri c(Uri uri) {
        return Build.VERSION.SDK_INT < 30 ? Uri.parse(uri.toString()) : uri;
    }

    private static Object d(Object obj) throws FileNotFoundException {
        if (obj != null) {
            return obj;
        }
        throw new FileNotFoundException("Content resolver returned null value.");
    }

    private static String e(File file) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        return !canonicalPath.endsWith("/") ? canonicalPath.concat("/") : canonicalPath;
    }

    private static void f(AssetFileDescriptor assetFileDescriptor, FileNotFoundException fileNotFoundException) {
        try {
            assetFileDescriptor.close();
        } catch (IOException e4) {
            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(fileNotFoundException, e4);
        }
    }

    private static void g(ParcelFileDescriptor parcelFileDescriptor, FileNotFoundException fileNotFoundException) {
        try {
            parcelFileDescriptor.close();
        } catch (IOException e4) {
            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(fileNotFoundException, e4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00c0 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void h(final android.content.Context r7, android.os.ParcelFileDescriptor r8, android.net.Uri r9, com.google.android.gms.internal.mlkit_common.c6 r10) throws java.io.IOException {
        /*
            java.io.File r0 = new java.io.File
            java.lang.String r9 = r9.getPath()
            r0.<init>(r9)
            java.lang.String r9 = r0.getCanonicalPath()
            java.io.FileDescriptor r8 = r8.getFileDescriptor()
            com.google.android.gms.internal.mlkit_common.cc r8 = com.google.android.gms.internal.mlkit_common.cc.a(r8)
            com.google.android.gms.internal.mlkit_common.cc r0 = com.google.android.gms.internal.mlkit_common.cc.b(r9)
            boolean r1 = r0.f29532c
            java.lang.String r2 = "Can't open file: "
            if (r1 != 0) goto Ld9
            long r3 = r8.f29530a
            long r5 = r0.f29530a
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto Lcb
            long r3 = r8.f29531b
            long r0 = r0.f29531b
            int r8 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r8 != 0) goto Lcb
            java.lang.String r8 = "/proc/"
            boolean r8 = r9.startsWith(r8)
            if (r8 != 0) goto Lc1
            java.lang.String r8 = "/data/misc/"
            boolean r8 = r9.startsWith(r8)
            if (r8 != 0) goto Lc1
            com.google.android.gms.internal.mlkit_common.c6.a(r10)
            java.io.File r8 = androidx.core.content.ContextCompat.getDataDir(r7)
            r0 = 0
            r1 = 1
            if (r8 == 0) goto L56
            java.lang.String r8 = e(r8)
            boolean r8 = r9.startsWith(r8)
            if (r8 == 0) goto L65
        L54:
            r0 = 1
            goto Lba
        L56:
            java.io.File r8 = android.os.Environment.getDataDirectory()
            java.lang.String r8 = e(r8)
            boolean r8 = r9.startsWith(r8)
            if (r8 == 0) goto L65
            goto L54
        L65:
            android.content.Context r8 = androidx.core.content.ContextCompat.createDeviceProtectedStorageContext(r7)
            if (r8 == 0) goto L7c
            java.io.File r8 = androidx.core.content.ContextCompat.getDataDir(r8)
            if (r8 == 0) goto L7c
            java.lang.String r8 = e(r8)
            boolean r8 = r9.startsWith(r8)
            if (r8 == 0) goto L7c
            goto L54
        L7c:
            com.google.android.gms.internal.mlkit_common.x0 r8 = new com.google.android.gms.internal.mlkit_common.x0
            r8.<init>()
            java.io.File[] r8 = j(r8)
            int r3 = r8.length
            r4 = 0
        L87:
            if (r4 >= r3) goto L9b
            r5 = r8[r4]
            if (r5 == 0) goto L98
            java.lang.String r5 = e(r5)
            boolean r5 = r9.startsWith(r5)
            if (r5 == 0) goto L98
            goto L54
        L98:
            int r4 = r4 + 1
            goto L87
        L9b:
            com.google.android.gms.internal.mlkit_common.y1 r8 = new com.google.android.gms.internal.mlkit_common.y1
            r8.<init>()
            java.io.File[] r7 = j(r8)
            int r8 = r7.length
            r3 = 0
        La6:
            if (r3 >= r8) goto Lba
            r4 = r7[r3]
            if (r4 == 0) goto Lb7
            java.lang.String r4 = e(r4)
            boolean r4 = r9.startsWith(r4)
            if (r4 == 0) goto Lb7
            goto L54
        Lb7:
            int r3 = r3 + 1
            goto La6
        Lba:
            boolean r7 = com.google.android.gms.internal.mlkit_common.c6.b(r10)
            if (r0 != r7) goto Lc1
            return
        Lc1:
            java.io.FileNotFoundException r7 = new java.io.FileNotFoundException
            java.lang.String r8 = r2.concat(r9)
            r7.<init>(r8)
            throw r7
        Lcb:
            java.io.FileNotFoundException r7 = new java.io.FileNotFoundException
            java.lang.String r8 = java.lang.String.valueOf(r9)
            java.lang.String r8 = r2.concat(r8)
            r7.<init>(r8)
            throw r7
        Ld9:
            java.io.FileNotFoundException r7 = new java.io.FileNotFoundException
            java.lang.String r8 = java.lang.String.valueOf(r9)
            java.lang.String r8 = r2.concat(r8)
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.d7.h(android.content.Context, android.os.ParcelFileDescriptor, android.net.Uri, com.google.android.gms.internal.mlkit_common.c6):void");
    }

    private static boolean i(Context context, Uri uri, int i4, c6 c6Var) {
        String authority = uri.getAuthority();
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 0);
        if (resolveContentProvider == null) {
            int lastIndexOf = authority.lastIndexOf(64);
            if (lastIndexOf >= 0) {
                authority = authority.substring(lastIndexOf + 1);
                resolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 0);
            }
            if (resolveContentProvider == null) {
                return !c6.b(c6Var);
            }
        }
        int c10 = c6.c(c6Var, context, new dc(uri, resolveContentProvider, authority)) - 1;
        if (c10 != 0) {
            if (c10 != 1) {
                if (context.getPackageName().equals(resolveContentProvider.packageName)) {
                    return c6.b(c6Var);
                }
                if (c6.b(c6Var)) {
                    return false;
                }
                if (context.checkUriPermission(uri, Process.myPid(), Process.myUid(), 1) != 0 && resolveContentProvider.exported) {
                    String[] strArr = f29565b;
                    int length = strArr.length;
                    for (int i10 = 0; i10 < 2; i10++) {
                        if (strArr[i10].equals(authority)) {
                            return true;
                        }
                    }
                    String[] strArr2 = f29566c;
                    int length2 = strArr2.length;
                    for (int i11 = 0; i11 < 3; i11++) {
                        if (strArr2[i11].equals(authority)) {
                            return true;
                        }
                    }
                    String[] strArr3 = f29564a;
                    for (int i12 = 0; i12 < 6; i12++) {
                        String str = strArr3[i12];
                        if (str.charAt(str.length() - 1) == '.') {
                            if (resolveContentProvider.packageName.startsWith(str)) {
                                return false;
                            }
                        } else if (resolveContentProvider.packageName.equals(str)) {
                            return false;
                        }
                    }
                }
                return true;
            }
            return false;
        }
        return true;
    }

    private static File[] j(Callable callable) {
        try {
            return (File[]) callable.call();
        } catch (NullPointerException e4) {
            if (Build.VERSION.SDK_INT < 22) {
                return new File[0];
            }
            throw e4;
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
