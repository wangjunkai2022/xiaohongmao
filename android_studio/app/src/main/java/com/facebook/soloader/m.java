package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.x;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* compiled from: ExoSoSource.java */
/* loaded from: classes.dex */
public final class m extends x {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoSoSource.java */
    /* loaded from: classes.dex */
    public final class b extends x.f {

        /* renamed from: a  reason: collision with root package name */
        private final c[] f13528a;

        /* compiled from: ExoSoSource.java */
        /* loaded from: classes.dex */
        private final class a extends x.e {

            /* renamed from: a  reason: collision with root package name */
            private int f13530a;

            private a() {
            }

            @Override // com.facebook.soloader.x.e
            public boolean a() {
                return this.f13530a < b.this.f13528a.length;
            }

            @Override // com.facebook.soloader.x.e
            public x.d b() throws IOException {
                c[] cVarArr = b.this.f13528a;
                int i4 = this.f13530a;
                this.f13530a = i4 + 1;
                c cVar = cVarArr[i4];
                File file = cVar.f13532c;
                FileInputStream a10 = h.b.a(new FileInputStream(file), file);
                try {
                    return new x.d(cVar, a10);
                } catch (Throwable th) {
                    if (a10 != null) {
                        a10.close();
                    }
                    throw th;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00e4, code lost:
            throw new java.lang.RuntimeException("illegal line in exopackage metadata: [" + r11 + "]");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        b(com.facebook.soloader.x r19) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 302
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.m.b.<init>(com.facebook.soloader.m, com.facebook.soloader.x):void");
        }

        @Override // com.facebook.soloader.x.f
        protected x.c a() throws IOException {
            return new x.c(this.f13528a);
        }

        @Override // com.facebook.soloader.x.f
        protected x.e b() throws IOException {
            return new a();
        }
    }

    /* compiled from: ExoSoSource.java */
    /* loaded from: classes.dex */
    private static final class c extends x.b {

        /* renamed from: c  reason: collision with root package name */
        final File f13532c;

        c(String str, String str2, File file) {
            super(str, str2);
            this.f13532c = file;
        }
    }

    public m(Context context, String str) {
        super(context, str);
    }

    @Override // com.facebook.soloader.x
    protected x.f r() throws IOException {
        return new b(this);
    }
}
