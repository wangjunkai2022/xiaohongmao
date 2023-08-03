package com.im.freechat.domain;

import com.im.freechat.shared.entities.auth.Country;
import com.im.freechat.shared.entities.auth.PhoneNumber;
import java.util.Map;
import kotlin.Metadata;

/* compiled from: PhoneUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0006\u001a\u00020\u0005H&R \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u00078&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/im/freechat/domain/o;", "", "Lcom/im/freechat/shared/entities/auth/PhoneNumber;", "phoneNumber", "a", "", "b", "", "Lcom/im/freechat/shared/entities/auth/Country;", "c", "()Ljava/util/Map;", "codes", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface o {
    @m8.g
    PhoneNumber a(@m8.g PhoneNumber phoneNumber);

    @m8.g
    String b();

    @m8.g
    Map<String, Country> c();
}
