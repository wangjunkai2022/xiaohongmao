package com.im.freechat.ui.chat.history;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.content.FileProvider;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.ImageAttachment;
import com.im.freechat.shared.entities.message.VideoAttachment;
import com.im.freechat.ui.chat.group_manager.GroupManagerFragment;
import com.im.freechat.ui.chat.history.HistoryTabViewModel;
import com.im.freechat.ui.chat.message_gallery.a;
import com.im.freechat.ui.chat.userprofile.UserProfileFragment;
import f4.t;
import java.io.File;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: HistoryTabFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 82\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00019B\u0007¢\u0006\u0004\b6\u00107J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0014J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0014\u0010\u0013\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\u0014\u0010\u0016\u001a\u00020\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0010J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u0017R\u001b\u0010 \u001a\u00020\u001b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u001d\u001a\u0004\b(\u0010)R\u001b\u0010/\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u001d\u001a\u0004\b-\u0010.R\"\u00105\u001a\u0010\u0012\f\u0012\n 2*\u0004\u0018\u00010101008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104¨\u0006:"}, d2 = {"Lcom/im/freechat/ui/chat/history/HistoryTabFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;", "Lf4/t;", "", "s0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "x0", "Z", "direction", "Landroid/os/Bundle;", "extras", "t0", "", "Lcom/im/freechat/ui/chat/history/a;", "attachments", "y0", "Lcom/im/freechat/shared/entities/chat/Chat;", "groups", "m0", "", "localPath", "mimeType", "v0", "Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;", "b", "Lkotlin/Lazy;", "q0", "()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;", "viewModel", "Lcom/im/freechat/ui/chat/history/HistoryTab;", "c", "p0", "()Lcom/im/freechat/ui/chat/history/HistoryTab;", "pageType", "Lcom/im/freechat/ui/chatlist/d;", "d", "n0", "()Lcom/im/freechat/ui/chatlist/d;", "groupsAdapter", "Lcom/im/freechat/ui/chat/history/k;", "e", "o0", "()Lcom/im/freechat/ui/chat/history/k;", "historyMediaAdapter", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "f", "Landroidx/activity/result/ActivityResultLauncher;", "openGallery", "<init>", "()V", "g", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class HistoryTabFragment extends com.im.freechat.base.f<HistoryTabViewModel.Directions, t> {
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public static final a f42850g = new a(null);
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f42851b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f42852c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f42853d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f42854e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f42855f;

    /* compiled from: HistoryTabFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;", "", "Lcom/im/freechat/ui/chat/history/HistoryTab;", "tab", "Lcom/im/freechat/ui/chat/history/HistoryTabFragment;", "a", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        public final HistoryTabFragment a(@m8.g HistoryTab tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
            HistoryTabFragment historyTabFragment = new HistoryTabFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("page_type", tab);
            historyTabFragment.setArguments(bundle);
            return historyTabFragment;
        }
    }

    /* compiled from: HistoryTabFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HistoryTabViewModel.Directions.values().length];
            iArr[HistoryTabViewModel.Directions.CHAT_DETAILS.ordinal()] = 1;
            iArr[HistoryTabViewModel.Directions.GALLERY.ordinal()] = 2;
            iArr[HistoryTabViewModel.Directions.OPEN_FILE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HistoryTabFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<Chat, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g Chat chat) {
            Intrinsics.checkNotNullParameter(chat, "chat");
            HistoryTabFragment.this.c0(HistoryTabViewModel.Directions.CHAT_DETAILS, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Integer.valueOf(chat.getChatId()))));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
            a(chat);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HistoryTabFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/history/a;", "wrapper", "", "a", "(Lcom/im/freechat/ui/chat/history/a;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<com.im.freechat.ui.chat.history.a, Unit> {
        d() {
            super(1);
        }

        public final void a(@m8.g com.im.freechat.ui.chat.history.a wrapper) {
            Intrinsics.checkNotNullParameter(wrapper, "wrapper");
            Attachment h4 = wrapper.h();
            if (h4 instanceof ImageAttachment ? true : h4 instanceof VideoAttachment) {
                HistoryTabFragment.this.c0(HistoryTabViewModel.Directions.GALLERY, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Integer.valueOf(wrapper.i())), TuplesKt.to(com.im.freechat.ui.chat.message_gallery.a.f43138b, Long.valueOf(wrapper.h().getMediaId()))));
            } else if (h4 instanceof AudioAttachment) {
                HistoryTabViewModel.n(HistoryTabFragment.this.Y(), wrapper.h().getMessageId(), 0L, false, 6, null);
            } else if (h4 instanceof FileAttachment) {
                HistoryTabFragment.this.Y().q(wrapper);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.im.freechat.ui.chat.history.a aVar) {
            a(aVar);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: HistoryTabFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/ui/chat/history/HistoryTab;", "a", "()Lcom/im/freechat/ui/chat/history/HistoryTab;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function0<HistoryTab> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final HistoryTab invoke() {
            Serializable serializable = HistoryTabFragment.this.requireArguments().getSerializable("page_type");
            Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type com.im.freechat.ui.chat.history.HistoryTab");
            return (HistoryTab) serializable;
        }
    }

    public HistoryTabFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new HistoryTabFragment$special$$inlined$inject$default$1(this, null, null));
        this.f42851b = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new e());
        this.f42852c = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new HistoryTabFragment$special$$inlined$inject$default$2(this, null, null));
        this.f42853d = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new HistoryTabFragment$special$$inlined$inject$default$3(this, null, null));
        this.f42854e = lazy4;
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new com.im.freechat.ui.chat.message_gallery.a(), new ActivityResultCallback() { // from class: com.im.freechat.ui.chat.history.m
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                HistoryTabFragment.w0(HistoryTabFragment.this, (Bundle) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…        }\n        }\n    }");
        this.f42855f = registerForActivityResult;
    }

    private final com.im.freechat.ui.chatlist.d n0() {
        return (com.im.freechat.ui.chatlist.d) this.f42853d.getValue();
    }

    private final k o0() {
        return (k) this.f42854e.getValue();
    }

    private final HistoryTab p0() {
        return (HistoryTab) this.f42852c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(HistoryTabFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.o0().submitList(list);
    }

    private final void s0() {
        LinearLayoutManager linearLayoutManager;
        RecyclerView.Adapter adapter;
        RecyclerView recyclerView = W().f65754b;
        if (p0() == HistoryTab.Media) {
            linearLayoutManager = new GridLayoutManager(recyclerView.getContext(), 3);
        } else {
            recyclerView.addItemDecoration(new DividerItemDecoration(recyclerView.getContext(), 1));
            linearLayoutManager = new LinearLayoutManager(recyclerView.getContext(), 1, true);
            linearLayoutManager.setStackFromEnd(true);
        }
        recyclerView.setLayoutManager(linearLayoutManager);
        if (p0() == HistoryTab.Groups) {
            com.im.freechat.ui.chatlist.d n02 = n0();
            n02.j(true);
            n02.i(new c());
            adapter = n02;
        } else {
            k o02 = o0();
            o02.h(new d());
            adapter = o02;
        }
        recyclerView.setAdapter(adapter);
    }

    @JvmStatic
    @m8.g
    public static final HistoryTabFragment u0(@m8.g HistoryTab historyTab) {
        return f42850g.a(historyTab);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(HistoryTabFragment this$0, Bundle bundle) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (bundle == null) {
            return;
        }
        if (bundle.getString(k4.b.f84736c) != null) {
            this$0.c0(HistoryTabViewModel.Directions.CHAT_DETAILS, bundle);
        } else if (bundle.getStringArray(k4.b.f84737d) != null) {
            Fragment parentFragment = this$0.getParentFragment();
            if (parentFragment instanceof UserProfileFragment) {
                Fragment parentFragment2 = this$0.getParentFragment();
                Intrinsics.checkNotNull(parentFragment2, "null cannot be cast to non-null type com.im.freechat.ui.chat.userprofile.UserProfileFragment");
                ((UserProfileFragment) parentFragment2).u0(bundle);
            } else if (parentFragment instanceof GroupManagerFragment) {
                Fragment parentFragment3 = this$0.getParentFragment();
                Intrinsics.checkNotNull(parentFragment3, "null cannot be cast to non-null type com.im.freechat.ui.chat.group_manager.GroupManagerFragment");
                ((GroupManagerFragment) parentFragment3).F0(bundle);
            }
        }
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        s0();
        Y().l();
        Y().k().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.history.n
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                HistoryTabFragment.r0(HistoryTabFragment.this, (List) obj);
            }
        });
    }

    public final void m0(@m8.g List<Chat> groups) {
        Intrinsics.checkNotNullParameter(groups, "groups");
        n0().submitList(groups);
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: q0 */
    public HistoryTabViewModel Y() {
        return (HistoryTabViewModel) this.f42851b.getValue();
    }

    @Override // com.im.freechat.base.f
    /* renamed from: t0 */
    public void a0(@m8.g HistoryTabViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
        int i4 = b.$EnumSwitchMapping$0[direction.ordinal()];
        if (i4 == 1) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment instanceof GroupManagerFragment) {
                ((GroupManagerFragment) parentFragment).a1(extras);
            } else if (parentFragment instanceof UserProfileFragment) {
                ((UserProfileFragment) parentFragment).G0(extras);
            }
        } else if (i4 != 2) {
            if (i4 != 3) {
                return;
            }
            String string = extras.getString(o.f42920c, "");
            Intrinsics.checkNotNullExpressionValue(string, "extras.getString(KEY_FILE_PATH, \"\")");
            v0(string, extras.getString(o.f42921d, ""));
        } else {
            ActivityResultLauncher<Intent> activityResultLauncher = this.f42855f;
            a.C0354a c0354a = com.im.freechat.ui.chat.message_gallery.a.f43137a;
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            activityResultLauncher.launch(c0354a.a(requireContext, extras.getInt(k4.b.f84734a, 0), extras.getLong(com.im.freechat.ui.chat.message_gallery.a.f43138b, 0L)));
        }
    }

    public final void v0(@m8.g String localPath, @m8.h String str) {
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        FragmentActivity requireActivity = requireActivity();
        Uri uriForFile = FileProvider.getUriForFile(requireActivity, requireActivity().getPackageName() + ".provider", new File(localPath));
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uriForFile, str);
        intent.addFlags(1);
        intent.addFlags(2);
        if (intent.resolveActivity(requireActivity.getPackageManager()) != null) {
            requireActivity.startActivity(intent);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(requireActivity, "");
        com.im.freechat.extend.f.z(requireActivity, b.s.f2287i8);
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: x0 */
    public t g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        t d4 = t.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void y0(@m8.g List<com.im.freechat.ui.chat.history.a> attachments) {
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        Y().k().setValue(attachments);
    }
}
