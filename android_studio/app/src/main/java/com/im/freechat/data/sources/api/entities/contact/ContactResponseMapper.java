package com.im.freechat.data.sources.api.entities.contact;

import com.im.freechat.data.sources.api.entities.PagedListResponse;
import com.im.freechat.shared.entities.PageInfo;
import com.im.freechat.shared.entities.PagedList;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.chat.ChatMemberKt;
import com.im.freechat.shared.entities.contact.ContactType;
import com.im.freechat.shared.entities.contact.UserModel;
import io.sentry.protocol.j;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ContactResponseMapper.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f2\u0006\u0010\u0006\u001a\u00020\bJ\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0010¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;", "", "()V", "map", "Lcom/im/freechat/shared/entities/PagedList;", "Lcom/im/freechat/shared/entities/contact/UserModel;", j.f83728f, "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;", "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;", "contactType", "Lcom/im/freechat/shared/entities/contact/ContactType;", "mapPinnedChats", "", "", "", "mapSearch", "", "contacts", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ContactResponseMapper {
    @g
    public final PagedList<UserModel> map(@g PagedListResponse<ContactResponse> response, @g ContactType contactType) {
        int collectionSizeOrDefault;
        Long lastOnline;
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(contactType, "contactType");
        PageInfo pageInfo = new PageInfo(response.getPageInfoResponse().getPage(), response.getPageInfoResponse().getPageNum(), response.getPageInfoResponse().getSize(), response.getPageInfoResponse().getTotalPage(), response.getPageInfoResponse().getTotalCount());
        List<ContactResponse> list = response.getList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ContactResponse contactResponse : list) {
            String nickname = contactResponse.getNickname();
            String avatar = contactResponse.getAvatar();
            int userId = contactResponse.getUserId();
            ChatMember.ManagementRole createManagementRole = ChatMemberKt.createManagementRole(contactResponse.getManagementRole());
            OnlineInfo onlineInfo = contactResponse.getOnlineInfo();
            long longValue = ((onlineInfo == null || (lastOnline = onlineInfo.getLastOnline()) == null) ? 0L : lastOnline.longValue()) * 1000;
            Map<String, String> expansion = contactResponse.getExpansion();
            arrayList.add(new UserModel(nickname, avatar, userId, createManagementRole, null, false, false, false, longValue, expansion != null ? expansion.get(ContactResponseMapperKt.BIO) : null, 128, null));
        }
        return new PagedList<>(pageInfo, arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ab, code lost:
        r1 = kotlin.text.StringsKt__StringNumberConversionsKt.toLongOrNull(r1);
     */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.Map<java.lang.String, java.lang.Long> mapPinnedChats(@m8.g com.im.freechat.data.sources.api.entities.contact.ContactResponse r8) {
        /*
            r7 = this;
            java.lang.String r0 = "response"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.util.Map r8 = r8.getExpansion()
            if (r8 != 0) goto L10
            java.util.Map r8 = kotlin.collections.MapsKt.emptyMap()
            return r8
        L10:
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
        L1d:
            boolean r1 = r8.hasNext()
            r2 = 2
            java.lang.String r3 = "pinned_chat_time"
            r4 = 0
            if (r1 == 0) goto L48
            java.lang.Object r1 = r8.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r5 = r1.getKey()
            java.lang.String r5 = (java.lang.String) r5
            r6 = 0
            if (r5 == 0) goto L3a
            boolean r6 = kotlin.text.StringsKt.contains$default(r5, r3, r6, r2, r4)
        L3a:
            if (r6 == 0) goto L1d
            java.lang.Object r2 = r1.getKey()
            java.lang.Object r1 = r1.getValue()
            r0.put(r2, r1)
            goto L1d
        L48:
            java.util.LinkedHashMap r8 = new java.util.LinkedHashMap
            int r1 = r0.size()
            int r1 = kotlin.collections.MapsKt.mapCapacity(r1)
            r8.<init>(r1)
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L5d:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L7e
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r5 = r1.getKey()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            java.lang.String r5 = (java.lang.String) r5
            java.lang.String r5 = kotlin.text.StringsKt.substringAfter$default(r5, r3, r4, r2, r4)
            java.lang.Object r1 = r1.getValue()
            r8.put(r5, r1)
            goto L5d
        L7e:
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            int r1 = r8.size()
            int r1 = kotlin.collections.MapsKt.mapCapacity(r1)
            r0.<init>(r1)
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
        L93:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto Lc0
            java.lang.Object r1 = r8.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            if (r1 == 0) goto Lb6
            java.lang.Long r1 = kotlin.text.StringsKt.toLongOrNull(r1)
            if (r1 == 0) goto Lb6
            long r3 = r1.longValue()
            goto Lb8
        Lb6:
            r3 = 0
        Lb8:
            java.lang.Long r1 = java.lang.Long.valueOf(r3)
            r0.put(r2, r1)
            goto L93
        Lc0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.api.entities.contact.ContactResponseMapper.mapPinnedChats(com.im.freechat.data.sources.api.entities.contact.ContactResponse):java.util.Map");
    }

    @g
    public final List<UserModel> mapSearch(@g List<ContactResponse> contacts) {
        int collectionSizeOrDefault;
        Long lastOnline;
        Intrinsics.checkNotNullParameter(contacts, "contacts");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(contacts, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ContactResponse contactResponse : contacts) {
            String nickname = contactResponse.getNickname();
            String avatar = contactResponse.getAvatar();
            int userId = contactResponse.getUserId();
            ChatMember.ManagementRole createManagementRole = ChatMemberKt.createManagementRole(contactResponse.getManagementRole());
            OnlineInfo onlineInfo = contactResponse.getOnlineInfo();
            long longValue = ((onlineInfo == null || (lastOnline = onlineInfo.getLastOnline()) == null) ? 0L : lastOnline.longValue()) * 1000;
            Map<String, String> expansion = contactResponse.getExpansion();
            arrayList.add(new UserModel(nickname, avatar, userId, createManagementRole, null, false, false, true, longValue, expansion != null ? expansion.get(ContactResponseMapperKt.BIO) : null));
        }
        return arrayList;
    }
}
