package com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.PeeragePriceBean;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.c;
import f5.e;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;

/* compiled from: NoblesAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0007\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B!\u0012\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\n0\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\f\u001a\u00020\u0005H\u0016J\u0006\u0010\r\u001a\u00020\nR)\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\n0\u000e8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "f", "holder", "position", "", "e", "getItemCount", "g", "Lkotlin/Function2;", "", "", "a", "Lkotlin/jvm/functions/Function2;", "d", "()Lkotlin/jvm/functions/Function2;", "onItemClick", "<init>", "(Lkotlin/jvm/functions/Function2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends RecyclerView.Adapter<a> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Function2<String, Float, Unit> f53817a;

    /* compiled from: NoblesAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000  2\u00020\u0001:\u0001)B)\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00040\f¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR)\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00040\f8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R!\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0017\u0010\u001e\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010#\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "position", "", "e", "Landroid/view/View;", "a", "Landroid/view/View;", "h", "()Landroid/view/View;", "item", "Lkotlin/Function2;", "", "", "b", "Lkotlin/jvm/functions/Function2;", "j", "()Lkotlin/jvm/functions/Function2;", "onItemClick", "", "Lkotlin/Lazy;", "k", "()Ljava/util/List;", "prices", "Landroid/widget/ImageView;", "f", "Landroid/widget/ImageView;", "checkmark", "Lf5/e;", "diHelper", "Lf5/e;", "g", "()Lf5/e;", "Lg5/a;", "localDataManager", "Lg5/a;", ContextChain.TAG_INFRA, "()Lg5/a;", "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V", "c", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @g

        /* renamed from: g  reason: collision with root package name */
        public static final C0447c f53818g = new C0447c(null);
        @g

        /* renamed from: h  reason: collision with root package name */
        private static final Lazy<Integer[]> f53819h;
        @g

        /* renamed from: i  reason: collision with root package name */
        private static final Lazy<Integer[]> f53820i;

        /* renamed from: j  reason: collision with root package name */
        public static Boolean[] f53821j;
        @g

        /* renamed from: a  reason: collision with root package name */
        private final View f53822a;
        @g

        /* renamed from: b  reason: collision with root package name */
        private final Function2<String, Float, Unit> f53823b;
        @g

        /* renamed from: c  reason: collision with root package name */
        private final e f53824c;
        @g

        /* renamed from: d  reason: collision with root package name */
        private final g5.a f53825d;
        @g

        /* renamed from: e  reason: collision with root package name */
        private final Lazy f53826e;
        @h

        /* renamed from: f  reason: collision with root package name */
        private ImageView f53827f;

        /* compiled from: NoblesAdapter.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "", "a", "()[Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0446a extends Lambda implements Function0<Integer[]> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0446a f53828a = new C0446a();

            C0446a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @g
            /* renamed from: a */
            public final Integer[] invoke() {
                Object[] reversedArray;
                reversedArray = ArraysKt___ArraysKt.reversedArray(new Integer[]{Integer.valueOf((int) R.drawable.peerage1), Integer.valueOf((int) R.drawable.peerage2), Integer.valueOf((int) R.drawable.peerage3), Integer.valueOf((int) R.drawable.peerage4), Integer.valueOf((int) R.drawable.peerage5), Integer.valueOf((int) R.drawable.peerage6)});
                return (Integer[]) reversedArray;
            }
        }

        /* compiled from: NoblesAdapter.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "", "a", "()[Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        static final class b extends Lambda implements Function0<Integer[]> {

            /* renamed from: a  reason: collision with root package name */
            public static final b f53829a = new b();

            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @g
            /* renamed from: a */
            public final Integer[] invoke() {
                Object[] reversedArray;
                reversedArray = ArraysKt___ArraysKt.reversedArray(new Integer[]{Integer.valueOf((int) R.string.peerage1), Integer.valueOf((int) R.string.peerage2), Integer.valueOf((int) R.string.peerage3), Integer.valueOf((int) R.string.peerage4), Integer.valueOf((int) R.string.peerage5), Integer.valueOf((int) R.string.peerage6)});
                return (Integer[]) reversedArray;
            }
        }

        /* compiled from: NoblesAdapter.kt */
        @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002R!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR!\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\u0007\u001a\u0004\b\f\u0010\tR(\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a$c;", "", "", "d", "", "", "pics$delegate", "Lkotlin/Lazy;", "b", "()[Ljava/lang/Integer;", "pics", "titles$delegate", "c", "titles", "", "checks", "[Ljava/lang/Boolean;", "a", "()[Ljava/lang/Boolean;", "e", "([Ljava/lang/Boolean;)V", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.c$a$c  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0447c {
            private C0447c() {
            }

            public /* synthetic */ C0447c(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @g
            public final Boolean[] a() {
                Boolean[] boolArr = a.f53821j;
                if (boolArr != null) {
                    return boolArr;
                }
                Intrinsics.throwUninitializedPropertyAccessException("checks");
                return null;
            }

            @g
            public final Integer[] b() {
                return (Integer[]) a.f53819h.getValue();
            }

            @g
            public final Integer[] c() {
                return (Integer[]) a.f53820i.getValue();
            }

            public final void d() {
                Boolean bool = Boolean.FALSE;
                e(new Boolean[]{bool, bool, bool, bool, bool, bool});
            }

            public final void e(@g Boolean[] boolArr) {
                Intrinsics.checkNotNullParameter(boolArr, "<set-?>");
                a.f53821j = boolArr;
            }
        }

        /* compiled from: NoblesAdapter.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        static final class d extends Lambda implements Function0<List<? extends Float>> {

            /* compiled from: Comparisons.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
            /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.c$a$d$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0448a<T> implements Comparator {
                @Override // java.util.Comparator
                public final int compare(T t9, T t10) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((PeeragePriceBean) t9).getPeerageId()), Integer.valueOf(((PeeragePriceBean) t10).getPeerageId()));
                    return compareValues;
                }
            }

            d() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @g
            public final List<? extends Float> invoke() {
                List<? extends Float> emptyList;
                int collectionSizeOrDefault;
                List<PeeragePriceBean> r9 = a.this.i().r();
                if (r9 == null) {
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    return emptyList;
                }
                CollectionsKt___CollectionsKt.sortedWith(r9, new C0448a());
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(r9, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (PeeragePriceBean peeragePriceBean : r9) {
                    arrayList.add(Float.valueOf(peeragePriceBean.getPrice()));
                }
                return arrayList;
            }
        }

        static {
            Lazy<Integer[]> lazy;
            Lazy<Integer[]> lazy2;
            lazy = LazyKt__LazyJVMKt.lazy(C0446a.f53828a);
            f53819h = lazy;
            lazy2 = LazyKt__LazyJVMKt.lazy(b.f53829a);
            f53820i = lazy2;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(@g View item, @g Function2<? super String, ? super Float, Unit> onItemClick) {
            super(item);
            Lazy lazy;
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
            this.f53822a = item;
            this.f53823b = onItemClick;
            e c10 = ((f5.d) dagger.hilt.c.a(item.getContext().getApplicationContext(), f5.d.class)).c();
            this.f53824c = c10;
            this.f53825d = c10.c();
            lazy = LazyKt__LazyJVMKt.lazy(new d());
            this.f53826e = lazy;
            this.f53827f = (ImageView) item.findViewById(R.id.iv_noble_check);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(int i4, a this$0, String title, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(title, "$title");
            C0447c c0447c = f53818g;
            boolean booleanValue = c0447c.a()[i4].booleanValue();
            if (!booleanValue) {
                c0447c.d();
            }
            c0447c.a()[i4] = Boolean.valueOf(!c0447c.a()[i4].booleanValue());
            this$0.f53823b.invoke(title, Float.valueOf(booleanValue ? -1.0f : this$0.k().get(i4).floatValue()));
            RecyclerView.Adapter<? extends RecyclerView.ViewHolder> bindingAdapter = this$0.getBindingAdapter();
            if (bindingAdapter != null) {
                bindingAdapter.notifyDataSetChanged();
            }
        }

        public final void e(final int i4) {
            C0447c c0447c = f53818g;
            ((ImageView) this.f53822a.findViewById(R.id.iv_noble_pic)).setImageResource(c0447c.b()[i4].intValue());
            final String string = this.f53822a.getContext().getString(c0447c.c()[i4].intValue());
            Intrinsics.checkNotNullExpressionValue(string, "item.context.getString(titles[position])");
            ((TextView) this.f53822a.findViewById(R.id.tv_noble_title)).setText(string);
            this.f53822a.setActivated(c0447c.a()[i4].booleanValue());
            ImageView imageView = this.f53827f;
            if (imageView != null) {
                imageView.setVisibility(c0447c.a()[i4].booleanValue() ? 0 : 8);
            }
            this.f53822a.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.a.f(i4, this, string, view);
                }
            });
        }

        @g
        public final e g() {
            return this.f53824c;
        }

        @g
        public final View h() {
            return this.f53822a;
        }

        @g
        public final g5.a i() {
            return this.f53825d;
        }

        @g
        public final Function2<String, Float, Unit> j() {
            return this.f53823b;
        }

        @g
        public final List<Float> k() {
            return (List) this.f53826e.getValue();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@g Function2<? super String, ? super Float, Unit> onItemClick) {
        Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
        this.f53817a = onItemClick;
    }

    @g
    public final Function2<String, Float, Unit> d() {
        return this.f53817a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(@g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.e(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @g
    /* renamed from: f */
    public a onCreateViewHolder(@g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_view_noble, parent, false);
        Intrinsics.checkNotNullExpressionValue(view, "view");
        return new a(view, this.f53817a);
    }

    public final void g() {
        a.f53818g.d();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return a.f53818g.b().length;
    }
}
