package master.flame.danmaku.danmaku.model;

import java.util.Collection;
import java.util.Comparator;

/* compiled from: IDanmakus.java */
/* loaded from: classes4.dex */
public interface m {

    /* renamed from: a  reason: collision with root package name */
    public static final int f87318a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f87319b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f87320c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f87321d = 4;

    /* compiled from: IDanmakus.java */
    /* loaded from: classes4.dex */
    public static class a implements Comparator<master.flame.danmaku.danmaku.model.d> {

        /* renamed from: a  reason: collision with root package name */
        protected boolean f87322a;

        public a(boolean z9) {
            b(z9);
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(master.flame.danmaku.danmaku.model.d dVar, master.flame.danmaku.danmaku.model.d dVar2) {
            if (this.f87322a && g8.a.g(dVar, dVar2)) {
                return 0;
            }
            return g8.a.d(dVar, dVar2);
        }

        public void b(boolean z9) {
            this.f87322a = z9;
        }
    }

    /* compiled from: IDanmakus.java */
    /* loaded from: classes4.dex */
    public static abstract class b<Progress, Result> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f87323a = 0;

        /* renamed from: b  reason: collision with root package name */
        public static final int f87324b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static final int f87325c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final int f87326d = 3;

        public abstract int a(Progress progress);

        public void b() {
        }

        public void c() {
        }

        public Result d() {
            return null;
        }
    }

    /* compiled from: IDanmakus.java */
    /* loaded from: classes4.dex */
    public static abstract class c<Progress> extends b<Progress, Void> {
    }

    /* compiled from: IDanmakus.java */
    /* loaded from: classes4.dex */
    public static class d extends a {
        public d(boolean z9) {
            super(z9);
        }

        @Override // master.flame.danmaku.danmaku.model.m.a, java.util.Comparator
        /* renamed from: a */
        public int compare(master.flame.danmaku.danmaku.model.d dVar, master.flame.danmaku.danmaku.model.d dVar2) {
            return super.compare(dVar, dVar2);
        }
    }

    /* compiled from: IDanmakus.java */
    /* loaded from: classes4.dex */
    public static class e extends a {
        public e(boolean z9) {
            super(z9);
        }

        @Override // master.flame.danmaku.danmaku.model.m.a, java.util.Comparator
        /* renamed from: a */
        public int compare(master.flame.danmaku.danmaku.model.d dVar, master.flame.danmaku.danmaku.model.d dVar2) {
            if (this.f87322a && g8.a.g(dVar, dVar2)) {
                return 0;
            }
            return Float.compare(dVar.m(), dVar2.m());
        }
    }

    /* compiled from: IDanmakus.java */
    /* loaded from: classes4.dex */
    public static class f extends a {
        public f(boolean z9) {
            super(z9);
        }

        @Override // master.flame.danmaku.danmaku.model.m.a, java.util.Comparator
        /* renamed from: a */
        public int compare(master.flame.danmaku.danmaku.model.d dVar, master.flame.danmaku.danmaku.model.d dVar2) {
            if (this.f87322a && g8.a.g(dVar, dVar2)) {
                return 0;
            }
            return Float.compare(dVar2.m(), dVar.m());
        }
    }

    void a(b<? super master.flame.danmaku.danmaku.model.d, ?> bVar);

    Collection<master.flame.danmaku.danmaku.model.d> b();

    void c(boolean z9);

    void clear();

    m d(long j4, long j10);

    Object e();

    m f(long j4, long j10);

    master.flame.danmaku.danmaku.model.d first();

    boolean g(master.flame.danmaku.danmaku.model.d dVar);

    void h(b<? super master.flame.danmaku.danmaku.model.d, ?> bVar);

    boolean i(master.flame.danmaku.danmaku.model.d dVar);

    boolean isEmpty();

    boolean j(master.flame.danmaku.danmaku.model.d dVar);

    master.flame.danmaku.danmaku.model.d last();

    int size();
}
