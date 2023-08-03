package com.im.freechat.ui.contacts;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.contact.ContactType;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.contacts.ContactListViewModel;
import io.sentry.protocol.y;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: ContactListFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 A2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001BB\u0007¢\u0006\u0004\b?\u0010@J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0014J\u0017\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J2\u0010!\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u001d2\u0006\u0010\u001c\u001a\u00020\u001b2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u001d2\b\b\u0002\u0010 \u001a\u00020\u001fR\u001b\u0010'\u001a\u00020\"8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010$\u001a\u0004\b*\u0010+R\u0016\u0010/\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010$\u001a\u0004\b2\u00103R\u001b\u00108\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010$\u001a\u0004\b6\u00107R\u001b\u0010;\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010$\u001a\u0004\b:\u00107R\u001b\u0010>\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010$\u001a\u0004\b=\u00107¨\u0006C"}, d2 = {"Lcom/im/freechat/ui/contacts/ContactListFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;", "Lf4/o;", "Lcom/im/freechat/ui/contacts/e;", "", "z0", "A0", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "F0", "H0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "C0", y.b.f83919g, "Z", "", "userId", "q0", "(Ljava/lang/Integer;)V", "direction", "Landroid/os/Bundle;", "extras", "B0", "", "part", "", "extraContacts", "", "typeAhead", "D0", "Lcom/im/freechat/ui/contacts/ContactListViewModel;", "b", "Lkotlin/Lazy;", "w0", "()Lcom/im/freechat/ui/contacts/ContactListViewModel;", "viewModel", "Lcom/im/freechat/ui/contacts/c;", "c", "r0", "()Lcom/im/freechat/ui/contacts/c;", "adapter", "d", "Lcom/im/freechat/ui/contacts/e;", "clickListener", "Lcom/im/freechat/shared/entities/contact/ContactType;", "e", "s0", "()Lcom/im/freechat/shared/entities/contact/ContactType;", k.f43454a, "f", "v0", "()Z", k.f43455b, "g", "u0", k.f43457d, "h", "t0", k.f43458e, "<init>", "()V", ContextChain.TAG_INFRA, "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ContactListFragment extends com.im.freechat.base.f<ContactListViewModel.Directions, f4.o> implements com.im.freechat.ui.contacts.e {
    @m8.g

    /* renamed from: i */
    public static final a f43349i = new a(null);
    @m8.g

    /* renamed from: b */
    private final Lazy f43350b;
    @m8.g

    /* renamed from: c */
    private final Lazy f43351c;
    @m8.g

    /* renamed from: d */
    private com.im.freechat.ui.contacts.e f43352d;
    @m8.g

    /* renamed from: e */
    private final Lazy f43353e;
    @m8.g

    /* renamed from: f */
    private final Lazy f43354f;
    @m8.g

    /* renamed from: g */
    private final Lazy f43355g;
    @m8.g

    /* renamed from: h */
    private final Lazy f43356h;

    /* compiled from: ContactListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ2\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0004¨\u0006\r"}, d2 = {"Lcom/im/freechat/ui/contacts/ContactListFragment$a;", "", "Lcom/im/freechat/shared/entities/contact/ContactType;", "type", "", k.f43455b, "showService", k.f43457d, k.f43458e, "Lcom/im/freechat/ui/contacts/ContactListFragment;", "a", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ContactListFragment b(a aVar, ContactType contactType, boolean z9, boolean z10, boolean z11, boolean z12, int i4, Object obj) {
            return aVar.a(contactType, z9, z10, (i4 & 8) != 0 ? false : z11, (i4 & 16) != 0 ? true : z12);
        }

        @m8.g
        public final ContactListFragment a(@m8.g ContactType type, boolean z9, boolean z10, boolean z11, boolean z12) {
            Intrinsics.checkNotNullParameter(type, "type");
            ContactListFragment contactListFragment = new ContactListFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable(k.f43454a, type);
            bundle.putBoolean(k.f43455b, z9);
            bundle.putBoolean(k.f43456c, z10);
            bundle.putBoolean(k.f43457d, z11);
            bundle.putBoolean(k.f43458e, z12);
            contactListFragment.setArguments(bundle);
            return contactListFragment;
        }
    }

    /* compiled from: ContactListFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ContactType.values().length];
            iArr[ContactType.FOLLOW.ordinal()] = 1;
            iArr[ContactType.NONE.ordinal()] = 2;
            iArr[ContactType.BLOCK.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ContactListViewModel.Directions.values().length];
            iArr2[ContactListViewModel.Directions.CHAT_DETAILS.ordinal()] = 1;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/shared/entities/contact/ContactType;", "a", "()Lcom/im/freechat/shared/entities/contact/ContactType;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<ContactType> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c() {
            super(0);
            ContactListFragment.this = r1;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final ContactType invoke() {
            Serializable serializable = ContactListFragment.this.requireArguments().getSerializable(k.f43454a);
            Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type com.im.freechat.shared.entities.contact.ContactType");
            return (ContactType) serializable;
        }
    }

    /* compiled from: ContactListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "", "a", "(Lcom/im/freechat/shared/entities/contact/UserModel;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<UserModel, Unit> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d() {
            super(1);
            ContactListFragment.this = r1;
        }

        public final void a(@m8.g UserModel contact) {
            Intrinsics.checkNotNullParameter(contact, "contact");
            ContactListFragment.this.f43352d.x(contact);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(UserModel userModel) {
            a(userModel);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ContactListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "", "a", "(Lcom/im/freechat/shared/entities/contact/UserModel;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<UserModel, Unit> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e() {
            super(1);
            ContactListFragment.this = r1;
        }

        public final void a(@m8.g UserModel contact) {
            Intrinsics.checkNotNullParameter(contact, "contact");
            ContactListFragment.this.Y().P(contact);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(UserModel userModel) {
            a(userModel);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ContactListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"com/im/freechat/ui/contacts/ContactListFragment$f", "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;", "", s2.d.f93273b, "", "onQueryTextSubmit", "newText", "onQueryTextChange", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f implements SearchView.OnQueryTextListener {
        f() {
            ContactListFragment.this = r1;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(@m8.g String newText) {
            Intrinsics.checkNotNullParameter(newText, "newText");
            ContactListFragment.this.Y().E(newText, true);
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(@m8.g String query) {
            Intrinsics.checkNotNullParameter(query, "query");
            ContactListViewModel.F(ContactListFragment.this.Y(), query, false, 2, null);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function0<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g() {
            super(0);
            ContactListFragment.this = r1;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(ContactListFragment.this.requireArguments().getBoolean(k.f43458e));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function0<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h() {
            super(0);
            ContactListFragment.this = r1;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(ContactListFragment.this.requireArguments().getBoolean(k.f43457d));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function0<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i() {
            super(0);
            ContactListFragment.this = r1;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(ContactListFragment.this.requireArguments().getBoolean(k.f43455b, true));
        }
    }

    public ContactListFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new ContactListFragment$special$$inlined$inject$default$1(this, null, null));
        this.f43350b = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new ContactListFragment$special$$inlined$inject$default$2(this, null, null));
        this.f43351c = lazy2;
        this.f43352d = this;
        lazy3 = LazyKt__LazyJVMKt.lazy(new c());
        this.f43353e = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new i());
        this.f43354f = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new h());
        this.f43355g = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new g());
        this.f43356h = lazy6;
    }

    private final void A0() {
        RecyclerView recyclerView = W().f65665d;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(r0());
        com.im.freechat.ui.contacts.c r02 = r0();
        if (s0() == ContactType.FOLLOW) {
            r02.m(new d());
        }
        if (v0()) {
            r02.n(new e());
        }
        r02.o(u0());
        W().f65666e.setOnQueryTextListener(new f());
        SearchView searchView = W().f65666e;
        Intrinsics.checkNotNullExpressionValue(searchView, "binding.svContacts");
        searchView.setVisibility(t0() ? 0 : 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List E0(ContactListFragment contactListFragment, String str, List list, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            list = null;
        }
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        return contactListFragment.D0(str, list, z9);
    }

    private final void F0(final UserModel userModel) {
        final ArrayList arrayList = new ArrayList();
        if (!userModel.isService()) {
            arrayList.add(getString(b.s.f2302k2));
        }
        if (s0() == ContactType.FOLLOW) {
            arrayList.add(getString(b.s.f2313l2));
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
        Object[] array = arrayList.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.contacts.g
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                ContactListFragment.G0(arrayList, this, userModel, dialogInterface, i4);
            }
        }).show();
    }

    public static final void G0(ArrayList items, ContactListFragment this$0, UserModel contact, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(items, "$items");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(contact, "$contact");
        String str = (String) items.get(i4);
        if (Intrinsics.areEqual(str, this$0.getString(b.s.f2302k2))) {
            this$0.H0(contact);
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2313l2))) {
            this$0.q0(Integer.valueOf(contact.getUserId()));
        }
    }

    private final void H0(final UserModel userModel) {
        final f4.g d4 = f4.g.d(getLayoutInflater(), null, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, null, false)");
        AlertDialog create = new AlertDialog.Builder(requireContext()).setTitle(b.s.f2302k2).setView(d4.getRoot()).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.contacts.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                ContactListFragment.I0(ContactListFragment.this, userModel, d4, dialogInterface, i4);
            }
        }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(requireContext()…ll)\n            .create()");
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.im.freechat.ui.contacts.h
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                ContactListFragment.J0(f4.g.this, userModel, dialogInterface);
            }
        });
        create.show();
    }

    public static final void I0(ContactListFragment this$0, UserModel contact, f4.g dialogBinding, DialogInterface dialogInterface, int i4) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(contact, "$contact");
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        ContactListViewModel Y = this$0.Y();
        int userId = contact.getUserId();
        trim = StringsKt__StringsKt.trim((CharSequence) dialogBinding.f65509c.getText().toString());
        Y.R(userId, trim.toString());
    }

    public static final void J0(f4.g dialogBinding, UserModel contact, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        Intrinsics.checkNotNullParameter(contact, "$contact");
        dialogBinding.f65509c.setText(contact.getDisplayName());
    }

    private final com.im.freechat.ui.contacts.c r0() {
        return (com.im.freechat.ui.contacts.c) this.f43351c.getValue();
    }

    private final ContactType s0() {
        return (ContactType) this.f43353e.getValue();
    }

    private final boolean t0() {
        return ((Boolean) this.f43356h.getValue()).booleanValue();
    }

    private final boolean u0() {
        return ((Boolean) this.f43355g.getValue()).booleanValue();
    }

    private final boolean v0() {
        return ((Boolean) this.f43354f.getValue()).booleanValue();
    }

    public static final void x0(ContactListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.r0().submitList(list);
        TextView textView = this$0.W().f65663b;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.emptyView");
        textView.setVisibility(list.isEmpty() && this$0.s0() == ContactType.BLOCK ? 0 : 8);
    }

    public static final void y0(ContactListFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FrameLayout frameLayout = this$0.W().f65664c;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.flLoading");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        frameLayout.setVisibility(it.booleanValue() ? 0 : 8);
        this$0.setHasOptionsMenu(!it.booleanValue());
    }

    private final void z0() {
        int i4;
        if (!v0()) {
            Toolbar toolbar = W().f65667f;
            Intrinsics.checkNotNullExpressionValue(toolbar, "binding.toolbar");
            toolbar.setVisibility(8);
            return;
        }
        FragmentActivity requireActivity = requireActivity();
        AppCompatActivity appCompatActivity = requireActivity instanceof AppCompatActivity ? (AppCompatActivity) requireActivity : null;
        if (appCompatActivity != null) {
            appCompatActivity.setSupportActionBar(W().f65667f);
            ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
            if (supportActionBar != null) {
                int i10 = b.$EnumSwitchMapping$0[s0().ordinal()];
                if (i10 == 1 || i10 == 2) {
                    i4 = b.s.f2240e1;
                } else if (i10 != 3) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    i4 = b.s.f2207b0;
                }
                supportActionBar.setTitle(i4);
                return;
            }
            return;
        }
        Toolbar toolbar2 = W().f65667f;
        Intrinsics.checkNotNullExpressionValue(toolbar2, "binding.toolbar");
        toolbar2.setVisibility(8);
    }

    @Override // com.im.freechat.base.f
    /* renamed from: B0 */
    public void a0(@m8.g ContactListViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
        int i4 = b.$EnumSwitchMapping$1[direction.ordinal()];
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: C0 */
    public f4.o g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        f4.o d4 = f4.o.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @m8.h
    public final List<UserModel> D0(@m8.g String part, @m8.h List<UserModel> list, boolean z9) {
        Intrinsics.checkNotNullParameter(part, "part");
        if (list != null) {
            Y().I().setValue(list);
        }
        Y().E(part, z9);
        return Y().G().getValue();
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        if (getParentFragment() instanceof com.im.freechat.ui.contacts.e) {
            Fragment parentFragment = getParentFragment();
            Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.im.freechat.ui.contacts.ContactListClickListener");
            this.f43352d = (com.im.freechat.ui.contacts.e) parentFragment;
        }
        z0();
        A0();
        Y().L(s0(), requireArguments().getBoolean(k.f43456c, false));
        Y().G().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.contacts.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContactListFragment.x0(ContactListFragment.this, (List) obj);
            }
        });
        Y().J().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.contacts.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContactListFragment.y0(ContactListFragment.this, (Boolean) obj);
            }
        });
    }

    public final void q0(@m8.h Integer num) {
        if (num != null) {
            Y().D(num.intValue());
        } else {
            Toast.makeText(requireContext(), b.s.f2308k8, 0).show();
        }
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: w0 */
    public ContactListViewModel Y() {
        return (ContactListViewModel) this.f43350b.getValue();
    }

    @Override // com.im.freechat.ui.contacts.e
    public void x(@m8.g UserModel contact) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        F0(contact);
    }
}
