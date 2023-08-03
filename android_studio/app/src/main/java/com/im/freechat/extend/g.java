package com.im.freechat.extend;

import androidx.exifinterface.media.ExifInterface;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.message.Message;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatExtentions.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010!\n\u0002\b\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0000\u001a\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\b*\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\n"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "", "b", "e", "a", "d", "c", "", "", "f", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g {

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            long longValue;
            int compareValues;
            Chat chat = (Chat) t10;
            Long updateSystemTime = chat.getUpdateSystemTime();
            long j4 = 0;
            if (updateSystemTime != null) {
                longValue = updateSystemTime.longValue();
            } else {
                Message lastChatMessage = chat.getLastChatMessage();
                Long valueOf = lastChatMessage != null ? Long.valueOf(lastChatMessage.getSendTime()) : null;
                longValue = valueOf != null ? valueOf.longValue() : 0L;
            }
            Long valueOf2 = Long.valueOf(longValue);
            Chat chat2 = (Chat) t9;
            Long updateSystemTime2 = chat2.getUpdateSystemTime();
            if (updateSystemTime2 != null) {
                j4 = updateSystemTime2.longValue();
            } else {
                Message lastChatMessage2 = chat2.getLastChatMessage();
                Long valueOf3 = lastChatMessage2 != null ? Long.valueOf(lastChatMessage2.getSendTime()) : null;
                if (valueOf3 != null) {
                    j4 = valueOf3.longValue();
                }
            }
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf2, Long.valueOf(j4));
            return compareValues;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            String draftMessage = ((Chat) t10).getDraftMessage();
            if (draftMessage == null) {
                draftMessage = "";
            }
            String draftMessage2 = ((Chat) t9).getDraftMessage();
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(draftMessage, draftMessage2 != null ? draftMessage2 : "");
            return compareValues;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            Long pinnedTime = ((Chat) t10).getPinnedTime();
            Long valueOf = Long.valueOf(pinnedTime != null ? pinnedTime.longValue() : 0L);
            Long pinnedTime2 = ((Chat) t9).getPinnedTime();
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Long.valueOf(pinnedTime2 != null ? pinnedTime2.longValue() : 0L));
            return compareValues;
        }
    }

    public static final boolean a(@m8.g Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "<this>");
        return chat.getType() == Chat.Type.CHANNEL;
    }

    public static final boolean b(@m8.g Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "<this>");
        return chat.getType() == Chat.Type.FAVORITES;
    }

    public static final boolean c(@m8.g Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "<this>");
        return b(chat) || e(chat) || a(chat);
    }

    public static final boolean d(@m8.g Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "<this>");
        return chat.getPinnedTime() != null;
    }

    public static final boolean e(@m8.g Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "<this>");
        return chat.getType() == Chat.Type.SERVICE;
    }

    @m8.g
    public static final List<Chat> f(@m8.g List<Chat> list) {
        List<Chat> mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new a());
        }
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new b());
        }
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new c());
        }
        return mutableList;
    }
}
