package com.ksyun.media.streamer.util.gles;

import android.opengl.GLES20;
import android.util.Log;
import io.sentry.Session;
import io.sentry.protocol.y;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class FboManager {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46790a = "FboManager";

    /* renamed from: b  reason: collision with root package name */
    private static boolean f46791b = true;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f46792c = false;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, List<Integer>> f46793d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private HashMap<Integer, a> f46794e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private int f46795f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f46796a;

        /* renamed from: b  reason: collision with root package name */
        public final int f46797b;

        /* renamed from: c  reason: collision with root package name */
        public final int f46798c;

        /* renamed from: d  reason: collision with root package name */
        public final int f46799d;

        /* renamed from: f  reason: collision with root package name */
        private int f46801f = 0;

        public a(int i4, int i10, int i11, int i12) {
            this.f46796a = i4;
            this.f46797b = i10;
            this.f46798c = i11;
            this.f46799d = i12;
        }

        public synchronized boolean a() {
            return this.f46801f != 0;
        }

        public synchronized void b() {
            this.f46801f++;
        }

        public synchronized boolean c() {
            int i4 = this.f46801f;
            if (i4 == 0) {
                return false;
            }
            this.f46801f = i4 - 1;
            if (FboManager.f46792c && this.f46801f == 0) {
                Log.d(FboManager.f46790a, "fbo " + this.f46799d + " released");
            }
            return true;
        }

        public synchronized void a(int i4) {
            this.f46801f += i4;
        }
    }

    private a b(int i4, int i10) {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glGenTextures(1, iArr2, 0);
        GLES20.glBindTexture(3553, iArr2[0]);
        GLES20.glTexImage2D(3553, 0, 6408, i4, i10, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, iArr2[0], 0);
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindFramebuffer(36160, 0);
        return new a(i4, i10, iArr[0], iArr2[0]);
    }

    public synchronized int getFramebuffer(int i4) {
        a aVar = this.f46794e.get(Integer.valueOf(i4));
        if (aVar != null) {
            return aVar.f46798c;
        }
        return -1;
    }

    public synchronized int getTextureAndLock(int i4, int i10) {
        String a10 = a(i4, i10);
        List<Integer> list = this.f46793d.get(a10);
        if (list == null) {
            list = new LinkedList<>();
            this.f46793d.put(a10, list);
        }
        for (Integer num : list) {
            int intValue = num.intValue();
            a aVar = this.f46794e.get(Integer.valueOf(intValue));
            if (!aVar.a()) {
                aVar.b();
                if (f46792c) {
                    Log.d(f46790a, "reuse and lock " + intValue);
                }
                return intValue;
            }
        }
        a b10 = b(i4, i10);
        this.f46795f++;
        if (f46791b) {
            Log.d(f46790a, "Create and lock a new fbo: " + b10.f46799d + " " + i4 + y.b.f83919g + i10 + " total:" + this.f46795f);
        }
        b10.b();
        this.f46794e.put(Integer.valueOf(b10.f46799d), b10);
        list.add(Integer.valueOf(b10.f46799d));
        return b10.f46799d;
    }

    public synchronized int getTextureCount() {
        return this.f46795f;
    }

    public synchronized void init() {
        if (f46791b) {
            Log.d(f46790a, Session.b.f81842c);
        }
        this.f46794e.clear();
        this.f46793d.clear();
        this.f46795f = 0;
    }

    public synchronized boolean lock(int i4) {
        return lock(i4, 1);
    }

    public synchronized void remove(int i4) {
        a aVar = this.f46794e.get(Integer.valueOf(i4));
        if (aVar == null) {
            return;
        }
        this.f46795f--;
        this.f46794e.remove(Integer.valueOf(i4));
        this.f46793d.get(a(aVar.f46796a, aVar.f46797b)).remove(i4);
        a(aVar);
    }

    public synchronized boolean unlock(int i4) {
        boolean z9;
        a aVar = this.f46794e.get(Integer.valueOf(i4));
        if (f46792c && aVar != null) {
            Log.d(f46790a, "unlock: " + i4);
        }
        if (aVar != null) {
            z9 = aVar.c();
        }
        return z9;
    }

    private String a(int i4, int i10) {
        return Integer.toString(i4) + y.b.f83919g + Integer.toString(i10);
    }

    public synchronized boolean lock(int i4, int i10) {
        a aVar = this.f46794e.get(Integer.valueOf(i4));
        if (f46792c && aVar != null) {
            Log.d(f46790a, "lock: " + i4 + " " + i10 + " times");
        }
        if (aVar == null) {
            return false;
        }
        aVar.a(i10);
        return true;
    }

    private void a(a aVar) {
        int[] iArr = {aVar.f46799d};
        int[] iArr2 = {aVar.f46798c};
        GLES20.glDeleteTextures(1, iArr, 0);
        GLES20.glDeleteFramebuffers(1, iArr2, 0);
    }

    public synchronized void remove() {
        if (f46791b) {
            Log.d(f46790a, "remove all");
        }
        this.f46794e.clear();
        this.f46793d.clear();
        this.f46795f = 0;
        int size = this.f46794e.size();
        int[] iArr = new int[size];
        int size2 = this.f46794e.size();
        int[] iArr2 = new int[size2];
        for (a aVar : this.f46794e.values()) {
            iArr[0] = aVar.f46799d;
            iArr2[0] = aVar.f46798c;
        }
        GLES20.glDeleteTextures(size, iArr, 0);
        GLES20.glDeleteFramebuffers(size2, iArr2, 0);
    }
}
