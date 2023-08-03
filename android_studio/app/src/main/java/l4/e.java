package l4;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment;
import f4.j;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AttachmentFragment.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J&\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016R$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Ll4/e;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onDestroyView", "Lf4/j;", "nullableBinding", "Lf4/j;", "Y", "()Lf4/j;", "d0", "(Lf4/j;)V", "<init>", "()V", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e extends Fragment {
    @g

    /* renamed from: b  reason: collision with root package name */
    public static final a f86873b = new a(null);
    @h

    /* renamed from: a  reason: collision with root package name */
    private j f86874a;

    /* compiled from: AttachmentFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0006"}, d2 = {"Ll4/e$a;", "", "Ll4/e;", "a", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final e a() {
            return new e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(e this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Fragment parentFragment = this$0.getParentFragment();
        ChatDetailsFragment chatDetailsFragment = parentFragment instanceof ChatDetailsFragment ? (ChatDetailsFragment) parentFragment : null;
        if (chatDetailsFragment != null) {
            chatDetailsFragment.L3(ChatDetailsFragment.a.b.f42332b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(e this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Fragment parentFragment = this$0.getParentFragment();
        ChatDetailsFragment chatDetailsFragment = parentFragment instanceof ChatDetailsFragment ? (ChatDetailsFragment) parentFragment : null;
        if (chatDetailsFragment != null) {
            chatDetailsFragment.L3(ChatDetailsFragment.a.C0346a.f42331b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(e this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Fragment parentFragment = this$0.getParentFragment();
        ChatDetailsFragment chatDetailsFragment = parentFragment instanceof ChatDetailsFragment ? (ChatDetailsFragment) parentFragment : null;
        if (chatDetailsFragment != null) {
            chatDetailsFragment.L3(ChatDetailsFragment.a.d.f42334b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(e this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Fragment parentFragment = this$0.getParentFragment();
        ChatDetailsFragment chatDetailsFragment = parentFragment instanceof ChatDetailsFragment ? (ChatDetailsFragment) parentFragment : null;
        if (chatDetailsFragment != null) {
            chatDetailsFragment.U3(ChatDetailsFragment.BottomVisibilityState.NONE);
        }
    }

    @h
    public final j Y() {
        return this.f86874a;
    }

    public final void d0(@h j jVar) {
        this.f86874a = jVar;
    }

    @Override // androidx.fragment.app.Fragment
    @h
    public View onCreateView(@g LayoutInflater inflater, @h ViewGroup viewGroup, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        j d4 = j.d(inflater, viewGroup, false);
        this.f86874a = d4;
        if (d4 != null) {
            return d4.getRoot();
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f86874a = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@g View view, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        j jVar = this.f86874a;
        if (jVar != null) {
            jVar.f65587e.setOnClickListener(new View.OnClickListener() { // from class: l4.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    e.Z(e.this, view2);
                }
            });
            jVar.f65586d.setOnClickListener(new View.OnClickListener() { // from class: l4.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    e.a0(e.this, view2);
                }
            });
            jVar.f65585c.setOnClickListener(new View.OnClickListener() { // from class: l4.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    e.b0(e.this, view2);
                }
            });
            jVar.f65584b.setOnClickListener(new View.OnClickListener() { // from class: l4.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    e.c0(e.this, view2);
                }
            });
        }
    }
}
