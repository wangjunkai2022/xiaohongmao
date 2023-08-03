package com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SearchView;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.didi.live.spring.R;
import com.im.freechat.shared.entities.contact.UserModel;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity;
import e5.c1;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: ContactListFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\tH\u0002J\u001a\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0003H\u0014R\u001b\u0010\u001d\u001a\u00020\u00188VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/c1;", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/e;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "", "K0", "F0", "", "list", "C0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "J0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "G0", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;", "k", "Lkotlin/Lazy;", "E0", "()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;", "l", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;", "adapter", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class ContactListFragment extends n<c1, e> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52647k;

    /* renamed from: l  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.c f52648l;

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(((UserModel) t9).getDisplayName(), ((UserModel) t10).getDisplayName());
            return compareValues;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "a", "(Lcom/im/freechat/shared/entities/contact/UserModel;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<UserModel, Unit> {
        b() {
            super(1);
        }

        public final void a(@m8.g UserModel it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FragmentActivity requireActivity = ContactListFragment.this.requireActivity();
            Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity<*>");
            com.qennnsad.aknkaksd.util.l.c0((BaseMvvmActivity) requireActivity, it.getUserId());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(UserModel userModel) {
            a(userModel);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function1<UserModel, Unit> {
        c(Object obj) {
            super(1, obj, ContactListFragment.class, "showContactOperationsDialog", "showContactOperationsDialog(Lcom/im/freechat/shared/entities/contact/UserModel;)V", 0);
        }

        public final void a(@m8.g UserModel p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((ContactListFragment) this.receiver).K0(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(UserModel userModel) {
            a(userModel);
            return Unit.INSTANCE;
        }
    }

    public ContactListFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new ContactListFragment$special$$inlined$viewModels$default$2(new ContactListFragment$special$$inlined$viewModels$default$1(this)));
        this.f52647k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(ContactListViewModel.class), new ContactListFragment$special$$inlined$viewModels$default$3(lazy), new ContactListFragment$special$$inlined$viewModels$default$4(null, lazy), new ContactListFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    private final void C0(List<UserModel> list) {
        List sortedWith;
        final c1 c1Var = (c1) m0();
        final boolean canScrollVertically = c1Var.f62287c.canScrollVertically(-1);
        com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.c cVar = this.f52648l;
        if (cVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            cVar = null;
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new a());
        cVar.submitList(sortedWith, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.i
            @Override // java.lang.Runnable
            public final void run() {
                ContactListFragment.D0(canScrollVertically, c1Var);
            }
        });
        SearchView search = c1Var.f62290f;
        Intrinsics.checkNotNullExpressionValue(search, "search");
        search.setVisibility(8);
        ImageView ivEmpty = c1Var.f62288d;
        Intrinsics.checkNotNullExpressionValue(ivEmpty, "ivEmpty");
        ivEmpty.setVisibility(list.isEmpty() ? 0 : 8);
        TextView tvEmpty = c1Var.f62291g;
        Intrinsics.checkNotNullExpressionValue(tvEmpty, "tvEmpty");
        tvEmpty.setVisibility(list.isEmpty() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(boolean z9, c1 this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        if (z9) {
            return;
        }
        this_with.f62287c.scrollToPosition(0);
    }

    private final void F0() {
        c1 c1Var = (c1) m0();
        c1Var.f62291g.setText("还没有联系方式，找个朋友聊天吧！");
        com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.c cVar = new com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.c();
        cVar.l(new b());
        cVar.m(new c(this));
        this.f52648l = cVar;
        RecyclerView recyclerView = c1Var.f62287c;
        recyclerView.setAdapter(cVar);
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        SearchView search = c1Var.f62290f;
        Intrinsics.checkNotNullExpressionValue(search, "search");
        search.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(ContactListFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ContentLoadingProgressBar contentLoadingProgressBar = ((c1) this$0.m0()).f62289e;
        Intrinsics.checkNotNullExpressionValue(contentLoadingProgressBar, "requireBinding().progress");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        contentLoadingProgressBar.setVisibility(it.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(ContactListFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        List<UserModel> arrayList = new ArrayList<>();
        for (Object obj : it) {
            if (!((UserModel) obj).isCurrentUser()) {
                arrayList.add(obj);
            }
        }
        this$0.C0(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0(final UserModel userModel) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(getString(R.string.activity_chat_details_delete));
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
        Object[] array = arrayList.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                ContactListFragment.L0(arrayList, this, userModel, dialogInterface, i4);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(ArrayList items, ContactListFragment this$0, UserModel contact, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(items, "$items");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(contact, "$contact");
        String str = (String) items.get(i4);
        if (Intrinsics.areEqual(str, this$0.getString(R.string.activity_chat_details_delete))) {
            this$0.e0().t(contact.getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(R.string.activity_start_chat))) {
            com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.c cVar = this$0.f52648l;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                cVar = null;
            }
            Function1<UserModel, Unit> f10 = cVar.f();
            if (f10 != null) {
                f10.invoke(contact);
            }
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: E0 */
    public ContactListViewModel e0() {
        return (ContactListViewModel) this.f52647k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: G0 */
    public void onEvent(@m8.g e e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: J0 */
    public c1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        c1 d4 = c1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        F0();
        e0().d().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContactListFragment.H0(ContactListFragment.this, (Boolean) obj);
            }
        });
        e0().u().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContactListFragment.I0(ContactListFragment.this, (List) obj);
            }
        });
    }
}
