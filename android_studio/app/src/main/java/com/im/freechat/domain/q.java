package com.im.freechat.domain;

import java.util.Date;
import kotlin.Metadata;

/* compiled from: ServerDateRepository.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002H&J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H&¨\u0006\n"}, d2 = {"Lcom/im/freechat/domain/q;", "", "", "unix", "", "a", "Ljava/util/Date;", "date", "", "b", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface q {

    /* compiled from: ServerDateRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a {
        public static /* synthetic */ long a(q qVar, boolean z9, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    z9 = false;
                }
                return qVar.a(z9);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: calculateServerTimeWithLocalDelay");
        }
    }

    long a(boolean z9);

    void b(@m8.h Date date);
}
