package com.im.freechat.ui.create.choosemember;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.create.choosemember.b;
import f4.e1;
import f4.f1;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChooseMemberAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001fB\u000f\u0012\u0006\u0010\u001b\u001a\u00020\r¢\u0006\u0004\b:\u0010;J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0006\u0010\f\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\rH\u0016J\b\u0010\u0014\u001a\u00020\rH\u0016J\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u000e\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\nR\u0014\u0010\u001b\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\n0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R6\u0010,\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u0007\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R6\u00105\u001a\u0016\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u0006<"}, d2 = {"Lcom/im/freechat/ui/create/choosemember/b;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "k", "Landroid/widget/EditText;", "addMemberField", "", "p", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "l", "q", "", "position", "getItemViewType", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "getItemCount", "holder", "onBindViewHolder", "contact", "j", "a", "I", "maxCount", "b", "TAG_TXT_WATCHER", "", "c", "Ljava/util/List;", "list", "d", "Landroid/widget/EditText;", "currentlyEdited", "Lkotlin/Function1;", "e", "Lkotlin/jvm/functions/Function1;", "m", "()Lkotlin/jvm/functions/Function1;", "r", "(Lkotlin/jvm/functions/Function1;)V", "listUpdateListener", "Lkotlin/Function2;", "", "f", "Lkotlin/jvm/functions/Function2;", "n", "()Lkotlin/jvm/functions/Function2;", "s", "(Lkotlin/jvm/functions/Function2;)V", "onTypingListener", "Landroid/widget/TextView$OnEditorActionListener;", "g", "Landroid/widget/TextView$OnEditorActionListener;", "onConfirmListener", "<init>", "(I)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private final int f43515a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43516b = b.j.f1950v5;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final List<UserModel> f43517c = new ArrayList();
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private EditText f43518d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Function1<? super List<UserModel>, Unit> f43519e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Function2<? super String, ? super Boolean, Unit> f43520f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final TextView.OnEditorActionListener f43521g;

    /* compiled from: ChooseMemberAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/im/freechat/ui/create/choosemember/b$a", "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;", "", "onChanged", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.AdapterDataObserver {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            Function1<List<UserModel>, Unit> m9 = b.this.m();
            if (m9 != null) {
                m9.invoke(b.this.f43517c);
            }
        }
    }

    /* compiled from: ChooseMemberAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\b"}, d2 = {"Lcom/im/freechat/ui/create/choosemember/b$b;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "c", "Lf4/e1;", "binding", "<init>", "(Lcom/im/freechat/ui/create/choosemember/b;Lf4/e1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.ui.create.choosemember.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public final class C0369b extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final e1 f43523a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f43524b;

        /* compiled from: TextView.kt */
        @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J*\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J*\u0010\u000e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "", "afterTextChanged", "", "text", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.im.freechat.ui.create.choosemember.b$b$a */
        /* loaded from: classes3.dex */
        public static final class a implements TextWatcher {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b f43525a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ EditText f43526b;

            public a(b bVar, EditText editText) {
                this.f43525a = bVar;
                this.f43526b = editText;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@m8.h Editable editable) {
                this.f43525a.f43518d = this.f43526b;
                Function2<String, Boolean, Unit> n9 = this.f43525a.n();
                if (n9 != null) {
                    n9.invoke(String.valueOf(editable), Boolean.TRUE);
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0369b(@m8.g b bVar, e1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f43524b = bVar;
            this.f43523a = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean d(EditText this_with, b this$0, View view, int i4, KeyEvent keyEvent) {
            Intrinsics.checkNotNullParameter(this_with, "$this_with");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (i4 == 67 && keyEvent.getAction() == 0) {
                Editable text = this_with.getText();
                Intrinsics.checkNotNullExpressionValue(text, "this.text");
                if (text.length() == 0) {
                    Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.EditText");
                    this$0.p((EditText) view);
                    return true;
                }
            }
            return false;
        }

        public final void c() {
            final EditText editText = this.f43523a.f65488b;
            final b bVar = this.f43524b;
            editText.setOnEditorActionListener(bVar.f43521g);
            if (editText.getTag(bVar.f43516b) == null) {
                Intrinsics.checkNotNullExpressionValue(editText, "");
                editText.addTextChangedListener(new a(bVar, editText));
                editText.setTag(bVar.f43516b, Boolean.TRUE);
            }
            editText.setOnKeyListener(new View.OnKeyListener() { // from class: com.im.freechat.ui.create.choosemember.c
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
                    boolean d4;
                    d4 = b.C0369b.d(editText, bVar, view, i4, keyEvent);
                    return d4;
                }
            });
            editText.requestFocus();
        }
    }

    /* compiled from: ChooseMemberAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\f"}, d2 = {"Lcom/im/freechat/ui/create/choosemember/b$c;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "item", "", "position", "", "c", "Lf4/f1;", "binding", "<init>", "(Lcom/im/freechat/ui/create/choosemember/b;Lf4/f1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class c extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final f1 f43527a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f43528b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@m8.g b bVar, f1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f43528b = bVar;
            this.f43527a = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(b this$0, int i4, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.f43517c.remove(i4);
            this$0.notifyDataSetChanged();
        }

        public final void c(@m8.g String item, final int i4) {
            Intrinsics.checkNotNullParameter(item, "item");
            f1 f1Var = this.f43527a;
            final b bVar = this.f43528b;
            f1Var.f65505c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.create.choosemember.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b.c.d(b.this, i4, view);
                }
            });
            f1Var.f65506d.setText(item);
        }
    }

    public b(int i4) {
        this.f43515a = i4;
        registerAdapterDataObserver(new a());
        this.f43521g = new TextView.OnEditorActionListener() { // from class: com.im.freechat.ui.create.choosemember.a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean o9;
                o9 = b.o(b.this, textView, i10, keyEvent);
                return o9;
            }
        };
    }

    private final boolean k() {
        return this.f43517c.size() < this.f43515a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o(b this$0, TextView textView, int i4, KeyEvent keyEvent) {
        Function2<? super String, ? super Boolean, Unit> function2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i4 == 0 || i4 == 3) {
            String obj = textView.getText().toString();
            if ((obj.length() > 0) && (function2 = this$0.f43520f) != null) {
                function2.invoke(obj, Boolean.FALSE);
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(EditText editText) {
        Object last;
        if (this.f43517c.size() != 0) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.f43517c);
            UserModel userModel = (UserModel) last;
            List<UserModel> list = this.f43517c;
            list.remove(list.size() - 1);
            notifyDataSetChanged();
            editText.setText(userModel.getNickname());
            editText.setSelection(userModel.getNickname().length());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return k() ? this.f43517c.size() + 1 : this.f43517c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return i4 == this.f43517c.size() ? 2 : 1;
    }

    public final void j(@m8.g UserModel contact) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        if (!k() || this.f43517c.contains(contact)) {
            return;
        }
        EditText editText = this.f43518d;
        if (editText != null) {
            editText.setText("");
        }
        this.f43517c.add(contact);
        notifyDataSetChanged();
    }

    @m8.g
    public final List<UserModel> l() {
        return this.f43517c;
    }

    @m8.h
    public final Function1<List<UserModel>, Unit> m() {
        return this.f43519e;
    }

    @m8.h
    public final Function2<String, Boolean, Unit> n() {
        return this.f43520f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@m8.g RecyclerView.ViewHolder holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof c) {
            ((c) holder).c(this.f43517c.get(i4).getNickname(), i4);
        } else if (!(holder instanceof C0369b)) {
            throw new IllegalArgumentException("Wrong viewholder type ");
        } else {
            ((C0369b) holder).c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    public RecyclerView.ViewHolder onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater from = LayoutInflater.from(parent.getContext());
        Intrinsics.checkNotNull(from);
        if (i4 == 1) {
            f1 d4 = f1.d(from, parent, false);
            Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, parent, false)");
            return new c(this, d4);
        } else if (i4 == 2) {
            e1 d10 = e1.d(from, parent, false);
            Intrinsics.checkNotNullExpressionValue(d10, "inflate(inflater, parent, false)");
            return new C0369b(this, d10);
        } else {
            throw new IllegalArgumentException("viewType should be 1 or 2");
        }
    }

    public final void q() {
        this.f43517c.clear();
        notifyDataSetChanged();
    }

    public final void r(@m8.h Function1<? super List<UserModel>, Unit> function1) {
        this.f43519e = function1;
    }

    public final void s(@m8.h Function2<? super String, ? super Boolean, Unit> function2) {
        this.f43520f = function2;
    }
}
