package com.im.freechat.data;

import android.os.SystemClock;
import com.im.freechat.domain.q;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* compiled from: ServerDateRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\u0016\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\nR\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/data/k;", "Lcom/im/freechat/domain/q;", "", "unix", "", "a", "Ljava/util/Date;", "date", "", "b", "J", "serverTime", "serverTimeRecordStamp", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class k implements q {

    /* renamed from: a  reason: collision with root package name */
    private long f40769a;

    /* renamed from: b  reason: collision with root package name */
    private long f40770b;

    @Override // com.im.freechat.domain.q
    public long a(boolean z9) {
        long j4 = this.f40769a;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f40770b;
        if (z9) {
            elapsedRealtime = TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime);
        }
        return j4 + elapsedRealtime;
    }

    @Override // com.im.freechat.domain.q
    public void b(@m8.h Date date) {
        this.f40769a = date != null ? date.getTime() : System.currentTimeMillis();
        this.f40770b = SystemClock.elapsedRealtime();
    }
}
