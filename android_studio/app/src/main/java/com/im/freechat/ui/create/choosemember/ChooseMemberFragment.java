package com.im.freechat.ui.create.choosemember;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.contact.ContactType;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.contacts.ContactListFragment;
import com.im.freechat.ui.create.choosemember.ChooseMemberViewModel;
import f4.p;
import io.sentry.protocol.y;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ChooseMemberFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b/\u00100J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\u001a\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u0005H\u0014J\u0018\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016R\u001b\u0010\u001b\u001a\u00020\u00168VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010%\u001a\u0004\u0018\u00010!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0018\u001a\u0004\b#\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0018\u001a\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u00061"}, d2 = {"Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;", "Lf4/p;", "Lcom/im/freechat/ui/contacts/e;", "", "w0", "v0", "A0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "z0", "Z", "direction", "Landroid/os/Bundle;", "extras", "y0", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", y.b.f83919g, "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;", "b", "Lkotlin/Lazy;", "t0", "()Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;", "viewModel", "Lcom/im/freechat/ui/create/choosemember/b;", "c", "p0", "()Lcom/im/freechat/ui/create/choosemember/b;", "adapter", "Ljava/io/Serializable;", "d", "s0", "()Ljava/io/Serializable;", "type", "Lcom/im/freechat/ui/contacts/ContactListFragment;", "e", "q0", "()Lcom/im/freechat/ui/contacts/ContactListFragment;", "contactsFragment", "", "r0", "()I", "count", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChooseMemberFragment extends com.im.freechat.base.f<ChooseMemberViewModel.Directions, p> implements com.im.freechat.ui.contacts.e {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f43493b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f43494c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f43495d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f43496e;

    /* compiled from: ChooseMemberFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ly8/a;", "invoke", "()Ly8/a;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<y8.a> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final y8.a invoke() {
            return y8.b.b(Integer.valueOf(ChooseMemberFragment.this.r0()));
        }
    }

    /* compiled from: ChooseMemberFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/ui/contacts/ContactListFragment;", "a", "()Lcom/im/freechat/ui/contacts/ContactListFragment;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<ContactListFragment> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f43504a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final ContactListFragment invoke() {
            ContactListFragment a10;
            a10 = ContactListFragment.f43349i.a(ContactType.FOLLOW, false, false, (r12 & 8) != 0 ? false : false, (r12 & 16) != 0);
            return a10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChooseMemberFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<List<? extends UserModel>, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g List<UserModel> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FloatingActionButton floatingActionButton = ChooseMemberFragment.m0(ChooseMemberFragment.this).f65680b;
            Intrinsics.checkNotNullExpressionValue(floatingActionButton, "binding.createFab");
            floatingActionButton.setVisibility(it.isEmpty() ^ true ? 0 : 8);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends UserModel> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChooseMemberFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", s2.d.f93273b, "", "typeAhead", "", "a", "(Ljava/lang/String;Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function2<String, Boolean, Unit> {
        d() {
            super(2);
        }

        public final void a(@m8.g String query, boolean z9) {
            Intrinsics.checkNotNullParameter(query, "query");
            ContactListFragment.E0(ChooseMemberFragment.this.q0(), query, null, z9, 2, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, Boolean bool) {
            a(str, bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChooseMemberFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ljava/io/Serializable;", "a", "()Ljava/io/Serializable;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function0<Serializable> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.h
        /* renamed from: a */
        public final Serializable invoke() {
            return ChooseMemberFragment.this.requireArguments().getSerializable(h.f43539c);
        }
    }

    public ChooseMemberFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new ChooseMemberFragment$special$$inlined$inject$default$1(this, null, null));
        this.f43493b = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new ChooseMemberFragment$special$$inlined$inject$default$2(this, null, new a()));
        this.f43494c = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new e());
        this.f43495d = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(b.f43504a);
        this.f43496e = lazy4;
    }

    private final void A0() {
        if (q0().isAdded()) {
            return;
        }
        getChildFragmentManager().beginTransaction().add(b.j.Qc, q0()).commitNow();
    }

    public static final /* synthetic */ p m0(ChooseMemberFragment chooseMemberFragment) {
        return chooseMemberFragment.W();
    }

    private final com.im.freechat.ui.create.choosemember.b p0() {
        return (com.im.freechat.ui.create.choosemember.b) this.f43494c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ContactListFragment q0() {
        return (ContactListFragment) this.f43496e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int r0() {
        Serializable s02 = s0();
        if (s02 == Chat.Type.SINGLE) {
            return 1;
        }
        if (s02 == Chat.Type.GROUP) {
            return h.f43537a;
        }
        throw new IllegalArgumentException();
    }

    private final Serializable s0() {
        return (Serializable) this.f43495d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(ChooseMemberFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p W = this$0.W();
        W.f65680b.setEnabled(!it.booleanValue());
        W.f65682d.setEnabled(!it.booleanValue());
        ProgressBar progress = W.f65683e;
        Intrinsics.checkNotNullExpressionValue(progress, "progress");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        progress.setVisibility(it.booleanValue() ? 0 : 8);
        W.f65682d.setAlpha(it.booleanValue() ? 0.5f : 1.0f);
    }

    private final void v0() {
        FragmentActivity requireActivity = requireActivity();
        AppCompatActivity appCompatActivity = requireActivity instanceof AppCompatActivity ? (AppCompatActivity) requireActivity : null;
        if (appCompatActivity != null) {
            appCompatActivity.setSupportActionBar(W().f65685g);
            return;
        }
        Toolbar toolbar = W().f65685g;
        Intrinsics.checkNotNullExpressionValue(toolbar, "binding.toolbar");
        toolbar.setVisibility(8);
    }

    private final void w0() {
        v0();
        RecyclerView recyclerView = W().f65682d;
        recyclerView.setHasFixedSize(true);
        recyclerView.setAdapter(p0());
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(requireContext());
        flexboxLayoutManager.setFlexDirection(0);
        flexboxLayoutManager.setJustifyContent(0);
        recyclerView.setLayoutManager(flexboxLayoutManager);
        p0().r(new c());
        p0().s(new d());
        FloatingActionButton floatingActionButton = W().f65680b;
        Intrinsics.checkNotNullExpressionValue(floatingActionButton, "");
        floatingActionButton.setVisibility(true ^ p0().l().isEmpty() ? 0 : 8);
        floatingActionButton.setImageResource(s0() == Chat.Type.SINGLE ? b.h.I4 : b.h.f1580l4);
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.create.choosemember.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseMemberFragment.x0(ChooseMemberFragment.this, view);
            }
        });
        A0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(ChooseMemberFragment this$0, View view) {
        Object first;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Serializable s02 = this$0.s0();
        if (s02 == Chat.Type.SINGLE) {
            ChooseMemberViewModel Y = this$0.Y();
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this$0.p0().l());
            Y.j(((UserModel) first).getUserId());
        } else if (s02 == Chat.Type.GROUP) {
            ChooseMemberViewModel.Directions directions = ChooseMemberViewModel.Directions.NAME_GROUP;
            Object[] array = this$0.p0().l().toArray(new UserModel[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            this$0.c0(directions, BundleKt.bundleOf(TuplesKt.to(h.f43540d, array)));
        } else {
            throw new IllegalArgumentException();
        }
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        w0();
        Y().k().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.create.choosemember.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChooseMemberFragment.u0(ChooseMemberFragment.this, (Boolean) obj);
            }
        });
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: t0 */
    public ChooseMemberViewModel Y() {
        return (ChooseMemberViewModel) this.f43493b.getValue();
    }

    @Override // com.im.freechat.ui.contacts.e
    public void x(@m8.g UserModel contact) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        p0().j(contact);
    }

    @Override // com.im.freechat.base.f
    /* renamed from: y0 */
    public void a0(@m8.g ChooseMemberViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: z0 */
    public p g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        p d4 = p.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }
}
