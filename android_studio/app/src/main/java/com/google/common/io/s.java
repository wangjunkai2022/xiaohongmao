package com.google.common.io;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;

/* compiled from: LineBuffer.java */
@h3.c
/* loaded from: classes2.dex */
abstract class s {

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f34509a = new StringBuilder();

    /* renamed from: b  reason: collision with root package name */
    private boolean f34510b;

    @CanIgnoreReturnValue
    private boolean c(boolean z9) throws IOException {
        d(this.f34509a.toString(), this.f34510b ? z9 ? "\r\n" : "\r" : z9 ? "\n" : "");
        this.f34509a = new StringBuilder();
        this.f34510b = false;
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:15:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            r6 = this;
            boolean r0 = r6.f34510b
            r1 = 0
            r2 = 10
            r3 = 1
            if (r0 == 0) goto L1a
            if (r9 <= 0) goto L1a
            char r0 = r7[r8]
            if (r0 != r2) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            boolean r0 = r6.c(r0)
            if (r0 == 0) goto L1a
            int r0 = r8 + 1
            goto L1b
        L1a:
            r0 = r8
        L1b:
            int r8 = r8 + r9
            r9 = r0
        L1d:
            if (r0 >= r8) goto L52
            char r4 = r7[r0]
            if (r4 == r2) goto L44
            r5 = 13
            if (r4 == r5) goto L28
            goto L50
        L28:
            java.lang.StringBuilder r4 = r6.f34509a
            int r5 = r0 - r9
            r4.append(r7, r9, r5)
            r6.f34510b = r3
            int r9 = r0 + 1
            if (r9 >= r8) goto L4e
            char r4 = r7[r9]
            if (r4 != r2) goto L3b
            r4 = 1
            goto L3c
        L3b:
            r4 = 0
        L3c:
            boolean r4 = r6.c(r4)
            if (r4 == 0) goto L4e
            r0 = r9
            goto L4e
        L44:
            java.lang.StringBuilder r4 = r6.f34509a
            int r5 = r0 - r9
            r4.append(r7, r9, r5)
            r6.c(r3)
        L4e:
            int r9 = r0 + 1
        L50:
            int r0 = r0 + r3
            goto L1d
        L52:
            java.lang.StringBuilder r0 = r6.f34509a
            int r8 = r8 - r9
            r0.append(r7, r9, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.s.a(char[], int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() throws IOException {
        if (this.f34510b || this.f34509a.length() > 0) {
            c(false);
        }
    }

    protected abstract void d(String str, String str2) throws IOException;
}
