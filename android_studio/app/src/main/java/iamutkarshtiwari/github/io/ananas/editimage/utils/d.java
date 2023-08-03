package iamutkarshtiwari.github.io.ananas.editimage.utils;

import android.graphics.Rect;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: GestureNavigationBounds.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR!\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Liamutkarshtiwari/github/io/ananas/editimage/utils/d;", "", "Landroid/view/View;", "view", "", "Landroid/graphics/Rect;", "c", "exclusionRect", "e", "a", "Landroid/graphics/Rect;", "b", "Lkotlin/Lazy;", "d", "()Ljava/util/List;", "exclusionRects", "<init>", "(Landroid/view/View;)V", "lib-ananas_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Rect f69696a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f69697b;

    /* compiled from: GestureNavigationBounds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroid/graphics/Rect;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<List<? extends Rect>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final List<? extends Rect> invoke() {
            List<? extends Rect> listOf;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(d.this.f69696a);
            return listOf;
        }
    }

    /* compiled from: View.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001JP\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\u000f¸\u0006\u0010"}, d2 = {"androidx/core/view/ViewKt$doOnNextLayout$1", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/view/View;", "view", "", com.google.android.exoplayer2.text.ttml.d.f25720l0, "top", com.google.android.exoplayer2.text.ttml.d.f25723n0, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "", "onLayoutChange", "core-ktx_release", "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b implements View.OnLayoutChangeListener {
        public b() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(@m8.g View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.removeOnLayoutChangeListener(this);
            ViewCompat.setSystemGestureExclusionRects(view, d.this.c(view));
        }
    }

    public d(@m8.g View view) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(view, "view");
        this.f69696a = new Rect();
        lazy = LazyKt__LazyJVMKt.lazy(new a());
        this.f69697b = lazy;
        if (ViewCompat.isLaidOut(view) && !view.isLayoutRequested()) {
            ViewCompat.setSystemGestureExclusionRects(view, c(view));
        } else {
            view.addOnLayoutChangeListener(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Rect> c(View view) {
        e(this.f69696a, view);
        return d();
    }

    private final List<Rect> d() {
        return (List) this.f69697b.getValue();
    }

    private final Rect e(Rect rect, View view) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        return rect;
    }
}
