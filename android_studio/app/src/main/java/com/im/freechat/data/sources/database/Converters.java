package com.im.freechat.data.sources.database;

import androidx.room.TypeConverter;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.MessageStyle;
import com.squareup.moshi.a0;
import com.squareup.moshi.u;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KTypeProjection;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;
import org.koin.java.a;

/* compiled from: Converters.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\nH\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0019\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\u000fJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0002\u0010\u0011J\u001a\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00132\b\u0010\u0005\u001a\u0004\u0018\u00010\u0015H\u0007J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0007J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\"\u0010\u0019\u001a\u0004\u0018\u00010\u00152\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u001aH\u0007J\"\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u001a2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0015H\u0007J\u0010\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\u001d"}, d2 = {"Lcom/im/freechat/data/sources/database/Converters;", "", "()V", "fromRole", "", "value", "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "fromStatus", "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "fromType", "Lcom/im/freechat/shared/entities/chat/Chat$Type;", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "mediaTypeFromInt", "messageStatusFromInt", "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "messageStatusToInt", "(Lcom/im/freechat/shared/entities/message/Message$MessageStatus;)Ljava/lang/Integer;", "messageStylesFromString", "", "Lcom/im/freechat/shared/entities/message/MessageStyle;", "", "messageStylesToString", "roleFromInt", "statusFromInt", "stringMapToString", "", "stringToStringMap", "typeFromInt", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public final class Converters {
    @TypeConverter
    public final int fromRole(@g ChatMember.Role value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.getValue();
    }

    @TypeConverter
    public final int fromStatus(@g ChatMember.Status value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.getValue();
    }

    @TypeConverter
    public final int fromType(@g Chat.Type value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.getValue();
    }

    @TypeConverter
    @g
    public final Message.MediaType mediaTypeFromInt(int i4) {
        Message.MediaType typeByValue = Message.MediaType.Companion.typeByValue(Integer.valueOf(i4));
        Intrinsics.checkNotNull(typeByValue);
        return typeByValue;
    }

    @h
    @TypeConverter
    public final Message.MessageStatus messageStatusFromInt(@h Integer num) {
        return Message.MessageStatus.Companion.fromInt(num);
    }

    @h
    @TypeConverter
    public final Integer messageStatusToInt(@h Message.MessageStatus messageStatus) {
        if (messageStatus != null) {
            return Integer.valueOf(messageStatus.getStatus());
        }
        return null;
    }

    @h
    @TypeConverter
    public final List<MessageStyle> messageStylesFromString(@h String str) {
        if (str == null) {
            return null;
        }
        return (List) a0.b((u) a.e().I().h().p(Reflection.getOrCreateKotlinClass(u.class), null, null), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(MessageStyle.class)))).fromJson(str);
    }

    @h
    @TypeConverter
    public final String messageStylesToString(@h List<MessageStyle> list) {
        if (list == null) {
            return null;
        }
        return a0.b((u) a.e().I().h().p(Reflection.getOrCreateKotlinClass(u.class), null, null), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(MessageStyle.class)))).toJson(list);
    }

    @TypeConverter
    @g
    public final ChatMember.Role roleFromInt(int i4) {
        return ChatMember.Role.Companion.fromInt(i4);
    }

    @TypeConverter
    @g
    public final ChatMember.Status statusFromInt(int i4) {
        return ChatMember.Status.Companion.fromInt(i4);
    }

    @h
    @TypeConverter
    public final String stringMapToString(@h Map<Integer, String> map) {
        String obj = map != null ? map.toString() : null;
        if (obj != null) {
            String substring = obj.substring(1, obj.length() - 1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }
        return null;
    }

    @h
    @TypeConverter
    public final Map<Integer, String> stringToStringMap(@h String str) {
        List<String> split$default;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int mapCapacity;
        int coerceAtLeast;
        Object first;
        Object last;
        List split$default2;
        if (str == null || str.length() == 0) {
            return null;
        }
        split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{", "}, false, 0, 6, (Object) null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(split$default, 10);
        ArrayList<List> arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str2 : split$default) {
            split$default2 = StringsKt__StringsKt.split$default((CharSequence) str2, new String[]{"="}, false, 0, 6, (Object) null);
            arrayList.add(split$default2);
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (List list : arrayList) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            Integer valueOf = Integer.valueOf(Integer.parseInt((String) first));
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
            Pair pair = TuplesKt.to(valueOf, last);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    @TypeConverter
    @g
    public final Chat.Type typeFromInt(int i4) {
        return Chat.Type.Companion.fromInt(i4);
    }

    @TypeConverter
    public final int fromType(@g Message.MediaType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.getType();
    }
}
