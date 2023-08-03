package com.giphy.sdk.analytics.tracking;

import android.content.SharedPreferences;
import g2.b;
import g2.c;
import java.util.Calendar;
import java.util.Date;
import java.util.Objects;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt___StringsKt;
import m8.g;

/* compiled from: GPHSessionID.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\n\b\u0000\u0018\u0000 \f2\u00020\u0001:\u0001\u0004B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\bR\u0011\u0010\u0005\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\r\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/giphy/sdk/analytics/tracking/a;", "", "", "key", "a", "value", "", "d", "Ljava/lang/String;", "cachePrefix", "b", "()Ljava/lang/String;", "c", "verificationID", "<init>", "(Ljava/lang/String;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f16896b = "KEY_SESSION_UUID";
    @g

    /* renamed from: c  reason: collision with root package name */
    public static final C0130a f16897c = new C0130a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f16898a;

    /* compiled from: GPHSessionID.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/giphy/sdk/analytics/tracking/a$a;", "", "", a.f16896b, "Ljava/lang/String;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.analytics.tracking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0130a {
        private C0130a() {
        }

        public /* synthetic */ C0130a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(@g String cachePrefix) {
        Intrinsics.checkNotNullParameter(cachePrefix, "cachePrefix");
        this.f16898a = cachePrefix;
    }

    private final String a(String str) {
        SharedPreferences j4 = e2.a.f62216j.j();
        return j4.getString(this.f16898a + str, null);
    }

    private final void d(String str, String str2) {
        SharedPreferences.Editor edit = e2.a.f62216j.j().edit();
        if (edit != null) {
            SharedPreferences.Editor putString = edit.putString(this.f16898a + str, str2);
            if (putString != null) {
                putString.apply();
            }
        }
    }

    static /* synthetic */ void e(a aVar, String str, String str2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str2 = null;
        }
        aVar.d(str, str2);
    }

    @g
    public final String b() {
        String a10 = a(f16896b);
        if (a10 == null || a10.length() == 0) {
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "UUID.randomUUID().toString()");
            Objects.requireNonNull(uuid, "null cannot be cast to non-null type java.lang.String");
            a10 = uuid.toUpperCase();
            Intrinsics.checkNotNullExpressionValue(a10, "(this as java.lang.String).toUpperCase()");
            d(f16896b, a10);
        }
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "Calendar.getInstance()");
        Date date = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(date, "date");
        String b10 = b.b(date, "dd.MM.yyyy", null, 2, null);
        c cVar = c.f67799a;
        String b11 = cVar.b(b10 + a10);
        Objects.requireNonNull(b11, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = b11.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
        return lowerCase;
    }

    @g
    public final String c() {
        String take;
        take = StringsKt___StringsKt.take(b(), 32);
        return take;
    }
}
