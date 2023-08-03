package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.room.RoomAdminInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: AdminListActivity.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R0\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R0\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0010\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "g", "holder", "position", "", "f", "Lkotlin/Function1;", "", "a", "Lkotlin/jvm/functions/Function1;", "d", "()Lkotlin/jvm/functions/Function1;", "h", "(Lkotlin/jvm/functions/Function1;)V", "itemClickListener", "b", "e", ContextChain.TAG_INFRA, "itemLongClickListener", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f extends ListAdapter<RoomAdminInfo, i> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super String, Unit> f53543a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super RoomAdminInfo, Unit> f53544b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdminListActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<String, Unit> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<String, Unit> d4 = f.this.d();
            if (d4 != null) {
                d4.invoke(it);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdminListActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<RoomAdminInfo, Unit> {
        b() {
            super(1);
        }

        public final void a(@m8.g RoomAdminInfo it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<RoomAdminInfo, Unit> e4 = f.this.e();
            if (e4 != null) {
                e4.invoke(it);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RoomAdminInfo roomAdminInfo) {
            a(roomAdminInfo);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public f() {
        /*
            r1 = this;
            com.qennnsad.aknkaksd.presentation.ui.room.manage.c$a r0 = com.qennnsad.aknkaksd.presentation.ui.room.manage.c.a()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.manage.f.<init>():void");
    }

    @m8.h
    public final Function1<String, Unit> d() {
        return this.f53543a;
    }

    @m8.h
    public final Function1<RoomAdminInfo, Unit> e() {
        return this.f53544b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(@m8.g i holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.i(new a());
        holder.j(new b());
        RoomAdminInfo item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.d(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: g */
    public i onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_search_result, parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context).inf…ch_result, parent, false)");
        return new i(inflate);
    }

    public final void h(@m8.h Function1<? super String, Unit> function1) {
        this.f53543a = function1;
    }

    public final void i(@m8.h Function1<? super RoomAdminInfo, Unit> function1) {
        this.f53544b = function1;
    }
}
