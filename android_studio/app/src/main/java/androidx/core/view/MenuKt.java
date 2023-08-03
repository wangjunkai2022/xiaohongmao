package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import io.sentry.protocol.y;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* compiled from: Menu.kt */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010)\n\u0002\b\u0002\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0086\u0002\u001a3\u0010\r\u001a\u00020\u000e*\u00020\u00032!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u000e0\u0010H\u0086\bø\u0001\u0000\u001aH\u0010\u0013\u001a\u00020\u000e*\u00020\u000326\u0010\u000f\u001a2\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u000e0\u0014H\u0086\bø\u0001\u0000\u001a\u0015\u0010\u0016\u001a\u00020\u0002*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0007H\u0086\n\u001a\r\u0010\u0017\u001a\u00020\u000b*\u00020\u0003H\u0086\b\u001a\r\u0010\u0018\u001a\u00020\u000b*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u001a*\u00020\u0003H\u0086\u0002\u001a\u0015\u0010\u001b\u001a\u00020\u000e*\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0086\n\"\u001b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u0007*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001c"}, d2 = {y.b.f83923k, "Lkotlin/sequences/Sequence;", "Landroid/view/MenuItem;", "Landroid/view/Menu;", "getChildren", "(Landroid/view/Menu;)Lkotlin/sequences/Sequence;", com.qennnsad.aknkaksd.data.repository.f.f47745b, "", "getSize", "(Landroid/view/Menu;)I", "contains", "", "item", "forEach", "", com.alipay.sdk.packet.d.f6907q, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "forEachIndexed", "Lkotlin/Function2;", "index", "get", "isEmpty", "isNotEmpty", "iterator", "", "minusAssign", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MenuKt {
    public static final boolean contains(@m8.g Menu menu, @m8.g MenuItem item) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        int size = menu.size();
        if (size > 0) {
            int i4 = 0;
            while (true) {
                int i10 = i4 + 1;
                if (Intrinsics.areEqual(menu.getItem(i4), item)) {
                    return true;
                }
                if (i10 >= size) {
                    break;
                }
                i4 = i10;
            }
        }
        return false;
    }

    public static final void forEach(@m8.g Menu menu, @m8.g Function1<? super MenuItem, Unit> action) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = menu.size();
        if (size <= 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            MenuItem item = menu.getItem(i4);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(index)");
            action.invoke(item);
            if (i10 >= size) {
                return;
            }
            i4 = i10;
        }
    }

    public static final void forEachIndexed(@m8.g Menu menu, @m8.g Function2<? super Integer, ? super MenuItem, Unit> action) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = menu.size();
        if (size <= 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            Integer valueOf = Integer.valueOf(i4);
            MenuItem item = menu.getItem(i4);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(index)");
            action.invoke(valueOf, item);
            if (i10 >= size) {
                return;
            }
            i4 = i10;
        }
    }

    @m8.g
    public static final MenuItem get(@m8.g Menu menu, int i4) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        MenuItem item = menu.getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(index)");
        return item;
    }

    @m8.g
    public static final Sequence<MenuItem> getChildren(@m8.g final Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        return new Sequence<MenuItem>() { // from class: androidx.core.view.MenuKt$children$1
            @Override // kotlin.sequences.Sequence
            @m8.g
            public Iterator<MenuItem> iterator() {
                return MenuKt.iterator(menu);
            }
        };
    }

    public static final int getSize(@m8.g Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        return menu.size();
    }

    public static final boolean isEmpty(@m8.g Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        return menu.size() == 0;
    }

    public static final boolean isNotEmpty(@m8.g Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        return menu.size() != 0;
    }

    @m8.g
    public static final Iterator<MenuItem> iterator(@m8.g Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        return new MenuKt$iterator$1(menu);
    }

    public static final void minusAssign(@m8.g Menu menu, @m8.g MenuItem item) {
        Intrinsics.checkNotNullParameter(menu, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        menu.removeItem(item.getItemId());
    }
}
