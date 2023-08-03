package com.shizhefei.view.indicator;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.shizhefei.view.indicator.slidebar.ScrollBar;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Indicator.java */
/* loaded from: classes3.dex */
public interface c {

    /* compiled from: Indicator.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    /* compiled from: Indicator.java */
    /* loaded from: classes3.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f55453a;

        /* renamed from: b  reason: collision with root package name */
        private Set<a> f55454b = new LinkedHashSet(2);

        public abstract int a();

        public abstract View b(int i4, View view, ViewGroup viewGroup);

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean c() {
            return this.f55453a;
        }

        public void d() {
            for (a aVar : this.f55454b) {
                aVar.a();
            }
        }

        public void e(a aVar) {
            this.f55454b.add(aVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void f(boolean z9) {
            this.f55453a = z9;
        }

        public void g(a aVar) {
            this.f55454b.remove(aVar);
        }
    }

    /* compiled from: Indicator.java */
    /* renamed from: com.shizhefei.view.indicator.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0469c {
        boolean a(View view, int i4);
    }

    /* compiled from: Indicator.java */
    /* loaded from: classes3.dex */
    public interface d {
        void a(View view, int i4, int i10);
    }

    /* compiled from: Indicator.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(View view, int i4, float f10);
    }

    @Nullable
    View a(int i4);

    void b(int i4, boolean z9);

    boolean c();

    int getCurrentItem();

    b getIndicatorAdapter();

    InterfaceC0469c getOnIndicatorItemClickListener();

    d getOnItemSelectListener();

    e getOnTransitionListener();

    int getPreSelectItem();

    void onPageScrollStateChanged(int i4);

    void onPageScrolled(int i4, float f10, int i10);

    void setAdapter(b bVar);

    void setCurrentItem(int i4);

    void setItemClickable(boolean z9);

    void setOnIndicatorItemClickListener(InterfaceC0469c interfaceC0469c);

    void setOnItemSelectListener(d dVar);

    void setOnTransitionListener(e eVar);

    void setScrollBar(ScrollBar scrollBar);
}
