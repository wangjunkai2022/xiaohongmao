package v7;

/* compiled from: RSBlur.java */
/* loaded from: classes4.dex */
public class b {
    /* JADX WARN: Removed duplicated region for block: B:23:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap a(android.content.Context r6, android.graphics.Bitmap r7, int r8) throws android.renderscript.RSRuntimeException {
        /*
            r0 = 23
            r1 = 0
            android.renderscript.RenderScript r6 = android.renderscript.RenderScript.create(r6)     // Catch: java.lang.Throwable -> L56
            android.renderscript.RenderScript$RSMessageHandler r2 = new android.renderscript.RenderScript$RSMessageHandler     // Catch: java.lang.Throwable -> L50
            r2.<init>()     // Catch: java.lang.Throwable -> L50
            r6.setMessageHandler(r2)     // Catch: java.lang.Throwable -> L50
            android.renderscript.Allocation$MipmapControl r2 = android.renderscript.Allocation.MipmapControl.MIPMAP_NONE     // Catch: java.lang.Throwable -> L50
            r3 = 1
            android.renderscript.Allocation r2 = android.renderscript.Allocation.createFromBitmap(r6, r7, r2, r3)     // Catch: java.lang.Throwable -> L50
            android.renderscript.Type r3 = r2.getType()     // Catch: java.lang.Throwable -> L4d
            android.renderscript.Allocation r3 = android.renderscript.Allocation.createTyped(r6, r3)     // Catch: java.lang.Throwable -> L4d
            android.renderscript.Element r4 = android.renderscript.Element.U8_4(r6)     // Catch: java.lang.Throwable -> L48
            android.renderscript.ScriptIntrinsicBlur r1 = android.renderscript.ScriptIntrinsicBlur.create(r6, r4)     // Catch: java.lang.Throwable -> L48
            r1.setInput(r2)     // Catch: java.lang.Throwable -> L48
            float r8 = (float) r8     // Catch: java.lang.Throwable -> L48
            r1.setRadius(r8)     // Catch: java.lang.Throwable -> L48
            r1.forEach(r3)     // Catch: java.lang.Throwable -> L48
            r3.copyTo(r7)     // Catch: java.lang.Throwable -> L48
            int r8 = android.os.Build.VERSION.SDK_INT
            if (r8 < r0) goto L3b
            android.renderscript.RenderScript.releaseAllContexts()
            goto L3e
        L3b:
            r6.destroy()
        L3e:
            r2.destroy()
            r3.destroy()
            r1.destroy()
            return r7
        L48:
            r7 = move-exception
            r5 = r1
            r1 = r6
            r6 = r5
            goto L5a
        L4d:
            r7 = move-exception
            r3 = r1
            goto L53
        L50:
            r7 = move-exception
            r2 = r1
            r3 = r2
        L53:
            r1 = r6
            r6 = r3
            goto L5a
        L56:
            r7 = move-exception
            r6 = r1
            r2 = r6
            r3 = r2
        L5a:
            if (r1 == 0) goto L67
            int r8 = android.os.Build.VERSION.SDK_INT
            if (r8 < r0) goto L64
            android.renderscript.RenderScript.releaseAllContexts()
            goto L67
        L64:
            r1.destroy()
        L67:
            if (r2 == 0) goto L6c
            r2.destroy()
        L6c:
            if (r3 == 0) goto L71
            r3.destroy()
        L71:
            if (r6 == 0) goto L76
            r6.destroy()
        L76:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: v7.b.a(android.content.Context, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }
}
