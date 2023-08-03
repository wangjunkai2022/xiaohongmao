package com.im.freechat.ui.chat.chatdetails.messagelist;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.DiffUtil;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ChatDetailsAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u0014\u0010\u0003\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0014\u0010\u0005\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0002\"\u0014\u0010\u0007\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0002\"\u0014\u0010\t\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0002\"\u0014\u0010\u000b\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0002\"\u0014\u0010\r\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0002\"\u0014\u0010\u000f\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0002\"\u0014\u0010\u0011\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0002\"\u0014\u0010\u0013\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0002\"\u0014\u0010\u0015\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0002\"\u0014\u0010\u0017\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0002\"\u0014\u0010\u0019\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0002\"\u0014\u0010\u001b\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0002\"\u0014\u0010\u001d\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0002\"\u0014\u0010\u001f\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0002\"\u0014\u0010!\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u0002\"\u0014\u0010#\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0002\"\u0014\u0010%\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0002\"\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020'0&8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b\u0001\u0010*¨\u0006,"}, d2 = {"", "a", "I", "TYPE_TEXT_MESSAGE_ME", "b", "TYPE_TEXT_MESSAGE_OTHER", "c", "TYPE_IMAGE_MESSAGE_ME", "d", "TYPE_IMAGE_MESSAGE_OTHER", "e", "TYPE_AUDIO_MESSAGE_ME", "f", "TYPE_AUDIO_MESSAGE_OTHER", "g", "TYPE_LOCATION_MESSAGE_ME", "h", "TYPE_LOCATION_MESSAGE_OTHER", ContextChain.TAG_INFRA, "TYPE_FILE_MESSAGE_ME", "j", "TYPE_FILE_MESSAGE_OTHER", "k", "TYPE_MESSAGE_SERVICE", "l", "TYPE_INSTANT_VIDEO_MESSAGE_ME", "m", "TYPE_INSTANT_VIDEO_MESSAGE_OTHER", "n", "TYPE_GIPHY_STICKER_MESSAGE_ME", "o", "TYPE_GIPHY_STICKER_MESSAGE_OTHER", "p", "TYPE_MEDIA_GROUP_ME", "q", "TYPE_MEDIA_GROUP_OTHER", "r", "TYPE_MESSAGE_CHANNEL", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "s", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "diffCallback", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int f42620a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f42621b = 2;

    /* renamed from: c  reason: collision with root package name */
    public static final int f42622c = 3;

    /* renamed from: d  reason: collision with root package name */
    public static final int f42623d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f42624e = 5;

    /* renamed from: f  reason: collision with root package name */
    public static final int f42625f = 6;

    /* renamed from: g  reason: collision with root package name */
    public static final int f42626g = 9;

    /* renamed from: h  reason: collision with root package name */
    public static final int f42627h = 10;

    /* renamed from: i  reason: collision with root package name */
    public static final int f42628i = 11;

    /* renamed from: j  reason: collision with root package name */
    public static final int f42629j = 12;

    /* renamed from: k  reason: collision with root package name */
    public static final int f42630k = 14;

    /* renamed from: l  reason: collision with root package name */
    public static final int f42631l = 15;

    /* renamed from: m  reason: collision with root package name */
    public static final int f42632m = 16;

    /* renamed from: n  reason: collision with root package name */
    public static final int f42633n = 17;

    /* renamed from: o  reason: collision with root package name */
    public static final int f42634o = 18;

    /* renamed from: p  reason: collision with root package name */
    public static final int f42635p = 19;

    /* renamed from: q  reason: collision with root package name */
    public static final int f42636q = 20;

    /* renamed from: r  reason: collision with root package name */
    public static final int f42637r = 21;
    @g

    /* renamed from: s  reason: collision with root package name */
    private static final DiffUtil.ItemCallback<d> f42638s = new a();

    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0017¨\u0006\b"}, d2 = {"com/im/freechat/ui/chat/chatdetails/messagelist/c$a", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "oldItem", "newItem", "", "b", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends DiffUtil.ItemCallback<d> {
        a() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        @SuppressLint({"DiffUtilEquals"})
        /* renamed from: a */
        public boolean areContentsTheSame(@g d oldItem, @g d newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b */
        public boolean areItemsTheSame(@g d oldItem, @g d newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return oldItem.i().getMessageId() == newItem.i().getMessageId();
        }
    }

    @g
    public static final DiffUtil.ItemCallback<d> a() {
        return f42638s;
    }
}
