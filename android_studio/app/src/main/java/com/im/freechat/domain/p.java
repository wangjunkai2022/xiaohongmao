package com.im.freechat.domain;

import com.im.freechat.shared.entities.PagedList;
import com.im.freechat.shared.entities.banner.Banner;
import com.im.freechat.shared.entities.contact.ContactType;
import com.im.freechat.shared.entities.contact.RelationOperationType;
import com.im.freechat.shared.entities.contact.UserModel;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* compiled from: RemoteRepository.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J1\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J)\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J)\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0017J#\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0017J)\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0017J/\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020!0 2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\"\u0010\u0017J/\u0010$\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015H¦@ø\u0001\u0000¢\u0006\u0004\b$\u0010%\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006&"}, d2 = {"Lcom/im/freechat/domain/p;", "", "", "token", "Lcom/im/freechat/shared/entities/contact/ContactType;", "type", "", com.qennnsad.aknkaksd.data.repository.f.f47744a, "Lcom/im/freechat/shared/entities/PagedList;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "e", "(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/shared/entities/contact/RelationOperationType;", "toUserId", "", "b", "(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/RelationOperationType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "userId", "d", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "phone", "", "f", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "nickname", "searchContactByNickname", "params", "c", "Lcom/im/freechat/shared/entities/banner/Banner;", "getBannerList", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "g", "", "", "a", "userIds", "searchContactByIds", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface p {
    @m8.h
    Object a(@m8.g String str, @m8.g String str2, @m8.g Continuation<? super Map<String, Long>> continuation);

    @m8.h
    Object b(@m8.g String str, @m8.g RelationOperationType relationOperationType, int i4, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object c(@m8.g String str, @m8.g String str2, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object d(int i4, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object e(@m8.g String str, @m8.g ContactType contactType, int i4, @m8.g Continuation<? super PagedList<UserModel>> continuation);

    @m8.h
    Object f(@m8.g String str, @m8.g String str2, @m8.g Continuation<? super List<UserModel>> continuation);

    @m8.h
    Object g(@m8.g String str, @m8.g String str2, @m8.g Continuation<? super List<UserModel>> continuation);

    @m8.h
    Object getBannerList(@m8.g String str, int i4, @m8.g Continuation<? super PagedList<Banner>> continuation);

    @m8.h
    Object searchContactByIds(@m8.g String str, @m8.g List<Integer> list, @m8.g Continuation<? super List<UserModel>> continuation);

    @m8.h
    Object searchContactByNickname(@m8.g String str, @m8.g String str2, @m8.g Continuation<? super List<UserModel>> continuation);
}
