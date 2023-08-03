package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.target.o;
import com.bumptech.glide.request.target.p;
import java.util.List;
import java.util.Queue;

/* compiled from: ListPreloader.java */
/* loaded from: classes.dex */
public class g<T> implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private final int f7234a;

    /* renamed from: b  reason: collision with root package name */
    private final d f7235b;

    /* renamed from: c  reason: collision with root package name */
    private final k f7236c;

    /* renamed from: d  reason: collision with root package name */
    private final a<T> f7237d;

    /* renamed from: e  reason: collision with root package name */
    private final b<T> f7238e;

    /* renamed from: f  reason: collision with root package name */
    private int f7239f;

    /* renamed from: g  reason: collision with root package name */
    private int f7240g;

    /* renamed from: i  reason: collision with root package name */
    private int f7242i;

    /* renamed from: h  reason: collision with root package name */
    private int f7241h = -1;

    /* renamed from: j  reason: collision with root package name */
    private boolean f7243j = true;

    /* compiled from: ListPreloader.java */
    /* loaded from: classes.dex */
    public interface a<U> {
        @NonNull
        List<U> a(int i4);

        @Nullable
        j<?> b(@NonNull U u9);
    }

    /* compiled from: ListPreloader.java */
    /* loaded from: classes.dex */
    public interface b<T> {
        @Nullable
        int[] a(@NonNull T t9, int i4, int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListPreloader.java */
    /* loaded from: classes.dex */
    public static final class c implements p<Object> {

        /* renamed from: a  reason: collision with root package name */
        int f7244a;

        /* renamed from: b  reason: collision with root package name */
        int f7245b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private com.bumptech.glide.request.e f7246c;

        c() {
        }

        @Override // com.bumptech.glide.manager.m
        public void a() {
        }

        @Override // com.bumptech.glide.request.target.p
        @Nullable
        public com.bumptech.glide.request.e e() {
            return this.f7246c;
        }

        @Override // com.bumptech.glide.request.target.p
        public void f(@NonNull o oVar) {
        }

        @Override // com.bumptech.glide.request.target.p
        public void j(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.p
        public void k(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.manager.m
        public void onStart() {
        }

        @Override // com.bumptech.glide.manager.m
        public void onStop() {
        }

        @Override // com.bumptech.glide.request.target.p
        public void q(@NonNull Object obj, @Nullable com.bumptech.glide.request.transition.f<? super Object> fVar) {
        }

        @Override // com.bumptech.glide.request.target.p
        public void r(@Nullable com.bumptech.glide.request.e eVar) {
            this.f7246c = eVar;
        }

        @Override // com.bumptech.glide.request.target.p
        public void s(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.p
        public void u(@NonNull o oVar) {
            oVar.d(this.f7245b, this.f7244a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListPreloader.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final Queue<c> f7247a;

        d(int i4) {
            this.f7247a = com.bumptech.glide.util.o.f(i4);
            for (int i10 = 0; i10 < i4; i10++) {
                this.f7247a.offer(new c());
            }
        }

        public c a(int i4, int i10) {
            c poll = this.f7247a.poll();
            this.f7247a.offer(poll);
            poll.f7245b = i4;
            poll.f7244a = i10;
            return poll;
        }
    }

    public g(@NonNull k kVar, @NonNull a<T> aVar, @NonNull b<T> bVar, int i4) {
        this.f7236c = kVar;
        this.f7237d = aVar;
        this.f7238e = bVar;
        this.f7234a = i4;
        this.f7235b = new d(i4 + 1);
    }

    private void a() {
        for (int i4 = 0; i4 < this.f7235b.f7247a.size(); i4++) {
            this.f7236c.A(this.f7235b.a(0, 0));
        }
    }

    private void b(int i4, int i10) {
        int min;
        int i11;
        if (i4 < i10) {
            i11 = Math.max(this.f7239f, i4);
            min = i10;
        } else {
            min = Math.min(this.f7240g, i4);
            i11 = i10;
        }
        int min2 = Math.min(this.f7242i, min);
        int min3 = Math.min(this.f7242i, Math.max(0, i11));
        if (i4 < i10) {
            for (int i12 = min3; i12 < min2; i12++) {
                d(this.f7237d.a(i12), i12, true);
            }
        } else {
            for (int i13 = min2 - 1; i13 >= min3; i13--) {
                d(this.f7237d.a(i13), i13, false);
            }
        }
        this.f7240g = min3;
        this.f7239f = min2;
    }

    private void c(int i4, boolean z9) {
        if (this.f7243j != z9) {
            this.f7243j = z9;
            a();
        }
        b(i4, (z9 ? this.f7234a : -this.f7234a) + i4);
    }

    private void d(List<T> list, int i4, boolean z9) {
        int size = list.size();
        if (z9) {
            for (int i10 = 0; i10 < size; i10++) {
                e(list.get(i10), i4, i10);
            }
            return;
        }
        for (int i11 = size - 1; i11 >= 0; i11--) {
            e(list.get(i11), i4, i11);
        }
    }

    private void e(@Nullable T t9, int i4, int i10) {
        int[] a10;
        j<?> b10;
        if (t9 == null || (a10 = this.f7238e.a(t9, i4, i10)) == null || (b10 = this.f7237d.b(t9)) == null) {
            return;
        }
        b10.h1(this.f7235b.a(a10[0], a10[1]));
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i4, int i10, int i11) {
        this.f7242i = i11;
        int i12 = this.f7241h;
        if (i4 > i12) {
            c(i10 + i4, true);
        } else if (i4 < i12) {
            c(i4, false);
        }
        this.f7241h = i4;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i4) {
    }
}
